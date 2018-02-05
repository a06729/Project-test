package com.pknu.file.orderFunction.dto;

public class OrderDto {
	private int sunseo;
	private int orderNum;
	private String orderDate;
	private String buyerId;
	private String buyerName;
	private String itemName;
	private String price;
	private String status;
	public int getSunseo() {
		return sunseo;
	}
	public void setSunseo(int sunseo) {
		this.sunseo = sunseo;
	}
	public int getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(int orderNum) {
		this.orderNum = orderNum;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	public String getBuyerId() {
		return buyerId;
	}
	public void setBuyerId(String buyerId) {
		this.buyerId = buyerId;
	}
	public String getBuyerName() {
		return buyerName;
	}
	public void setBuyerName(String buyerName) {
		this.buyerName = buyerName;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "OrderDto [sunseo=" + sunseo + ", orderNum=" + orderNum + ", orderDate=" + orderDate + ", buyerId="
				+ buyerId + ", buyerName=" + buyerName + ", itemName=" + itemName + ", price=" + price + ", status="
				+ status + "]";
	}
	
	
	
	
}
