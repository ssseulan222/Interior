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
			this.sort="r";
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
			this.category="category";
		} else if(category.equals("1")) {
			this.category="가구";
		} else if(category.equals("2")) {
			this.category="패브릭";
		}else if(category.equals("1")) {
			this.category="홈데코/조명";
		}else if(category.equals("1")) {
			this.category="가전";
		}else if(category.equals("1")) {
			this.category="수납/생활";
		}else if(category.equals("1")) {
			this.category="주방";
		}else if(category.equals("1")) {
			this.category="DIY자재";
		}else if(category.equals("1")) {
			this.category="시공/주문";
		}else if(category.equals("1")) {
			this.category="반려동물";
		}
	}
	
	///////////////////////////////////////////////
	
	private String seller;
	public String getSeller() {
		return seller;
	}
	public void setSeller(String seller) {
		if(seller == null) {
			this.seller="seller";
		} else {
			this.seller=seller;
		}
	}
	
	
	///////////////////////////////////////////////
	private String keyword;
	public String getSearch() {
		return keyword;
	}
	public void setSearch(String search) {
		if(search==null) {
			this.keyword="";
		} else {
			this.keyword=search;
		}
	}
	
	
}
