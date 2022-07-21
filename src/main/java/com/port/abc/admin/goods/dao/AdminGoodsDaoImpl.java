package com.port.abc.admin.goods.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.port.abc.goods.dto.GoodsDto;



@Repository
public class AdminGoodsDaoImpl implements AdminGoodsDao{
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<GoodsDto> selectNewGoodsList() throws Exception {
		return sqlSession.selectList("mapper.admins.goods.selectNewGoodsList");
	}
	
	@Override
	public void insertNewGoods(GoodsDto goodsDto) throws Exception {
		sqlSession.insert("mapper.admins.goods.insertNewGoods" , goodsDto);
	}
	
	@Override
	public GoodsDto selectGoodsDetail(int goodsId) throws Exception{
		return sqlSession.selectOne("mapper.admins.goods.selectGoodsDetail" , goodsId);
	}
	
	@Override
	public void updateGoodsInfo(Map<String,Object> goodsMap) throws Exception{
		sqlSession.update("mapper.admins.goods.updateGoodsInfo" , goodsMap);
	}

}
