package com.kh.nuriter.member.model.dao;

import static com.kh.nuriter.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.kh.nuriter.member.model.vo.Member;

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

	public Member loginCheck(Connection con, String userEmail, String password) {
		Member loginUser = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = prop.getProperty("loginCheck");
		System.out.println(query);
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, userEmail);
			pstmt.setString(2, password);
			
			System.out.println(pstmt);
			rset = pstmt.executeQuery();
			
			if(rset.next()){
				loginUser = new Member();
				
				/*loginUser.setUserNumber(rset.getString("user_number"));*/
				loginUser.setUserEmail(rset.getString("user_email"));
				loginUser.setPassword(rset.getString("user_pwd"));
				loginUser.setUserName(rset.getString("user_name"));
				loginUser.setNickName(rset.getString("nickname"));
				loginUser.setAddress(rset.getString("address"));
				loginUser.setPhone(rset.getString("phone"));
				loginUser.setHobby(rset.getString("hobby"));
				loginUser.setBirthDate(rset.getDate("birth_date"));
				loginUser.setEnrollDate(rset.getDate("enroll_date"));
				loginUser.setGrade(rset.getString("grade"));
				loginUser.setGradeDate(rset.getDate("grade_date"));
				loginUser.setBankName(rset.getString("bank_name"));
				loginUser.setBankNumber(rset.getString("bank_number"));
				loginUser.setAccountSort(rset.getString("account_sort"));
				loginUser.setToken(rset.getString("token"));
				loginUser.setReportedUser(rset.getString("reported_user"));
				loginUser.setActivated(rset.getString("activated"));
				loginUser.setActivatedDate(rset.getDate("activated_date"));
				
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
			pstmt.setString(1, m.getUserEmail());
			pstmt.setString(2, m.getPassword());
			pstmt.setString(3, m.getUserName());
			pstmt.setString(4, m.getNickName());
			pstmt.setString(5, m.getAddress());
			pstmt.setString(6, m.getPhone());
			pstmt.setString(7, m.getHobby());
			pstmt.setDate(8, m.getBirthDate());
			pstmt.setString(9, m.getBankName());
			pstmt.setString(10, m.getBankNumber());
			
			
			result = pstmt.executeUpdate();
		
		
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			close(pstmt);
		}
		
		
		return result;
	}

	public int idCheck(Connection con, String userEmail) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("idCheck");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, userEmail);
			
			result = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			close(pstmt);
			
			
		}
		return result;
	}

	/*public int deleteMember(Connection con, String userId) {
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
			pstmt.setString(9, m.getUserEail());
			
			
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
			pstmt.setString(1, m.getUserEail());
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

	public ArrayList<Member> selectAll(Connection con) {
		ArrayList<Member> list = null;
		Statement stmt = null;
		ResultSet rset = null;
		
		String query = prop.getProperty("selectAll");
		
		try {
			stmt = con.createStatement();
			
			rset = stmt.executeQuery(query);
			
			list = new ArrayList<Member>();
			
			while(rset.next()){
				Member m = new Member();
				m.setUserId(rset.getString("user_id"));
				m.setPassword(rset.getString("user_pwd"));
				m.setUserName(rset.getString("user_name"));
				m.setGender(rset.getString("gender"));
				m.setAge(rset.getInt("age"));
				m.setEmail(rset.getString("email"));
				m.setPhone(rset.getString("phone"));
				m.setAddress(rset.getString("address"));
				m.setHobby(rset.getString("hobby"));
				m.setEnrollDate(rset.getDate("enroll_date"));
				
			
				list.add(m);
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(stmt);
			close(rset);
		}
		
	
		return list;
	}

	public ArrayList<Member> searchId(Connection con, String userId){
		ArrayList<Member> list = null;
		Statement stmt = null;
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = prop.getProperty("searchId");
		System.out.println(query);
		
		try {
			pstmt = con.prepareStatement(query);
			
			pstmt.setString(1, userId);
			
			rset = pstmt.executeQuery();
			
			
			if(rset != null){
				list = new ArrayList<Member>();
				
				while(rset.next()){
					Member m = new Member();
					
					m.setUserId(rset.getString("user_id"));
					m.setPassword(rset.getString("user_pwd"));
					m.setUserName(rset.getString("user_name"));
					m.setGender(rset.getString("gender"));
					m.setAge(rset.getInt("age"));
					m.setEmail(rset.getString("email"));
					m.setPhone(rset.getString("phone"));
					m.setAddress(rset.getString("address"));
					m.setHobby(rset.getString("hobby"));
					m.setEnrollDate(rset.getDate("enroll_date"));

					list.add(m);
				}
				System.out.println(list);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			close(pstmt);
			close(rset);
		}
		
		
		return list;
	}*/
}










