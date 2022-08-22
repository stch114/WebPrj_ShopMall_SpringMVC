package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.MemberDao;
import com.dto.MemberDto;

@Service
public class MemberService {

	@Autowired
	MemberDao dao;

	public void addMember(MemberDto dto) {
		System.out.println("MemberService.addMember() ================ dao: " + dao);
		dao.addMember(dto);
	}

}
