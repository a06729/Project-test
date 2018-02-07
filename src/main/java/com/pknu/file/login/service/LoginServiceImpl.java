package com.pknu.file.login.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.pknu.file.login.dao.LoginDao;
import com.pknu.file.login.dto.LoginDto;

@Service
public class LoginServiceImpl implements LoginService {
	private int Success=1;
	private int Fail=0;
	
	@Autowired
	LoginDao Dao;
	
	@Override
	public String login(String UserId, String UserPassword, HttpServletRequest req, Model model) {
		System.out.println(UserId);
		HttpSession session=req.getSession();
		LoginDto user;
		user=Dao.getUser(UserId);
		if(user!=null) {
			String Password=user.getPassword();
			if(Password.equals(UserPassword)) {
				session.setAttribute("UserId",UserId);
				model.addAttribute("UserId",UserId);
				System.out.println("로그인성공");
				return "Order/orderPage";
			}else {
				System.out.println("로그인실패");
				model.addAttribute("loginFail",Fail);
				return "home";
			}
		}else {
			System.out.println("존재하지 안는 아이디");
			model.addAttribute("NotMember",Fail);
			return "home";
		}
	}

	@Override
	public String logOut(HttpSession session) {
		session.removeAttribute("UserId");
		session.invalidate();
		return "redirect:/";
	}
	
}
