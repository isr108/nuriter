package controller;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LifeCycleServlet extends HttpServlet{
	private int initCount = 1;
	private int doGetCount = 1;
	private int destroyCount = 1;
	
	public LifeCycleServlet(){}
	
	
	@Override
	public void init(ServletConfig config) throws ServletException{
		System.out.println("init 메소드는 첫 요청시 한 번반 호출 됨 : " + initCount++);
	}
	
	@Override
	public void destroy(){
		System.out.println("destroy메소드는 톰캣 종료시 호출됨 : " + destroyCount++);
	}
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException{
		System.out.println("doGet 메소드는 요청시마다 호출됨" + doGetCount);
	}
	
	@Override
	public void doPost(HttpServletRequest request, 
			HttpServletResponse response)
					throws ServletException{
		doGet(request, response);
	}
	
}