package com.port.abc.boarder.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.port.abc.boarder.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	@RequestMapping(value="/write" , method=RequestMethod.GET)
	public ModelAndView write() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("board/write");
		return mv;
	}
	@RequestMapping(value="/list" , method=RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("board/list");
		return mv;
	}
	
	
	

}
