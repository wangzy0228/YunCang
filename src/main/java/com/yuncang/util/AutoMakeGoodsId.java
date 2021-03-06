package com.yuncang.util;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by lzw on 2017/5/14.
 * 生成商品ID逻辑
 */
public class AutoMakeGoodsId {


    private static String finalId;

    public static String MakeId(String maxGoodsId) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMdd");
        String nowDate = dateFormat.format(new Date());
        if (maxGoodsId != null && maxGoodsId.contains(nowDate)) {
            String end = maxGoodsId.substring(8, 12);
            int endNum = Integer.parseInt(end);
            int tmpNum = 10000 + endNum + 1;
            finalId = nowDate + subStr("" + tmpNum, 1);
            return finalId;
        } else {
            finalId = nowDate + "0001";
            return finalId;
        }
    }

    public static String subStr(String str, int start) {
        if (str == null || str.equals("") || str.length() == 0)
            return "";
        if (start < str.length()) {
            return str.substring(start);
        } else {
            return "";
        }

    }
}
