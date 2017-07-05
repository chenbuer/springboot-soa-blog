package com.chenbuer.util;

import org.apache.shiro.crypto.hash.Md5Hash;

/**
 * Created by czy on 2017/7/5.
 */
public class CryptographyUtil {


    /**
     * Md5加密
     * @param str
     * @param salt
     * @return
     */
    public static String md5(String str,String salt){
        return new Md5Hash(str,salt).toString();
    }

    public static void main(String[] args) {
        String password="123456";

        System.out.println("加密之后："+CryptographyUtil.md5(password, "chenbuer"));
    }
}
