<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.nuriter.notice.model.vo.*"%>
<% Notice n = (Notice)request.getAttribute("n");  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	.outer{
		width:800px;
		height:500px;
		border:1px solid blue;
		background:white;
		color:black;
		margin-left:auto;
		margin-right:auto;
		margin-top:50px;
	}
	table {
		border:1px solid red;
	}
	.tableArea {
		width:450px;
		height:350px;
		margin-left:auto;
		margin-right:auto;
	}
</style>
</head>
<body>
<%@ include file="../common/logoAndLogbutton.jsp" %>
<div class="outer">
		<br>
		<h2 align="center">공지 사항 내용</h2>
		<div class="tableArea">
			<table>
				<tr>
					<td>제목</td>
					<td colspan="3">
						<input type="text" size="50" 
						name="title" value="<%=n.getbTitle()%>" readonly>
					</td>
				</tr>
				<tr>
					<td>작성자</td>
					<td>
						<input type="text" 
						value="<%= n.getUserNumber() %>" name="writer" readonly>
					</td>
					<td>작성일</td>
					<td>
						<input type="date" name="date" 
						value="<%= n.getbDate() %>" readonly>
					</td>
				</tr>
				<tr>
					<td>내용</td>
				</tr>
				<tr>
					<td colspan="4">
						<textarea name="content" 
						cols="60" rows="15" 
						style="resize:none" readonly><%= n.getbContent() %></textarea>
					</td>
				</tr>
				
			</table>
			<br>
			<div align="center">
				<button onclick="location.href='<%=request.getContextPath() %>/selectList.no'">메뉴로 돌아가기</button>
				<% if(loginUser != null 
					&& loginUser.getUserEmail().equals("admin")){ %>
					<button onclick="location.href='<%=request.getContextPath()%>/selectNotice.no?num=<%=n.getbNumber()%>'">수정하기</button>
				<% } %>
			</div>
			
		</div>
	</div>
</body>
</html>