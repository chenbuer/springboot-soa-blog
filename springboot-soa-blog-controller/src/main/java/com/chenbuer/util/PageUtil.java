package com.chenbuer.util;

import com.chenbuer.entity.PageInfo;

import java.util.ArrayList;
import java.util.List;

public class PageUtil {


	public static PageInfo getPageInfo(long totalNum, // 总记录数
									   int currentPage, // 当前页
									   int pageSize){// 每页显示记录数

		PageInfo pageInfo=new PageInfo();
		//是否需要显示”上一页“标签
		pageInfo.setShowPre(1==currentPage?false:true);

		// 计算总页数
		long totalPage = totalNum % pageSize == 0 ? totalNum / pageSize : totalNum / pageSize + 1;
		pageInfo.setShowNext(totalPage==currentPage?false:true);
		pageInfo.setCurPage(currentPage);

		List<Integer> listPage = new ArrayList();
		for (int i=currentPage-2;i<currentPage+3;i++){
			if (i < 1 || i > totalPage) {
				continue;
			}
			listPage.add(i);
			pageInfo.setListPages(listPage);
		}

		return pageInfo;
	}


}
