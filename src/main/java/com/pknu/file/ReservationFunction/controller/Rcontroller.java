package com.pknu.file.ReservationFunction.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Rcontroller {
	@RequestMapping(value="/ReservationPage")
	public String ReservationPage(HttpSession session,Model model) {
		String UserId=(String)session.getAttribute("UserId");
		model.addAttribute("UserId",UserId);
		return "Reservation/ReservationPage";
	}
}
