<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
.colorgraph {
	width: 98%;
	height: 3px;
	border-top: 0;
	background: rgb(241, 196, 15);
	border-radius: 3px;
}


#showLeft {
	/*  border-style: solid; */
	/* border-color: red; */
	float: left;
	width: 10%;
	/*  height:15%; */
	font-size: 20px;
	display: inline-block;
}

ul.navi2 li a {
	float: center;
	font-size: 15px;
	line-height: 10px;
	color: #000000;
	text-decoration: none;
	/* margin: auto;  */
	/* padding: 0 30px; */
	-moz-border-radius-topright: 10px;
	-webkit-border-top-right-radius: 10px;
	-moz-border-radius-topleft: 10px;
	-webkit-border-top-left-radius: 10px;
}
.showRight{
	float:right;
	height: 500px;
	width: 80%;
	margin-right: 30px;
	border:3px solid black;
}
#web-font {
	font-family: 'Jua', sans-serif;
}

.bTable{
margin-top:30px;
margin-left:30px;

}
.tHead{
margin-top:50px;
}
#bButton{
 background:rgb(241, 196, 15);
 height:50px;
 width:80px;
/*  margin-left:30px; */
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
		<div id="showLeft">
			<ul class="navi2" style="list-style-type: none">
				<hr class="colorgraph">
				<!-- 기능 -->
				<li id="web-font"><a href="#">1:1문의하기</a></li>
				<hr class="colorgraph">
				<li id="web-font"><a href="#">자주묻는질문</a></li>
				<li id="web-font"><a href="#">1:1 문의하기</a></li>
			</ul>
		</div>
		<div class="showRight" id="web-font">
			<table class="bTable">
				<tr height="10px"></tr>
				<tr class="tHead">
					<td>제목</td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr height="10px"></tr>
				<tr class="tHead">
					<td>내용</td>
					<td><textarea rows="15" cols="100"></textarea></td>
				</tr>
				<tr height="10px"></tr>
				<tr>
					<td></td>
				<!-- <td><input type="text" style="height:50px; width:650px;"></td> -->
					<td><textarea rows="5" cols="80"></textarea></td>
					<td><button id="bButton">게시글 작성</button></td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>