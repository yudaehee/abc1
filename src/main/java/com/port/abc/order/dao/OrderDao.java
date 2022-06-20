package com.port.abc.order.dao;

import com.port.abc.goods.dto.GoodsDto;
import com.port.abc.member.dto.MemberDto;
import com.port.abc.order.dto.OrderDto;

public interface OrderDao {
	
	public void insertNewOrder(OrderDto orderDto) throws Exception;
	public MemberDto selectOrdererInfo(String memberId) throws Exception;
	public GoodsDto selectGoodsInfo(int goodsId) throws Exception;
	
}
