package com.interior.page;

//약간 SearchDTO 비슷한 페이지
public class Search {
		
	private String kind;
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		//스토어 s 사진 p 집들이 h 질문 q 전문가 e
		if(kind == null) {
			this.kind="store";
		}else if(kind.equals("s")) {
			this.kind="sell";
		} else if(kind.equals("n")) {
			this.kind="new";
		} else if(kind.equals("h")) {
			this.kind="house";
		} else if(kind.equals("q")) {
			this.kind="question";
		} else if(kind.equals("e")){
			this.kind="expert";
		}
	}
	
	///////////////////////////////////////////////
	private String sort;
	public String getSort() {
		return sort;
	}
	public void setSort(String sort) {
		if(sort==null) {
			this.sort="new";
		} else {
			this.sort=sort;
		}
	}
	
	///////////////////////////////////////////////
	private String category;
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		if(category == null) {
			this.category="*";
		} else {
			this.category=category;
		}
	}
	
	///////////////////////////////////////////////
	private String search;
	public String getSearch() {
		return search;
	}
	public void setSearch(String search) {
		if(search==null) {
			this.search="";
		} else {
			this.search=search;
		}
	}
	
	
}
