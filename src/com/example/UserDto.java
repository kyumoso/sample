package com.example;

public class UserDto {
    private int no;
    private String userid;
    private String password;

    public int getNo() {
        return no;
    }
    public String getUserid() {
        return userid;
    }
    public String getPassword() {
        return password;
    }

    public void setNo(int no) {
        this.no = no;
    }
    public void setUserid(String userid) {
        this.userid = userid;
    }
    public void setPassword(String password) {
        this.password = password;
    }
}