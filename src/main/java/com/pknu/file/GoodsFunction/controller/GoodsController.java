package com.pknu.file.GoodsFunction.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GoodsController {
	
	@RequestMapping(value="/GoodsPage")
	public String GoodsPage(HttpSession session,Model model){
		
		String UserId=(String)session.getAttribute("UserId");
		model.addAttribute("UserId",UserId);
		
		return "Goods/GoodsControl";
	}
	
	@RequestMapping(value="/GoodsAddPage")
	public String GoodsAddPage(HttpSession session,Model model) {
		
		String UserId=(String)session.getAttribute("UserId");
		model.addAttribute("UserId",UserId);
		return "Goods/GoodsAdd";
	}
	
	@RequestMapping(value="/KategorieControl")
	public String KategoriePage(HttpSession session,Model model) {
		String UserId=(String)session.getAttribute("UserId");
		model.addAttribute("UserId",UserId);
		return "Goods/KategorieControl";
	}
}
