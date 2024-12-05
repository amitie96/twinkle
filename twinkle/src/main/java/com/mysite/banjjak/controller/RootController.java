package com.mysite.banjjak.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.mysite.banjjak.model.User;
import com.mysite.banjjak.service.UserService;

@Controller
public class RootController {

	@Autowired
	private UserService userService;

	@GetMapping("/")
	String index() {
		return "main";
	}

	@GetMapping("/hello")
	String index(@SessionAttribute("userInfo") User user) {
		return "main";
	}

	@GetMapping("/login")
	public String login() {
		return "user/login";
	}

	
	@PostMapping("/login")
	public String login(User userInfo, HttpSession session) {
	    if (userService.login(userInfo)) {
	        // 로그인 성공 시 세션에 사용자 정보를 저장
	        session.setAttribute("userInfo", userInfo);

	        return "redirect:/"; // 메인 페이지로 이동
	    } else {
	        // 로그인 실패 시 로그인 페이지로 리다이렉트
	        return "redirect:/login?error=true";
	    }
	}

	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
}
