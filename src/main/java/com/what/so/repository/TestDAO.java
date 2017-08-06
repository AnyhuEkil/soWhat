package com.what.so.repository;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.what.so.vo.Member;

@Repository
public interface TestDAO {

	public List<Member> testMember(Member mem);
}
