package com.port.abc.admin.goods.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.port.abc.goods.dto.GoodsDto;




@Service
public class AdminGoodsServiceImpl implements AdminGoodsService {
	
	@Autowired
	private com.port.abc.admin.goods.dao.AdminGoodsDao adminGoodsDao;
	
	@Override
	public List<GoodsDto> listNewGoods() throws Exception{
		return adminGoodsDao.selectNewGoodsList();
	}
	
	@Override
	public void addNewGoods(GoodsDto goodsDto) throws Exception{
		adminGoodsDao.insertNewGoods(goodsDto);
	}
	
	@Override
	public GoodsDto goodsDetail(int goodsId) throws Exception {
		return adminGoodsDao.selectGoodsDetail(goodsId);
	}
	
	@Override
	public void modifyGoodsInfo(Map<String,Object> goodsMap) throws Exception{
		adminGoodsDao.updateGoodsInfo(goodsMap);
	}	
	
}
