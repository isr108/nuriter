package com.kh.nuriter.board.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Properties;


import com.kh.nuriter.common.JDBCTemplate.*;


public class BoardDao {
	private Properties prop = new Properties();

	public BoardDao(){
		String fileName = BoardDao.class.getResource("/sql/board/board-query.properties").getPath();

		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {


			e.printStackTrace();
		}

	}




	public int ReportInsert(Connection con, String rtitle, String rcontent) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String query = prop.getProperty("ReportInsert");
		

		return result;
	}

}
