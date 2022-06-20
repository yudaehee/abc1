package com.port.abc.order.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.port.abc.order.dto.OrderDto;
import com.port.abc.order.service.OrderService;



@Controller

public class OrderController {
	
	@Autowired
	private OrderService orderService;
	
	
	@RequestMapping(value="/ordergood" , method=RequestMethod.GET)
	public ModelAndView orderEachGoods(@RequestParam("goodsId") int goodsId , @RequestParam("orderGoodsQty") int orderGoodsQty , HttpServletRequest request) throws Exception{
		
		ModelAndView mv = new ModelAndView();  			
		mv.setViewName("order/orderGood");
		
		HttpSession session = request.getSession();
		
		mv.addObject("orderer" , orderService.getOrdererInfo((String)session.getAttribute("memberInfo")));
		mv.addObject("goodsInfo" , orderService.getGoodsInfo(goodsId));
		mv.addObject("orderGoodsQty" , orderGoodsQty);
		
		return mv;
		
	}
	
	
	@RequestMapping(value="/payToOrderGoods" , method=RequestMethod.POST)
	public ResponseEntity<Object> payToOrderGoods(OrderDto orderDto , HttpServletRequest request) throws Exception{
	    orderService.addNewOrder(orderDto);
		return new ResponseEntity<Object>(HttpStatus.OK);
	}
	

}
