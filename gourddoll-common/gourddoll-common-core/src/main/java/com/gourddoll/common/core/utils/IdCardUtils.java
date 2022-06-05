package com.gourddoll.common.core.utils;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

public class IdCardUtils {
    // 加权因子
    final static int[] Weight = { 7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2, 1 };
    // 校验码
    final static String[] Verifycode = { "1", "0", "X", "9", "8", "7", "6", "5", "4","3", "2" };

    /**
     * 判断身份证号码有效性
     *
     * @param idCard
     *            身份证号码
     * @return 校验结果 0表示无效,1表示有效
     */
    public Boolean checkIdCard(String idCard) {
        Boolean bl = true;
        String newIdCard = idCard;
        if (idCard.length() != 15 && idCard.length() != 18) {
            bl = false;
        } else {
            // 如果是15位,转换为18位
            if (idCard.length() == 15) {
                Long m = Long.parseLong(idCard.substring(8, 10));
                Long d = Long.parseLong(idCard.substring(10, 12));
                if (m > 12 || d > 31) {
                    bl = false;
                } else {
                    newIdCard = proIdCard15to18(idCard);
                    // 位数不对,返回0
                    if (newIdCard.length() != 18) {
                        bl = false;
                    } else {
                        String verify = newIdCard.substring(17, 18);
                        // 检查有效性,并返回检查结果
                        if (verify.equals(getVerify(newIdCard))) {
                            bl = true;
                        } else {
                            bl = false;
                        }
                    }
                }
            } else if (idCard.length() == 18) {
                String verify = newIdCard.substring(17, 18);
                // 检查有效性,并返回检查结果
                if (verify.equals(getVerify(newIdCard))) {
                    bl = true;
                } else {
                    bl = false;
                }
            }
        }
        return bl;
    }

    /**
     * 获取正确的身份证
     *
     * @param idCard
     * @return
     */
    public String getAae135(String idCard) {
        String newIdCard = null;
        if (idCard.length() == 15) {
            newIdCard = proIdCard15to18(idCard);
        }
        if (idCard.length() == 18) {
            newIdCard = idCard;
        }
        return newIdCard;
    }

    /**
     * 从身份证号码中获取性别
     *
     * @param idCard
     *            身份证号码
     * @return 性别,'F'为女性,'M'为男性
     */
    public static String getSexFromIdCard(String idCard) {
        // 如果是15位,转换为18位
        if (idCard.length() == 15) {
            idCard = proIdCard15to18(idCard);
        }
        // 取倒数第2位
        int a = Integer.parseInt(idCard.substring(16, 17));
        // 偶数为女性,基数为男性
        if (a % 2 == 0) {
            return "0";
        } else {
            return "1";
        }
    }

    /**
     * 从身份证号码中获取出生日期
     *
     * @param idCard
     *            身份证号码
     * @return 出生日期
     */
    public static String getBirthdayFromIdCard(String idCard) {
        try {
            // 如果是15位,转换为18位
            if (idCard.length() == 15) {
                idCard = proIdCard15to18(idCard);
            }
            // 获取表示出生日期的第7-14位
            String birthday = idCard.substring(6, 14);
            return birthday.substring(0, 4) + "年" + birthday.substring(4, 6) + "月"
                    + birthday.substring(6, 8) + "日";
        } catch (Exception e) {
            return "";
        }
    }

    /**
     * 15位身份证号码转换为18位
     *
     * @param idCard
     *            15位身份证号码
     * @return newidCard 扩充后的18位身份证号码
     */
    public static String proIdCard15to18(String idCard) {
        int i, j, s = 0;
        String newidCard;
        newidCard = idCard;
        newidCard = newidCard.substring(0, 6) + "19"
                + newidCard.substring(6, idCard.length());
        for (i = 0; i < newidCard.length(); i++) {
            j = Integer.parseInt(newidCard.substring(i, i + 1)) * Weight[i];
            s = s + j;
        }
        s = s % 11;
        newidCard = newidCard + Verifycode[s];
        return newidCard;
    }

    /**
     * 获取身份证校验码
     *
     * @param idCard
     *            身份证号码
     * @return 身份证号码的校验码
     */
    private String getVerify(String idCard) {
        int[] ai = new int[18];
        int remaining = 0;
        if (idCard.length() == 18) {
            idCard = idCard.substring(0, 17);
        }
        if (idCard.length() == 17) {
            int sum = 0;
            for (int i = 0; i < 17; i++) {
                String k = idCard.substring(i, i + 1);
                ai[i] = Integer.parseInt(k);
            }
            for (int i = 0; i < 17; i++) {
                sum = sum + Weight[i] * ai[i];
            }
            remaining = sum % 11;
        }
        return remaining == 2 ? "X" : String.valueOf(Verifycode[remaining]);
    }

    /**
     * 传入身份证编号，返回身份证是否合法，如果为true则合法，如果为false则验证未通过
     *
     * @param idCard
     * @return {
     * @code String aac002 =
     *       this.getPageElement("aac002").getValue();//获取页面输入的身份证编号 boolean
     *       flag = IdCardManageUtil.trueOrFalseIdCard(aac002);//判断身份证编号是否能够验证通过
     *       if(flag){ ... }else{ throw new RadowException("身份证不合法!"); } }
     */
    public static boolean trueOrFalseIdCard(String idCard) {
        Boolean bl = true;
        // 如果为空 验证不通过
        if (idCard == null || idCard.equals("")) {
            return  false;
        }
        idCard = idCard.toUpperCase();
        // 如果不为空 且验证通过则返回true 否则返回false
        try {
            bl = new IdCardUtils().checkIdCard(idCard);
        } catch (Exception e) {
            // e.printStackTrace();
            bl = false;
        }
        return bl;
    }

    /**
     * 获取年龄
     *
     * @param aac002
     * @return
     */
    public static int getAge(String aac002) {
        String birth = aac002.substring(6, 14);
        // dayOfBirth出生那一日的时间
        Date dayOfBirth = null;
        try {
            dayOfBirth = new SimpleDateFormat("yyyyMMdd").parse(birth);
        } catch (Exception e) {
            // TODO: handle exception
        }

        // 当前时间
        Calendar cal = new GregorianCalendar();
        // year今年年份
        int year = cal.get(Calendar.YEAR);
        // 当前cal为dayOfBirth出生那一日的Calendar时间
        cal.setTime(dayOfBirth);
        // 出生年份
        int birthYear = cal.get(Calendar.YEAR);
        int age = year - birthYear;
        // 计算今年生日
        cal.set(Calendar.YEAR, year);
        // birthday 每年的生日
        Date birthday = cal.getTime();
        System.out.println(birthday);
        // today 今天
        Date today = new Date();
        System.out.println(today);
        // 当前时间小于今年的生日
        if (today.compareTo(birthday) < 0) {
            // 今年没有过生日, 减一岁
            age--;
        }
        return age;
    }
}
