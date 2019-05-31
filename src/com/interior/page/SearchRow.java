package com.interior.page;

public class SearchRow {
	
	//검색 
	private Search search;	
	public Search getSearch() {
		return search;
	}
	public void setSearch(Search search) {
		this.search = search;
	}
/////////////////////////////////////////////////
	// 현재 리스트 페이지의 시작 번호
	private int startRow;
	public int getStartRow() {
		return startRow;
	}
	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}
/////////////////////////////////////////////////
	//현재 리스트 페이지의 끝 번호
	private int lastRow;
	public int getLastRow() {
		return lastRow;
	}
	public void setLastRow(int lastRow) {
		this.lastRow = lastRow;
	}
}
