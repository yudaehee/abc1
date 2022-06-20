package com.port.abc.order.dto;

import java.util.Date;

import org.springframework.stereotype.Component;

@Component
public class OrderDto {
	
	private int orderId;
	private String memberId;
	private int goodsId;
	private int goodsSalesPrice;
	private String goodsTitle;
	private String ordererName;
	private String ordererHp;
	private int orderGoodsQty;
	private String receiverName;
	private String receiverHp1;
	private String receiverHp2;
	private String receiverHp3;
	private String receiverTel1;
	private String receiverTel2;
	private String receiverTel3;
	private String deliveryAddress;
	private String deliveryMethod;
	private String deliveryMessage;
	private String giftWrapping;
	private String payMethod;
	private String payOrdererHpNum; 
	private Date payOrderTime;
	private String cardComName;
	private String cardPayMonth;
	private String deliveryState;
	
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public int getGoodsId() {
		return goodsId;
	}
	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}
	public int getGoodsSalesPrice() {
		return goodsSalesPrice;
	}
	public void setGoodsSalesPrice(int goodsSalesPrice) {
		this.goodsSalesPrice = goodsSalesPrice;
	}
	public String getGoodsTitle() {
		return goodsTitle;
	}
	public void setGoodsTitle(String goodsTitle) {
		this.goodsTitle = goodsTitle;
	}
	public String getOrdererName() {
		return ordererName;
	}
	public void setOrdererName(String ordererName) {
		this.ordererName = ordererName;
	}
	public String getOrdererHp() {
		return ordererHp;
	}
	public void setOrdererHp(String ordererHp) {
		this.ordererHp = ordererHp;
	}
	public int getOrderGoodsQty() {
		return orderGoodsQty;
	}
	public void setOrderGoodsQty(int orderGoodsQty) {
		this.orderGoodsQty = orderGoodsQty;
	}
	public String getReceiverName() {
		return receiverName;
	}
	public void setReceiverName(String receiverName) {
		this.receiverName = receiverName;
	}
	public String getReceiverHp1() {
		return receiverHp1;
	}
	public void setReceiverHp1(String receiverHp1) {
		this.receiverHp1 = receiverHp1;
	}
	public String getReceiverHp2() {
		return receiverHp2;
	}
	public void setReceiverHp2(String receiverHp2) {
		this.receiverHp2 = receiverHp2;
	}
	public String getReceiverHp3() {
		return receiverHp3;
	}
	public void setReceiverHp3(String receiverHp3) {
		this.receiverHp3 = receiverHp3;
	}
	public String getReceiverTel1() {
		return receiverTel1;
	}
	public void setReceiverTel1(String receiverTel1) {
		this.receiverTel1 = receiverTel1;
	}
	public String getReceiverTel2() {
		return receiverTel2;
	}
	public void setReceiverTel2(String receiverTel2) {
		this.receiverTel2 = receiverTel2;
	}
	public String getReceiverTel3() {
		return receiverTel3;
	}
	public void setReceiverTel3(String receiverTel3) {
		this.receiverTel3 = receiverTel3;
	}
	public String getDeliveryAddress() {
		return deliveryAddress;
	}
	public void setDeliveryAddress(String deliveryAddress) {
		this.deliveryAddress = deliveryAddress;
	}
	public String getDeliveryMethod() {
		return deliveryMethod;
	}
	public void setDeliveryMethod(String deliveryMethod) {
		this.deliveryMethod = deliveryMethod;
	}
	public String getDeliveryMessage() {
		return deliveryMessage;
	}
	public void setDeliveryMessage(String deliveryMessage) {
		this.deliveryMessage = deliveryMessage;
	}
	public String getGiftWrapping() {
		return giftWrapping;
	}
	public void setGiftWrapping(String giftWrapping) {
		this.giftWrapping = giftWrapping;
	}
	public String getPayMethod() {
		return payMethod;
	}
	public void setPayMethod(String payMethod) {
		this.payMethod = payMethod;
	}
	public String getPayOrdererHpNum() {
		return payOrdererHpNum;
	}
	public void setPayOrdererHpNum(String payOrdererHpNum) {
		this.payOrdererHpNum = payOrdererHpNum;
	}
	public Date getPayOrderTime() {
		return payOrderTime;
	}
	public void setPayOrderTime(Date payOrderTime) {
		this.payOrderTime = payOrderTime;
	}
	public String getCardComName() {
		return cardComName;
	}
	public void setCardComName(String cardComName) {
		this.cardComName = cardComName;
	}
	public String getCardPayMonth() {
		return cardPayMonth;
	}
	public void setCardPayMonth(String cardPayMonth) {
		this.cardPayMonth = cardPayMonth;
	}
	public String getDeliveryState() {
		return deliveryState;
	}
	public void setDeliveryState(String deliveryState) {
		this.deliveryState = deliveryState;
	}
	
	@Override
	public String toString() {
		return "OrderDto [orderId=" + orderId + ", memberId=" + memberId + ", goodsId=" + goodsId + ", goodsSalesPrice="
				+ goodsSalesPrice + ", goodsTitle=" + goodsTitle + ", ordererName=" + ordererName + ", ordererHp="
				+ ordererHp + ", orderGoodsQty=" + orderGoodsQty + ", receiverName=" + receiverName + ", receiverHp1="
				+ receiverHp1 + ", receiverHp2=" + receiverHp2 + ", receiverHp3=" + receiverHp3 + ", receiverTel1="
				+ receiverTel1 + ", receiverTel2=" + receiverTel2 + ", receiverTel3=" + receiverTel3
				+ ", deliveryAddress=" + deliveryAddress + ", deliveryMethod=" + deliveryMethod + ", deliveryMessage="
				+ deliveryMessage + ", giftWrapping=" + giftWrapping + ", payMethod=" + payMethod + ", payOrdererHpNum="
				+ payOrdererHpNum + ", payOrderTime=" + payOrderTime + ", cardComName=" + cardComName
				+ ", cardPayMonth=" + cardPayMonth + ", deliveryState=" + deliveryState + "]";
	}
	
}
