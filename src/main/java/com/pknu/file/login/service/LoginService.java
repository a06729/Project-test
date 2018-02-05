package com.pknu.file.login.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

public interface LoginService {
	 String login(String UserId,String UserPassword,HttpServletRequest req,Model model);

	 String logOut(HttpSession session);
}
