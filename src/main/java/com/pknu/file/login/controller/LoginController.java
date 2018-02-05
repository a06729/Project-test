package com.pknu.file.login.controller;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.pknu.file.login.service.LoginService;

@Controller
public class LoginController {
	@Autowired
	LoginService service;
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "home";
	}
	
	@RequestMapping(value="/login",method = RequestMethod.POST)
	public String login(@RequestParam("UserId")String UserId,
						@RequestParam("UserPassword")String UserPassword,
						HttpServletRequest req,Model model) {
		
		return service.login(UserId,UserPassword,req,model);
	}
	@RequestMapping(value="/logOut")
	public String logOut(HttpSession session) {
		return service.logOut(session);
	}
}
