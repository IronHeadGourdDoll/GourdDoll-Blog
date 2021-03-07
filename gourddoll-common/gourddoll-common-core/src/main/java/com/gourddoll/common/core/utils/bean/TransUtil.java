package com.gourddoll.common.core.utils.bean;

import java.lang.reflect.Field;
import java.lang.reflect.Method;

/**
 * dto与po转换工具类
 *
 * @author gourddoll
 */
public class TransUtil {
    /**
     * dto2po
     */
    public static Object dto2po(Object dto, Object po) {
        if (dto == null) {
            return null;
        }
        Field[] fields = dto.getClass().getDeclaredFields();
        Method methodSet = null;
        Method methodGet = null;
        for (int i = 0; i < fields.length; i++) {
            String fieldName = fields[i].getName();
            Class<?> classType = fields[i].getType();
            String setMethod = "set" + fieldName.substring(0, 1).toUpperCase() + fieldName.substring(1);
            String getMethod = "get" + fieldName.substring(0, 1).toUpperCase() + fieldName.substring(1);
            try {
                methodSet = po.getClass().getMethod(setMethod, classType);
                methodGet = dto.getClass().getMethod(getMethod);
                methodSet.invoke(po, methodGet.invoke(dto));
            } catch (Exception e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        return po;
    }

    /**
     * po2dto
     */
    public static void po2dto(Object po, Object dto) {
        if (po == null) {
            return;
        }
        Field[] fields = po.getClass().getDeclaredFields();
        Method getMethod = null;
        Method setMethod = null;
        for (int i = 0; i < fields.length; i++) {
            String fieldName = fields[i].getName();
            Class<?> classType = fields[i].getType();
            String getMethodName = "get" + fieldName.substring(0, 1).toUpperCase() + fieldName.substring(1);
            String setMethodName = "set" + fieldName.substring(0, 1).toUpperCase() + fieldName.substring(1);
            try {
                setMethod = dto.getClass().getMethod(setMethodName, classType);//找与po相同的方法
                getMethod = po.getClass().getMethod(getMethodName);
                setMethod.invoke(dto, getMethod.invoke(po));
            } catch (Exception e) {
                //e.printStackTrace();
            }
        }
    }
}
 
 