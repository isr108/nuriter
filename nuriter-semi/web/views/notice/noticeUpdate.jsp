<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.nuriter.notice.model.vo.*"%>
<% Notice n = (Notice)request.getAttribute("n"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	#main{
   	border:1px solid white;
   	min-height:90%:
   }
   
   #web-font{
      font-family: 'Jua', sans-serif;
   } 

	.colorgraph {
      width: 98%;
        height: 3px;
        border-top: 0;
        background: rgb(241, 196, 15);
        border-radius: 3px;
   }


	#showLeft{
       float:left;
       width:10%;
       font-size:20px;
       display: inline-block;
   }
   
   ul.navi2 li a {
      float: center;
      font-size: 15px;
      line-height: 10px;
      color: #000000;
      text-decoration: none;
      -moz-border-radius-topright: 10px;
      -webkit-border-top-right-radius: 10px;
      -moz-border-radius-topleft: 10px;
      -webkit-border-top-left-radius: 10px;
   }
   
   #noticeModify{
   	border:1px solid blue;
   	width:40%;
   	margin-left:auto;
   	margin-right:auto;
   	width: 1080px;
   	min-height: 800px;
   	background:#eaeaea;
   }
   
   #upBox{
   	border:1px solid red;
   	width:100%;
   	height:50px;
   }
   
   #upBox > label {
    font-size:20px;
   	float: left;
   }
   
   #tableArea{
     border:1px solid white;
     width:100%;
     height:480px;
   }
</style>
</head>
<body>
<%@ include file="../common/logoAndLogbutton.jsp" %>
<% if(loginUser != null && loginUser.getUserEmail().equals("admin")){ %>

<div id="main">
  <br><br> <br><br>
	<hr class="colorgraph">
	<div id="showLeft" >
     <ul class="navi2" style="list-style-type:none">
        <hr class="colorgraph">
        <li id="web-font"><a href="#">공지사항</a></li>
        <hr class="colorgraph">
     </ul>
   	</div>
   	<div id="noticeModify" align="center">
   		<div id="upBox" align="center">
   			<label>공지 사항 수정</label>
   		</div>
   		<div class="tableArea">
   			<form id="updateForm" method="post">
			<table>
				<tr>
					<td>제목</td>
					<td colspan="3">
							<input type="text" size="100" 
							name="title" value="<%=n.getbTitle()%>">
					</td>
				</tr>
				<tr>
					<td>작성자</td>
					<td>
						<input type="text" value="<%= n.getUserNumber() %>" name="writer" readonly>
					</td>
					<td>작성일</td>
					<td>
						<input type="date" name="date" value="<%= n.getbDate() %>">
					</td>
				</tr>
				<tr>
					<td>내용</td>
				</tr>
				<tr>
					<td colspan="4">
						<textarea name="content" cols="108" rows="30" style="resize:none"><%= n.getbContent() %></textarea>
					</td>
				</tr>
			</table>
			<br>
				<div align="center">
					<button onclick="complete();">작성완료</button>
					<button onclick="deleteNotice();">삭제하기</button>
				</div>
			<script>
				function complete(){
					<%-- $("#updateForm").attr("action", "<%=request.getContextPath()%>/update.no?num=<%= n.getbNumber() %>"); --%>
					$("#updateForm").click("<%=request.getContextPath()%>/updateNotice.no?num=<%= n.getbNumber()%>");
				}
				
				function deleteNotice(){
					$("#updateForm").attr("action", "<%= request.getContextPath()%>/deleteNotice.no?num=<%= n.getbNumber() %>");
				}
			</script>
		</form>
   		</div>
   	</div>
</div>

<%} else{
	request.setAttribute("msg", "잘못된 경로로 접근하셨습니다");
	request.getRequestDispatcher("../common/errorPage.jsp").forward(request, response);
}%>

<%@ include file="../common/footer.jsp" %>
</body>
</html>