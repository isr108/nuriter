package com.kh.nuriter.member.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.kh.nuriter.member.model.vo.Member;
import com.kh.nuriter.member.model.dao.MemberDao;


import static com.kh.nuriter.common.JDBCTemplate.*;

public class MemberDao {
	private Properties prop = new Properties();
	
	public MemberDao(){
		String fileName = MemberDao.class.getResource("/sql/member/member-query.properties").getPath();
		
		//System.out.println(fileName);
		
		try {
			prop.load(new FileReader(fileName));
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}

	public Member loginCheck(Connection con, String userId, String password) {
		Member loginUser = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = prop.getProperty("loginCheck");
		System.out.println(query);
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, userId);
			pstmt.setString(2, password);
			
			System.out.println(pstmt);
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
		}finally {
			close(rset);
			close(pstmt);
			
		}
		
		
		return loginUser;
	}

	public int insertMember(Connection con, Member m) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertMember");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, m.getUserId());
			pstmt.setString(2, m.getPassword());
			pstmt.setString(3, m.getUserName());
			pstmt.setString(4, m.getGender());
			pstmt.setInt(5, m.getAge());
			pstmt.setString(6, m.getEmail());
			pstmt.setString(7, m.getPhone());
			pstmt.setString(8, m.getAddress());
			pstmt.setString(9, m.getHobby());
			
			result = pstmt.executeUpdate();
		
		
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			close(pstmt);
		}
		
		
		
		
		return result;
	}

	public int deleteMember(Connection con, String userId) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("deleteMember");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, userId);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			close(pstmt);
			
		}
		
		return result;
	}

	public int updateMember(Connection con, Member m) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("updateMember");
		System.out.println(query);
		
		try {
			pstmt = con.prepareStatement(query);
			
			pstmt.setString(1, m.getPassword());
			pstmt.setString(2, m.getUserName());
			pstmt.setString(3, m.getGender());
			pstmt.setInt(4, m.getAge());
			pstmt.setString(5, m.getEmail());
			pstmt.setString(6, m.getPhone());
			pstmt.setString(7, m.getAddress());
			pstmt.setString(8, m.getHobby());
			pstmt.setString(9, m.getUserId());
			
			
			result = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}

	public int deleteMember(Connection con, Member m) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("deleteMember");
		System.out.println(query);
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, m.getUserId());
			pstmt.setString(2, m.getPassword());
			
			result = pstmt.executeUpdate();
			
			System.out.println(result);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}
}










