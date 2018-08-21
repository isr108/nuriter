package com.kh.nuriter.notice.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.nuriter.notice.model.dao.NoticeDao;
import com.kh.nuriter.notice.model.vo.Notice;

import static com.kh.nuriter.common.JDBCTemplate.*;

public class NoticeService {

	//공지사항 전체조회
	public ArrayList<Notice> selectList(int currentPage, int limit) {
		Connection con = getConnection();
		ArrayList<Notice> list = new NoticeDao().selectList(con, currentPage, limit);
		
		close(con);
		
		return list;
	}

	public int insertNotice(Notice n) {
		Connection con = getConnection();
		
		int result = new NoticeDao().insertNotice(con, n);
		
		if(result > 0){
			commit(con);
		}else{
			rollback(con);
		}
		
		close(con);
		
		return result;
	}

	public int getListCount() {
		Connection con = getConnection();
		
		int listCount = new NoticeDao().getListCount(con);
		
		close(con);
		
		return listCount;
	}

	public Notice selectOne(String num) {
		
		return null;
	}

}