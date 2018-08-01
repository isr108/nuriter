package com.kh.w6.member.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.kh.w6.member.controller.LoginServlet;
import com.kh.w6.member.model.vo.Member;
import static com.kh.w6.common.JDBCTemplate.*;

public class MemberDao {
	private Properties prop = new Properties();
	
	public MemberDao(){
		String fileName = MemberDao.class.getResource("/sql/member/member-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
			
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public int checkStatus(Connection con, Member member) {
		PreparedStatement pstmt = null;
		int result = 99;
		
		ResultSet rset = null;

		String query = prop.getProperty("checkStatus");
		System.out.println(query);
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, member.getUserId());
			
			rset = pstmt.executeQuery();
			
			String userId = "";
			String password = "";
			
			if(rset.next()){
				userId = rset.getString("USER_ID");
				password = rset.getString("USER_PWD");
			}
			
			if(member.getUserId().equals(userId) 
					&& member.getPassword().equals(password)){
				result = LoginServlet.LOGIN_OK;
			}else if(member.getUserId().equals(userId) 
					&& !member.getPassword().equals(password)){
				result = LoginServlet.WRONG_PASSWORD;
			}else{
				result = LoginServlet.ID_NOT_EXIST;
			}
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(rset);
			close(pstmt);
		}
		
		
		return result;
	}

	public Member selectOne(Connection con, Member member) {
		Member loginUser = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = prop.getProperty("selectOne");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, member.getUserId());
			pstmt.setString(2, member.getPassword());
			
			rset = pstmt.executeQuery();
			
			if(rset.next()){
				loginUser = new Member();
				
				loginUser.setUserId(rset.getString("user_id"));
				loginUser.setPassword(rset.getString("user_pwd"));
				loginUser.setUserName(rset.getString("user_name"));
				loginUser.setGender(rset.getString("gender"));
				loginUser.setAge(rset.getInt("age"));
				loginUser.setEmail(rset.getString("email"));
				loginUser.setPhone(rset.getString("phone"));
				loginUser.setAddress(rset.getString("address"));
				loginUser.setHobby(rset.getString("hobby"));
				loginUser.setEnrollDate(rset.getDate("enroll_date"));
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(pstmt);
			close(rset);
			
		}
		
		
		
		
		
		return loginUser;
	}

}













