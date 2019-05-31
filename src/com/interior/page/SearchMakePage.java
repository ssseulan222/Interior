package com.interior.page;

import com.interior.page.SearchPager;
import com.interior.page.Search;

public class SearchMakePage {
	private int perPage;
	private int curPage;
	private Search search;
	
	public SearchMakePage(int curPage, String kind, String search) {
		this(10,curPage,kind,search);
	}

	public SearchMakePage(int perPage, int curPage, String kind, String search) {
		this.perPage = perPage;
		this.curPage = curPage;
		this.search = new Search();
		this.search.setKind(kind);
		this.search.setSearch(search);
	}
	
	// page
	public SearchPager makePage(int totalCount) {
		//2. totalPage
		int totalPage = totalCount/perPage;
		if(totalCount % perPage != 0) {
			totalPage++;
		}
		
		//3. totalBlock
		int perBlock=5;
		int totalBlock = totalPage/perBlock;
		if(totalPage % perBlock != 0) {
			totalBlock++;
		}
		
		//4. curBlock
		int curBlock = curPage / perBlock;
		if(curPage % perBlock != 0) {
			curBlock++;
		}
		
		//5. startNum, lastNum
		int startNum = (curBlock-1)*perBlock+1;
		int lastNum = curBlock * perBlock;
		
		// lastBlock
		if(curBlock==totalBlock) {
			lastNum=totalPage;
		}
		
		SearchPager searchPager = new SearchPager();
		searchPager.setCurPage(curPage);
		searchPager.setCurBlock(curBlock);
		searchPager.setLastNum(lastNum);
		searchPager.setStartNum(startNum);
		searchPager.setTotalBlock(totalBlock);
		searchPager.setSearch(search);
		
		return searchPager;
	}
}
