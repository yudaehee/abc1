package com.port.abc.order.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.port.abc.goods.dto.GoodsDto;
import com.port.abc.member.dto.MemberDto;
import com.port.abc.order.dto.OrderDto;


@Repository
public class OrderDaoImpl implements OrderDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public void insertNewOrder(OrderDto orderDto) throws Exception{
		sqlSession.insert("mapper.order.insertNewOrder" , orderDto);
	}

	@Override
	public MemberDto selectOrdererInfo(String memberId) throws Exception {
		return sqlSession.selectOne("mapper.order.selectOrdererInfo" , memberId);
	}

	@Override
	public GoodsDto selectGoodsInfo(int goodsId) throws Exception {
		return sqlSession.selectOne("mapper.order.selectGoodsInfo" , goodsId);
	}

}

