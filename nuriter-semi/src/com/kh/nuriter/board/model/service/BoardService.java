package com.kh.nuriter.board.model.service;

import java.sql.Connection;

import com.kh.nuriter.board.model.dao.BoardDao;

import static com.kh.nuriter.common.JDBCTemplate.*;

public class BoardService {

	public int ReportInsert(String rtitle, String rcontent) {
		int result = 0;
		Connection con = getConnection();
		
		result = new BoardDao().ReportInsert(con,rtitle, rcontent);
		
		if(result > 0){
			commit(con);
			
		}else{
			rollback(con);
			
		}
		
		return result;
	}

}
