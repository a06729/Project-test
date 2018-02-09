package com.pknu.file.PayFunction.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PayController {
	@RequestMapping(value="/OMPage")
	public String OMPage(HttpSession session,Model model) {
		
		UserSession(session, model);
		
		return "PaymentManage/OM";
	}
	
	@RequestMapping(value="/CancelPage")
	public String CancelPage(HttpSession session,Model model) {
		
		UserSession(session, model);
		
		return "PaymentManage/CancelHistory";
	}
	
	@RequestMapping(value="/JeongsanPage")
	public String JeongsanPage(HttpSession session,Model model) {
		
		UserSession(session, model);
		
		return "PaymentManage/JeongsanHistory";
	}
	
	public void UserSession(HttpSession session,Model model) {
		String UserId=(String)session.getAttribute("UserId");
		model.addAttribute("UserId",UserId); 
	}
	
}
