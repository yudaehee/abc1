package com.port.abc.order.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.port.abc.goods.dto.GoodsDto;
import com.port.abc.member.dto.MemberDto;
import com.port.abc.order.dao.OrderDao;
import com.port.abc.order.dto.OrderDto;


@Service
public class OrderServiceImpl implements OrderService {
	
	@Autowired
	private OrderDao orderDao;
	
	public void addNewOrder(OrderDto orderDto) throws Exception{
		orderDao.insertNewOrder(orderDto);
	}

	@Override
	public MemberDto getOrdererInfo(String memberId) throws Exception {
		return orderDao.selectOrdererInfo(memberId);
	}

	@Override
	public GoodsDto getGoodsInfo(int goodsId) throws Exception {
		return orderDao.selectGoodsInfo(goodsId);
	}	
	
}
