package com.port.abc.member.contoller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.tiles.autotag.core.runtime.annotation.Parameter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.mysql.cj.Session;
import com.port.abc.member.dao.MemberDao;
import com.port.abc.member.dto.MemberDto;
import com.port.abc.member.service.MemberService;

@Controller

public class MemberController {
	
	@Autowired 
	private MemberService memberService;
	
	
	@RequestMapping(value="/main" , method=RequestMethod.GET)
	public ModelAndView index() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("domestic/main");
		
		return mv;
	}
	
	
	@RequestMapping(value="/ecomic", method=RequestMethod.GET)
	public ModelAndView ecmic() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("domestic/ecomic");
		
		return mv;
	}

	@RequestMapping(value="/workbook" , method=RequestMethod.GET)
	public ModelAndView workbook() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("domestic/workbook");
		
		return mv;
	}
	
	@RequestMapping(value="/history" , method=RequestMethod.GET)
	public ModelAndView history() {
		
		ModelAndView mv=  new ModelAndView();
		mv.setViewName("domestic/history");
		
		return mv;
	}
	
	@RequestMapping(value="/ani" , method=RequestMethod.GET)
	public ModelAndView ani() {
		
		ModelAndView mv=  new ModelAndView();
		mv.setViewName("domestic/ani");
		
		return mv;
	}
	
	@RequestMapping(value="/web" , method=RequestMethod.GET)
	public ModelAndView web() {
		
		ModelAndView mv=  new ModelAndView();
		mv.setViewName("domestic/web");
		
		return mv;
	}
	
	@RequestMapping(value="/web2" , method=RequestMethod.GET)
	public ModelAndView web2() {
		
		ModelAndView mv=  new ModelAndView();
		mv.setViewName("domestic/web2");
		
		return mv;
	}
	
	@RequestMapping(value="/sale" , method=RequestMethod.GET)
	public ModelAndView sale() {
		
		ModelAndView mv=  new ModelAndView();
		mv.setViewName("domestic/sale");
		
		return mv;
	}
	
	@RequestMapping(value="/join" , method=RequestMethod.GET)
	public ModelAndView join(){
		
		return new ModelAndView("join/join");
	}
	
	@RequestMapping(value="/join" , method=RequestMethod.POST)
		public @ResponseBody String join(MemberDto memberDto ,HttpServletRequest request) throws Exception{
			
		memberService.joinMember(memberDto);
			
		String htmlBody = "<script>";
			   htmlBody += "alert('You are now a member');";
			   htmlBody += "location.href='"+ request.getContextPath()+"/main1'";
			   htmlBody += "</script>";
			   
		return htmlBody;
			
		}
	
	
	@RequestMapping(value="/login" , method=RequestMethod.GET)
	public ModelAndView login() {
	
		return new ModelAndView("join/login");
	}
	
	@RequestMapping(value="/login" , method=RequestMethod.POST)
	public @ResponseBody String login(MemberDto memberDto , HttpServletRequest request) throws Exception{

			ModelAndView mv =new ModelAndView();
	
			String htmlBody = ""; 
			if(memberService.loginMember(memberDto) != null) {
				
				
				HttpSession session =request.getSession();
				session.setAttribute("loginUser", memberDto.getMemberId());
				session.setAttribute("loginUser" , true);			
				session.setAttribute("memberInfo" , memberDto.getMemberId());
				mv.setViewName("redirect:/join/main");
				
				htmlBody += "<script>";
				htmlBody += "alert('success login!');";
				htmlBody += "location.href='"+ request.getContextPath()+"/main';";
				htmlBody += "</script>";
			} 
			else {
				htmlBody += "<script>";
				htmlBody += "alert('check your Id or Password!');";
				htmlBody += "location.href='"+ request.getContextPath()+"/main';";
				htmlBody += "</script>";
			}
			return htmlBody;
			
			
	}
	
	
	
	
	
	@RequestMapping(value="/main1" , method=RequestMethod.GET)
	public ModelAndView main1() {
		
		ModelAndView mv=  new ModelAndView();
		mv.setViewName("domestic/main1");
		
		
		return mv;
	}
	
	@RequestMapping(value="/overlapped" , method=RequestMethod.POST)
	public ResponseEntity<Object> overlapped(@RequestParam("id") String id) throws Exception{
		return new ResponseEntity<Object>(memberService.overlapped(id) , HttpStatus.OK);
	}
	
	@RequestMapping(value="/memberlist" , method =RequestMethod.GET)
	public ModelAndView memberlist() throws Exception{
		
		ModelAndView mv= new ModelAndView();
		
		mv.setViewName("join/memberList");
		mv.addObject("memberList", memberService.showAllMember());
		return mv;
	}
	
	@RequestMapping(value="/delete" , method =RequestMethod.GET)
	public ModelAndView delete() throws Exception{
		
		ModelAndView mv= new ModelAndView();
		mv.setViewName("join/delete");
		
		return mv;
	}
	
	@RequestMapping(value="/delete" , method=RequestMethod.POST)
	public @ResponseBody String delete(MemberDto memberDto , HttpServletRequest request) throws Exception {
		
		String htmlBody = "";
		
		if (memberService.deleteMember(memberDto)) {
			HttpSession session = request.getSession();
			session.invalidate();
			htmlBody += "<script>";
			htmlBody += "alert('Your account has been deleted successfully!');";
			htmlBody += "location.href='"+ request.getContextPath()+"/main'";
			htmlBody += "</script>";
		} 
		else {
			htmlBody += "<script>";
			htmlBody += "alert('Check your Id or Password');";
			htmlBody += "location.href='"+ request.getContextPath()+"/delete'";
			htmlBody += "</script>";
		}
		
		return htmlBody;
		
	}
	
	@RequestMapping(value="/update" , method =RequestMethod.GET)
	public ModelAndView update() throws Exception{
		
		ModelAndView mv= new ModelAndView();
		mv.setViewName("join/update");
		
		return mv;
	}
	
	@RequestMapping(value="/update" , method =RequestMethod.POST)
	public @ResponseBody String update(MemberDto memberDto , HttpServletRequest request) throws Exception{
		
		
		HttpSession session =request.getSession();
		session.setAttribute("loginUser", memberDto.getMemberId());
		session.setAttribute("loginUser" , true);			
		session.setAttribute("memberInfo" , memberDto.getMemberId());
		
		
		
		System.out.println(memberDto);
		String htmlBody = "";
		
		if(memberService.updateMember(memberDto)) {
				htmlBody = "<script>";
				htmlBody += "alert('success update!');";
				htmlBody += "location.href='"+ request.getContextPath()+"/main1'";
				htmlBody += "</script>";
			} 
			else {
				htmlBody = "<script>";
				htmlBody += "alert('fail update!');";
				htmlBody += "location.href='"+ request.getContextPath()+"/update'";
				htmlBody += "</script>";
		}
			return htmlBody;
	}
	
	@RequestMapping(value="/logout" , method = RequestMethod.GET)
	public @ResponseBody String  logout(HttpServletRequest request) throws Exception {
		
			String htmlBody = "";
		
			HttpSession session = request.getSession();
			session.invalidate();
			htmlBody += "<script>";
			htmlBody += "alert('log out seccess');";
			htmlBody += "location.href='"+ request.getContextPath()+"/main'";
			htmlBody += "</script>";
		
			return htmlBody;
	}
	
		
	
		
}

		

				