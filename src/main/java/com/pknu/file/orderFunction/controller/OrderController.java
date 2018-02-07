package com.pknu.file.orderFunction.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pknu.file.orderFunction.service.OrderService;

@Controller
public class OrderController {

	
	@RequestMapping(value="/orderPage")
	public String orderPage(HttpSession session,Model model ) {
		
		String UserId=(String)session.getAttribute("UserId");
		model.addAttribute("UserId",UserId);
		
		return "Order/orderPage";
	}
	
}
