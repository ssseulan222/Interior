package com.interior.community.page;

public class SearchPager {

	private Search search;
	private int curPage;
	private int startNum;
	private int lastNuml;
	private int curBlock;
	
	public Search getSearch() {
		return search;
	}
	public void setSearch(Search search) {
		this.search = search;
	}
	public int getCurPage() {
		return curPage;
	}
	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}
	public int getStartNum() {
		return startNum;
	}
	public void setStartNum(int startNum) {
		this.startNum = startNum;
	}
	public int getLastNuml() {
		return lastNuml;
	}
	public void setLastNuml(int lastNuml) {
		this.lastNuml = lastNuml;
	}
	public int getCurBlock() {
		return curBlock;
	}
	public void setCurBlock(int curBlock) {
		this.curBlock = curBlock;
	}
	
}
