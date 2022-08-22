package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dto.MemberDto;
import com.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	MemberService service;

	@RequestMapping(value = "/addMember")
	public String addMember(MemberDto dto, Model model) {
		System.out.println(".addMember() =============== ");
		service.addMember(dto);
		model.addAttribute("success", "회원가입 완료됐습니다. 로그인해주세요.");
		return "main";
	}
}
