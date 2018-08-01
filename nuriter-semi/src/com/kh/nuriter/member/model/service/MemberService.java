package com.kh.w6.member.model.service;

import java.sql.Connection;

import static com.kh.w6.common.JDBCTemplate.*;

import com.kh.w6.member.controller.LoginServlet;
import com.kh.w6.member.model.dao.MemberDao;
import com.kh.w6.member.model.vo.Member;


public class MemberService {
	//로그인 처리용 메소드
	public Member loginCheck(Member member) {
		Connection con = getConnection();
		MemberDao mDao = new MemberDao();
		
		int result = mDao.checkStatus(con, member);
		
		Member loginUser = new Member();
		
		if(result == LoginServlet.LOGIN_OK){
			loginUser = mDao.selectOne(con, member);
			loginUser.setStatus(LoginServlet.LOGIN_OK);
		}else{
			if(result == LoginServlet.WRONG_PASSWORD){
				loginUser.setStatus(LoginServlet.WRONG_PASSWORD);
			}else{
				loginUser.setStatus(LoginServlet.ID_NOT_EXIST);
			}
			
		}
		
		
		return loginUser;
	}

}










