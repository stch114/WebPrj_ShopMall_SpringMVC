package com.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.MemberDto;

@Repository
public class MemberDao {

	@Autowired
	SqlSessionTemplate template;

	public void addMember(MemberDto dto) {
		System.out.println("MemberDao.addMember() =================== template: " + template);
		int n = template.insert("MemberMapper.addMember", dto);
		System.out.println(n + "개 회원정보 저장");
	}

}
