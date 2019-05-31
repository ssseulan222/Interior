package com.interior.page;

import com.interior.page.Search;

public class SearchPager {

	// 검색의 종류, 검색어
	private Search search;
	public Search getSearch() {
		return search;
	}
	public void setSearch(Search search) {
		this.search = search;
	}
	/////////////////////////////////
	// 현재 리스트 페이지
	private int curPage;
	public int getCurPage() {
		return curPage;
	}
	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}
	/////////////////////////////////
	//블록 시작 번호
	private int startNum;
	public int getStartNum() {
		return startNum;
	}
	public void setStartNum(int startNum) {
		this.startNum = startNum;
	}
	/////////////////////////////////
	//블록 끝 번호
	private int lastNum;
	public int getLastNum() {
		return lastNum;
	}
	public void setLastNum(int lastNum) {
		this.lastNum = lastNum;
	}
	/////////////////////////////////
	// 현재 블록 번호
	private int curBlock;
	public int getCurBlock() {
		return curBlock;
	}
	public void setCurBlock(int curBlock) {
		this.curBlock = curBlock;
	}
	/////////////////////////////////
	// 전체 블록 번호
	private int totalBlock;
	public int getTotalBlock() {
		return totalBlock;
	}
	public void setTotalBlock(int totalBlock) {
		this.totalBlock = totalBlock;
	}
}
