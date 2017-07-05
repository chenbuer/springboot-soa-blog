package com.chenbuer.entity;

/**
 * Created by czy on 2017/6/25.
 */
public class ResultRespone {
    private Integer retCode;
    private Object result;
    private String retMsg;

    public ResultRespone() {
    }

    public Integer getRetCode() {
        return retCode;
    }

    public void setRetCode(Integer retCode) {
        this.retCode = retCode;
    }

    public Object getResult() {
        return result;
    }

    public void setResult(Object result) {
        this.result = result;
    }

    public String getRetMsg() {
        return retMsg;
    }

    public void setRetMsg(String retMsg) {
        this.retMsg = retMsg;
    }
}
