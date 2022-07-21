package com.port.abc.goods.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.port.abc.goods.service.GoodsService;



@Controller

public class GoodsController {
	
	@Autowired
	private GoodsService goodsService;
	
	@RequestMapping(value="/goodsDetail" , method = RequestMethod.GET)
	public ModelAndView goodsDetail() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("goods/goodsDetail");
		
		
		return mv;
		
	}
	@RequestMapping(value="/goodsDetail1" , method = RequestMethod.GET)
	public ModelAndView goodsDetail1() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("goods/goodsDetail1");
		
		
		return mv;
		
	}
	@RequestMapping(value="/goodsDetail2" , method = RequestMethod.GET)
	public ModelAndView goodsDetail2() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("goods/goodsDetail2");
		
		
		return mv;
		
	}
	@RequestMapping(value="/goodsDetail3" , method = RequestMethod.GET)
	public ModelAndView goodsDetail3() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("goods/goodsDetail3");
		
		
		return mv;
		
	}
	@RequestMapping(value="/goodsDetail4" , method = RequestMethod.GET)
	public ModelAndView goodsDetail4() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("goods/goodsDetail4");
		
		
		return mv;
		
	}
	
}
