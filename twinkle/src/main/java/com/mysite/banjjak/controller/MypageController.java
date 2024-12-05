package com.mysite.banjjak.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.mysite.banjjak.model.Crochet;
import com.mysite.banjjak.model.Knitting;
import com.mysite.banjjak.model.User;
import com.mysite.banjjak.service.CrochetService;
import com.mysite.banjjak.service.KnittingService;
import com.mysite.banjjak.service.UserService;

@Controller
@RequestMapping("/mypage")
public class MypageController {

    @Autowired
    private UserService userService;  
    
    @Autowired
    private CrochetService crochetService;
    
    @Autowired
    private KnittingService knittingService;
    
    @ResponseBody
    @GetMapping("/list/crochet/{page}")
    public List<Crochet> listCro(@SessionAttribute("userInfo") User user, @PathVariable int page) {
    	return crochetService.myCroList(user);
    }
    
    @ResponseBody
    @GetMapping("/list/knitting/{page}")
    public List<Knitting> listKinit(@SessionAttribute("userInfo") User user, @PathVariable int page) {
    	return knittingService.myKnitList(user);
    }

	
	 @GetMapping("/list") 
	 public String join(@SessionAttribute("userInfo") User user, Model model) {
		 List<Crochet> myCroList = crochetService.myCroList(user);
		 model.addAttribute("myCroList",myCroList);
		 
		 List<Knitting> myKnitList = knittingService.myKnitList(user);
		 model.addAttribute("myKnitList",myKnitList);
		 
		 return "mypage/list"; 
	 }
	 
		
	 @PostMapping("/list") 
	 public String updateUserInfo(User userInfo, Model model) {
	 
		 userService.updateUserInfo(userInfo);
		 
		 model.addAttribute("userInfo", userInfo);
		 
		 return "mypage/list"; 
	 }
	 
}
