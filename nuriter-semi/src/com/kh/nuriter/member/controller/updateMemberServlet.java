package com.kh.nuriter.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.nuriter.member.model.service.MemberService;
import com.kh.nuriter.member.model.vo.Member;

/**
 * Servlet implementation class updateMemberServlet
 */
@WebServlet("/updateMember.me")
public class updateMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateMemberServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//인코딩
				request.setCharacterEncoding("UTF-8");
				response.setContentType("text/html; charset=UTF-8");
				
				//request 객체에서 파라메터 꺼내기
				String userEmail = request.getParameter("userEmail");
				String password = request.getParameter("password");
				String nickName = request.getParameter("nickName");
				String phone = request.getParameter("phone");
				String address = request.getParameter("address");
				String[] hobby = request.getParameterValues("hobby");
				String hobbys = "";
				for (int i = 0; i < hobby.length; i++) {
					if(i == 0) {
						hobbys += hobby[i];
					}else {
						hobbys += ", " + hobby[i];
					}
				}
						
				//member객체 생성
				Member m = new Member();
				m.setPassword(password);
				m.setNickName(nickName);
				m.setPhone(phone);
				m.setAddress(address);
				m.setHobby(hobbys);
				
				System.out.println(m);
				
				//service로직으로 전달
				int result = new MemberService().updateMember(m);
				
				//처리 결과에 따른 뷰 페이지 결정
				String page = "";
				
				if(result > 0) {
					HttpSession session = request.getSession();
					session.setAttribute("loginUser", m);
					response.sendRedirect("index.jsp");
				}else {
					page = "views/common/errorPage.jsp";
					request.setAttribute("msg", "회원 정보 수정에 실패하였습니다!!");
					//뷰 페이지로 전달
					RequestDispatcher view = request.getRequestDispatcher(page);
					view.forward(request, response);
					
				}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}