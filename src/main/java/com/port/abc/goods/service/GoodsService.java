package com.port.abc.goods.service;

import java.util.List;

import com.port.abc.goods.dto.GoodsDto;



public interface GoodsService {
	
	public List<GoodsDto> listGoods(String goodsStatus) throws Exception;
	public GoodsDto goodsDetail(int goodsId) throws Exception;
	
}
