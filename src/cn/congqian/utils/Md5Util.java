package cn.congqian.utils;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * Created by mkn on 2018/12/6.
 * 密码MD5加密
 */
public class Md5Util {
    public String getMd5(String str){
        MessageDigest md = null;
        String password = null;
        try {
            md = MessageDigest.getInstance("MD5");
            md.update(str.getBytes());
            password = new BigInteger(1, md.digest()).toString(16);
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            System.out.println("加密错误");
        }
        return password;
    }
}
