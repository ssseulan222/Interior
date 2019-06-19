package com.interior.product;

import com.interior.prosub.ProLiveDTO;
import com.interior.prosub.ProReviewDTO;
import com.interior.upload.UploadDTO;

public class ProductDTO {
	private int num;
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

	private UploadDTO uploadDTO;
	/*
	private ProLiveDTO proLiveDTO;
	private ProReviewDTO proReviewDTO;
	*/
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
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
	/*
	public UploadDTO getUploadDTO() {
		return uploadDTO;
	}
	public void setUploadDTO(UploadDTO uploadDTO) {
		this.uploadDTO = uploadDTO;
	}
	public ProLiveDTO getProLiveDTO() {
		return proLiveDTO;
	}
	public void setProLiveDTO(ProLiveDTO proLiveDTO) {
		this.proLiveDTO = proLiveDTO;
	}
	public ProReviewDTO getProReviewDTO() {
		return proReviewDTO;
	}
	public void setProReviewDTO(ProReviewDTO proReviewDTO) {
		this.proReviewDTO = proReviewDTO;
	}
	*/
	public UploadDTO getUploadDTO() {
		return uploadDTO;
	}
	public void setUploadDTO(UploadDTO uploadDTO) {
		this.uploadDTO = uploadDTO;
	}
	
}
