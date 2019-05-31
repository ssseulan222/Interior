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
			this.kind="store";
		} else if(kind.equals("p")) {
			this.kind="photo";
		} else if(kind.equals("h")) {
			this.kind="house";
		} else if(kind.equals("q")) {
			this.kind="question";
		} else if(kind.equals("e")){
			this.kind="expert";
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
