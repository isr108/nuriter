<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
.web-font {
	font-family: 'Jua', sans-serif;
}

.paydiv {
	width: 60%;
	height: 500px;
	margin-right: auto;
	margin-left: auto;
	margin-top: 50px;
	border: 1px solid black;
}
/* .tHead{
 background: rgb(241, 196, 15);
 text-align:center;
 
} */
#paytable{
height:400px;
width:50%;
/* margin-left:300px; */
margin-left:auto;
margin-right:auto;
margin-top:50px;
border:1px solid black;

}
.t{
	background: rgb(241, 196, 15);
	 text-align:center;
	 
}
.tt{
	background: #5882FA;
	 text-align:center;
}
</style>
</head>
<body>
	<%@ include file="../common/logoAndLogbutton.jsp"%>
	<br>
	<br>
	<br>
	<br>
	<br>

	<div class="main">
		<div class="paydiv" id="web-font">
				<table id="paytable">
					<tr class="tHead">
					 <td class="t">누리터 제목</td>
					 <td class="tt">제목</td>
					</tr>
					<tr class="tBody">
						<td class="tt">내용</td>
					</tr>
					<tr class="tBody">
						<td class="t">유저 이메일</td>
						<td class="tt">이메일</td>
						
					</tr>
					<tr class="tBody">
						<td class="t">결제</td>
						<td class="tt">금액</td>
						
					</tr>
				</table>
			</div>
		</div>
	</div>
</body>
</html>