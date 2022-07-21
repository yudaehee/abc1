package com.port.abc.goods.dao;

import java.util.List;

import com.port.abc.goods.dto.GoodsDto;



public interface GoodsDao {
	
	public List<GoodsDto> selectGoodsList(String goodsStatus) throws Exception;
	public GoodsDto selectGoodsDetail(int goodsId) throws Exception;

}
