package com.port.abc.admin.order.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.port.abc.order.dto.OrderDto;



@Repository
public class AdminOrderDaoImpl implements AdminOrderDao{
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<OrderDto> selectNewOrderList() throws Exception{
		return sqlSession.selectList("mapper.admins.order.selectNewOrderList" );
	}
	
	public void  updateDeliveryState(Map<String, String> deliveryMap) throws Exception{
		sqlSession.update("mapper.admins.order.updateDeliveryState" , deliveryMap);
	}
	
	
	public Map<String,Object> selectOrderDetail(int orderId) throws Exception{
		return sqlSession.selectOne("mapper.admins.order.selectOrderDetail" , orderId);
	}

}
