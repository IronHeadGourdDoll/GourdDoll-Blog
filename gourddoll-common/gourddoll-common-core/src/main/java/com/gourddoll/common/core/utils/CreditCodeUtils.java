package com.gourddoll.common.core.utils;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * gb32100 2015     http://c.gb688.cn/bzgk/gb/showGb?type=online&hcno=24691C25985C1073D3A7C85629378AC0
 */
public class CreditCodeUtils {
    private static final int[] WEIGHT = new int[]{1, 3, 9, 27, 19, 26, 16, 17, 20, 29, 25, 13, 8, 24, 10, 30, 28};
    private static final int[] CODE_VALUE = new int[]{-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, -1, -1, -1, -1, -1, -1, -1, 10, 11, 12, 13, 14, 15, 16, 17, -1, 18, 19, 20, 21, 22, -1, 23, 24, 25, -1, 26, 27, -1, 28, 29, 30, -1, -1, -1, -1, -1, -1, -1, 10, 11, 12, 13, 14, 15, 16, 17, -1, 18, 19, 20, 21, 22, -1, 23, 24, 25, -1, 26, 27, -1, 28, 29, 30, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};

    public static boolean valid(String id) {
        if (id == null) {
            return false;
        } else {
            id = id.trim();
            if (id.isEmpty()) {
                return false;
            } else if (id.length() != 18) {
                return false;
            } else {
                char[] codeStr = id.toCharArray();
                int tempSum = 0;

                int i;
                for(i = 0; i < 17; ++i) {
                    char testc = codeStr[i];
                    if (i == 0 && testc != '1' && testc != '5' && testc != '9' && testc != 'Y') {
                        return false;
                    }

                    if (i == 1 && testc != '1' && testc != '2' && testc != '3' && testc != '9') {
                        return false;
                    }

                    if (testc > 127) {
                        return false;
                    }

                    int c_value = CODE_VALUE[testc];
                    if (c_value == -1) {
                        return false;
                    }

                    tempSum += WEIGHT[i] * c_value;
                }

                i = 31 - tempSum % 31;
                if (i == 31) {
                    i = 0;
                }

                return CODE_VALUE[codeStr[17]] == i;
            }
        }
    }

    public static void main(String[] args){
        String codeStr = "11";
        String[] codeArr = codeStr.split(",");
        List<Map<String,Boolean>> maps = new ArrayList<>();
        for (String s : codeArr) {
            Map<String, Boolean> map = new HashMap<>();
            map.put(s, valid(s));
            System.out.println(map.toString());
        }
    }

}
