package com.port.abc.order.service;

import com.port.abc.goods.dto.GoodsDto;
import com.port.abc.member.dto.MemberDto;
import com.port.abc.order.dto.OrderDto;

public interface OrderService {
	
	public void addNewOrder(OrderDto orderDto) throws Exception;
	public MemberDto getOrdererInfo(String memberId) throws Exception;
	public GoodsDto getGoodsInfo(int goodsId) throws Exception;
	
}
