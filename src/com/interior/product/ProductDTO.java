package com.interior.product;

public class ProductDTO {
	private String num;
	private String seller;
	private String name;
	private String category;
	private String price;
	private String saleRate;
	private String salePrice;
	private String lowestPrice;
	private String point;
	private String delivery;
	private String deliveryLocal;
	private String deliveryDiff;
	private String freeDeliv;
	private String deliveryFee;
	private String returnFee;
	private String exchangeFee;
	private String sendPlace;
	
	// ????? store 테이블 참조하는 다른 테이블??? //////////
	private int stock;
	private int grade;
	private int count;
	private int ranking;
	private int hit;
	private int scrap;
	//private UploadDTO uploadDTO;
	
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getSeller() {
		return seller;
	}
	public void setSeller(String seller) {
		this.seller = seller;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getSaleRate() {
		return saleRate;
	}
	public void setSaleRate(String saleRate) {
		this.saleRate = saleRate;
	}
	public String getSalePrice() {
		return salePrice;
	}
	public void setSalePrice(String salePrice) {
		this.salePrice = salePrice;
	}
	public String getLowestPrice() {
		return lowestPrice;
	}
	public void setLowestPrice(String lowestPrice) {
		this.lowestPrice = lowestPrice;
	}
	public String getPoint() {
		return point;
	}
	public void setPoint(String point) {
		this.point = point;
	}
	public String getDelivery() {
		return delivery;
	}
	public void setDelivery(String delivery) {
		this.delivery = delivery;
	}
	public String getDeliveryLocal() {
		return deliveryLocal;
	}
	public void setDeliveryLocal(String deliveryLocal) {
		this.deliveryLocal = deliveryLocal;
	}
	public String getDeliveryDiff() {
		return deliveryDiff;
	}
	public void setDeliveryDiff(String deliveryDiff) {
		this.deliveryDiff = deliveryDiff;
	}
	public String getFreeDeliv() {
		return freeDeliv;
	}
	public void setFreeDeliv(String freeDeliv) {
		this.freeDeliv = freeDeliv;
	}
	public String getDeliveryFee() {
		return deliveryFee;
	}
	public void setDeliveryFee(String deliveryFee) {
		this.deliveryFee = deliveryFee;
	}
	public String getReturnFee() {
		return returnFee;
	}
	public void setReturnFee(String returnFee) {
		this.returnFee = returnFee;
	}
	public String getExchangeFee() {
		return exchangeFee;
	}
	public void setExchangeFee(String exchangeFee) {
		this.exchangeFee = exchangeFee;
	}
	public String getSendPlace() {
		return sendPlace;
	}
	public void setSendPlace(String sendPlace) {
		this.sendPlace = sendPlace;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getRanking() {
		return ranking;
	}
	public void setRanking(int ranking) {
		this.ranking = ranking;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public int getScrap() {
		return scrap;
	}
	public void setScrap(int scrap) {
		this.scrap = scrap;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
}
