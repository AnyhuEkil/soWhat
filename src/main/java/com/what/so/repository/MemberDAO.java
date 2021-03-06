package com.what.so.repository;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Repository;

import com.what.so.vo.Member;

@Repository
public interface MemberDAO {
	
	public Member signUpCheck(Member vo);
	
	public void signUpProc(Member ins);
	
	public void signOut(HttpSession session);

}
