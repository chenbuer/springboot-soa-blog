package com.chenbuer.entity;

/**
 * Created by czy on 2017/7/5.
 */
public class LoginUserInfo {
    private String password;
    private String userName;

    @Override
    public String toString() {
        return "LoginUserInfo{" +
                "password='" + password + '\'' +
                ", userName='" + userName + '\'' +
                '}';
    }

    public LoginUserInfo() {
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
}
