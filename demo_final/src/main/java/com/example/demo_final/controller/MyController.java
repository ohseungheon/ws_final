package com.example.demo_final.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo_final.dao.IUserDao;
import com.example.demo_final.dto.UserDto;

@Controller
public class MyController {
	@Autowired
	IUserDao dao;
	
	@RequestMapping("/")
	public String root() {
		return "main";
	}

	@RequestMapping("/list")
	public String getList(Model model) {
		model.addAttribute("list", dao.getUserInfoList());
		return "list";
	}
	
	@RequestMapping("/writeForm")
	public String writeForm() {
		return "writeForm";
	}
	
	@RequestMapping("/write")
	public String write(UserDto dto) {
		dao.saveUserInfo(dto);
		return "redirect:list";
	}
	
	@RequestMapping("/detail")
	public String detail(@RequestParam("uno") String uno, Model model) {
		model.addAttribute("dto", dao.getUserInfo(uno));
		return "detail";
	}
	
	@RequestMapping("/delete")
	public String delete(@RequestParam("uno") String uno) {
		dao.deleteUserInfo(uno); 
		return "redirect:list";
	}
}
