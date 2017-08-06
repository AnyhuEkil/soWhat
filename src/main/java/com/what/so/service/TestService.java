package com.what.so.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.what.so.repository.TestDAO;
import com.what.so.vo.Member;

public class TestService {
	@Autowired(required = false)
	private TestDAO dao;

	public List<Member> testMember(Member mem) {
		return dao.testMember(mem);
	}
}
