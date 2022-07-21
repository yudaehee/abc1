package com.port.abc.boarder.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.port.abc.boarder.dto.BoardDto;
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
	@RequestMapping(value="/write" , method=RequestMethod.POST)
	public ModelAndView write(BoardDto boardDto) {
		boardService.insertBoard(boardDto);
		return new ModelAndView("redirect:list");
	}
		
	
		
	@RequestMapping(value="/list" , method=RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("board/list");
		mv.addObject("list", boardService.getBoardList());
		return mv;
	}
	@RequestMapping(value="/Info" , method=RequestMethod.GET)
	public ModelAndView Info(@RequestParam("num") int num) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("board/Info");
		mv.addObject("boardDto", boardService.getOneBoard(num));
		return mv;
	}
	
	@RequestMapping(value="/bordupdate" , method=RequestMethod.GET)
	public ModelAndView update(@RequestParam("num") int num){
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("board/update");
		mv.addObject("boardDto", boardService.getOneBoard(num));
		return mv;
	}
	
	@RequestMapping(value="/bordupdate" , method=RequestMethod.POST)
	public @ResponseBody String update(BoardDto boardDto, HttpServletRequest request) {
		
		String htmlBody="";
		
		if(boardService.updateBoard(boardDto)) {
		htmlBody ="<script>";
		htmlBody +="alert('It is change');";
		htmlBody += "location.href='" + request.getContextPath() + "/list';";
		htmlBody +="</script>";
		}
		else {
			htmlBody ="<script>";
			htmlBody +="alert('Check your Id and Password');";
			htmlBody +="history.go(-1);";
			htmlBody +="</script>";
		}
		return htmlBody;
	}

	@RequestMapping(value="/boardDelete" , method=RequestMethod.GET)
	public ModelAndView boardDelete(@RequestParam("num") int num) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("board/delete");
		mv.addObject("boardDto" , boardService.getOneBoard(num));
		
		return mv;
		
	}
	
	@RequestMapping(value="/boardDelete" , method=RequestMethod.POST)
	public @ResponseBody String boardDelete(BoardDto boardDto , HttpServletRequest request) {
		
		String htmlBody = "";
		if (boardService.deleteBoard(boardDto)) {
			htmlBody = "<script>";
			htmlBody += "alert('It has been deleted.');";
			htmlBody += "location.href='" + request.getContextPath() + "/list';";
			htmlBody += "</script>";
		}
		else {
			htmlBody = "<script>";
			htmlBody += "alert('Check your Id and Password');";
			htmlBody += "history.go(-1);";
			htmlBody += "</script>";
		}
		
		return htmlBody;
	}
	
}
