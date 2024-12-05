package com.mysite.banjjak.controller;

import java.io.File;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;

import com.mysite.banjjak.model.Crochet;
import com.mysite.banjjak.model.Knitting;
import com.mysite.banjjak.model.User;
import com.mysite.banjjak.service.CrochetService;
import com.mysite.banjjak.service.UserService;

@Controller
@RequestMapping("/crochet")
public class CrochetController {
	
	@Autowired
	CrochetService crochetService;
	
	@Autowired
	UserService userService;

	@GetMapping("/list")
	public String list(Crochet crochet, Model model) {
		List<Crochet> crochetList = crochetService.findAll(crochet);
		model.addAttribute("crochetList", crochetList);
		
		return "crochet/list";
	}
	
	@GetMapping("/write")
	public String write(@SessionAttribute("userInfo") User user, Model model) {    	
		return "crochet/write";
	}
	
	@PostMapping("/write")
	public String add(@SessionAttribute("userInfo") User user, Crochet crochet, MultipartFile uploadFile) {
		
		crochet.setUserId(user.getUserId());
		
		if(!uploadFile.isEmpty()) {
			String croFilename = uploadFile.getOriginalFilename();
			String croUuid = UUID.randomUUID().toString();
			
			try {
				uploadFile.transferTo(new File("d:/upload/crochet/" + croUuid + "_"  + croFilename));
				
				crochet.setCroFilename(croFilename); 
				crochet.setCroUuid(croUuid);
			} catch (Exception e) {
				return "redirect:/crochet/write";
			}
		}
		
		crochetService.add(crochet);
		
		return "redirect:/crochet/list";
	}
	
	@GetMapping("/detail")
	public String detail(@RequestParam("croId") int croId, Model model) {
		
		Crochet crochet = crochetService.findById(croId);
		
		if(crochet == null) {
	    	return "redirect:/crochet/list";
	    }
	    
		model.addAttribute("crochet", crochet);
		
		
		return "crochet/detail";
	}
	
	@GetMapping("/edit")
	public String edit(@SessionAttribute("userInfo") User user, @RequestParam("croId") int croId, Model model, Crochet crochet) {
		Crochet edit = crochetService.findById(croId);
		model.addAttribute("crochet", edit);
		
		return "crochet/edit";
	}
	
	@PostMapping("/edit")
	public String update(@SessionAttribute("userInfo") User user, @RequestParam("croId") int croId, Crochet crochet, MultipartFile uploadFile, Model model) {
		Crochet edit = crochetService.findById(croId);
		model.addAttribute("crochet", edit);
		
		if(!uploadFile.isEmpty()) {
			String croFilename = uploadFile.getOriginalFilename();
			String croUuid = UUID.randomUUID().toString();
			
			try {
				uploadFile.transferTo(new File("D:/upload/crochet/" + croUuid + "_" + croFilename));
				crochet.setCroFilename(croFilename);
				crochet.setCroUuid(croUuid);
				
			} catch (Exception e) {
				return "redirect:/crochet/edit/{croId}";
			}
		}
		crochetService.update(crochet);
		
		return "redirect:/mypage/list"; 
	}
	
	@GetMapping("/delete")
	public String delete(@SessionAttribute("userInfo") User user, @RequestParam("croId") int croId, Crochet crochet, MultipartFile uploadFile, Model model) {
		Crochet edit = crochetService.findById(croId); 
		model.addAttribute("crochet", edit);
		
		crochetService.delete(crochet);
		
		return "redirect:/mypage/list";
	}
}
