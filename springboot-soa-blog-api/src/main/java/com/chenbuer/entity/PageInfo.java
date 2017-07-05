package com.chenbuer.entity;

import java.util.List;

/**
 * Created by czy on 2017/7/2.
 * 返回的分页信息
 */
public class PageInfo {
    private List<Integer> listPages;//要展示多少页
    private Integer curPage;//当前是第几页
    private Boolean showPre;//是否展示”上一页“标签
    private Boolean showNext;//是否展示”下一页“标签

    public PageInfo() {
    }

    public List<Integer> getListPages() {
        return listPages;
    }

    public void setListPages(List<Integer> listPages) {
        this.listPages = listPages;
    }

    public Integer getCurPage() {
        return curPage;
    }

    public void setCurPage(Integer curPage) {
        this.curPage = curPage;
    }

    public Boolean getShowPre() {
        return showPre;
    }

    public void setShowPre(Boolean showPre) {
        this.showPre = showPre;
    }

    public Boolean getShowNext() {
        return showNext;
    }

    public void setShowNext(Boolean showNext) {
        this.showNext = showNext;
    }
}
