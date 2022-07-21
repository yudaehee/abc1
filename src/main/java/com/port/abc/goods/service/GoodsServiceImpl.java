package com.port.abc.goods.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.port.abc.goods.dao.GoodsDao;
import com.port.abc.goods.dto.GoodsDto;



@Service
public class GoodsServiceImpl implements GoodsService{
	
	@Autowired
	private GoodsDao goodsDao;
	
	public List<GoodsDto> listGoods(String goodsStatus) throws Exception {
		return goodsDao.selectGoodsList(goodsStatus);
	}
	
	
	public GoodsDto goodsDetail(int goodsId) throws Exception {
		return goodsDao.selectGoodsDetail(goodsId);
	}
	
	
}
