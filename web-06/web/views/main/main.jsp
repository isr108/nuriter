<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.w6.member.model.vo.Member"%>
<%
	Member loginUser = (Member) session.getAttribute("loginUser");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
</style>
</head>
<body>
	<h1 align="center">Welcome to MVC랜드</h1>
	<div id="userInfo">
		<label><%= loginUser.getUserName() %>님 환영합니다.</label>
		<button>정보수정</button>
		<button id="logout">로그아웃</button>
	</div>
	<script>
		$(function(){
			$("#logout").click(function(){
				location.href="<%=request.getContextPath()%>/logout";
			})
		});
	</script>
</body>
</html>