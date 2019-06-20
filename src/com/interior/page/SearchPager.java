package com.interior.page;

<<<<<<< HEAD
import com.interior.page.Search;

public class SearchPager {

	// 검색의 종류, 검색어
	private Search search;
=======
public class SearchPager{
	private Search search;
	private int curPage;
	private int startNum;
	private int lastNum;
	private int curBlock;
	private int totalBlock;
	
	
>>>>>>> origin/expert
	public Search getSearch() {
		return search;
	}
	public void setSearch(Search search) {
		this.search = search;
	}
<<<<<<< HEAD
	/////////////////////////////////
	// 현재 리스트 페이지
	private int curPage;
=======
>>>>>>> origin/expert
	public int getCurPage() {
		return curPage;
	}
	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}
<<<<<<< HEAD
	/////////////////////////////////
	//블록 시작 번호
	private int startNum;
=======
>>>>>>> origin/expert
	public int getStartNum() {
		return startNum;
	}
	public void setStartNum(int startNum) {
		this.startNum = startNum;
	}
<<<<<<< HEAD
	/////////////////////////////////
	//블록 끝 번호
	private int lastNum;
=======
>>>>>>> origin/expert
	public int getLastNum() {
		return lastNum;
	}
	public void setLastNum(int lastNum) {
		this.lastNum = lastNum;
	}
<<<<<<< HEAD
	/////////////////////////////////
	// 현재 블록 번호
	private int curBlock;
=======
>>>>>>> origin/expert
	public int getCurBlock() {
		return curBlock;
	}
	public void setCurBlock(int curBlock) {
		this.curBlock = curBlock;
	}
<<<<<<< HEAD
	/////////////////////////////////
	// 전체 블록 번호
	private int totalBlock;
=======
>>>>>>> origin/expert
	public int getTotalBlock() {
		return totalBlock;
	}
	public void setTotalBlock(int totalBlock) {
		this.totalBlock = totalBlock;
	}
<<<<<<< HEAD
=======
	
	
	

>>>>>>> origin/expert
}
