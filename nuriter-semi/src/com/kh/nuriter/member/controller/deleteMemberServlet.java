package com.kh.nuriter.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.nuriter.member.model.service.MemberService;
import com.kh.nuriter.member.model.vo.Member;

/**
 * Servlet implementation class deleteMemberServlet
 */
@WebServlet("/deleteMember")
public class deleteMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleteMemberServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*Member m = (Member)request.getSession().getAttribute("loginUser");
		
		int result = new MemberService().deleteMember(m.getUserId());
		
		String page="";
		
		if(result > 0){
			page = "views/common/successPage.jsp";
			request.setAttribute("msg", "탈퇴 성공!!");
		}else{
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "탈퇴 실패!!");
		
		}
		
		RequestDispatcher view = request.getRequestDispatcher(page);
		view.forward(request, response);*/
		
		/*request.getSession().invalidate();
		
		response.sendRedirect("index.jsp");*/
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
