<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/semantic-ui@2.3.3/dist/semantic.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/semantic-ui@2.3.3/dist/semantic.min.js"></script>
<title>Insert title here</title>
<style>
.item {
	margin-top: 50px;
}

/* .menuArea {
	float: left;
	width: 20%;
	height: 500px;
	margin-left: 30px;
	border: 3px solid black;
} */
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

.textArea {
	float: right;
	/* 	border: 3px solid black; */
	height: 500px;
	width: 80%;
	margin-right: 30px;
}

.uiSearch {
	height: 50px;
	width: 500px;
	/* border: 3px solid black; */
	margin-right: auto;
	margin-left: auto;
	margin-top: 50px;
}

.ui.icon.input>input {
	padding-right: 2.67142857em !important;
	border-color: gray;
	height: 30px;
	width: 500px;
}

#nuriList {
	/* position: fixed; */
	width: 734px;
	height: 74px;
	margin-top: 10px;;
	margin-left: auto;
	margin-right:auto;
}

#listTable {
	text-align: center;
	width: 100%;
	max-width: 100%;
	height: 100%;
	border-spacing: 0;
	border-collapse: collapse;
	border: 2px solid #ccc;
	table-layout: fixed;
	font-family: 'Jua', sans-serif;
}

.web-font {
	font-family: 'Jua', sans-serif;
}

.item label a:hover {
	color: #FF4500;
}

.bulletin {
	width: 100%;
	height: 300px;
	margin-left: auto;
	margin-right: auto;
	margin-top: 5%;
}

.tHead {
	background: rgb(241, 196, 15);
	text-align: center;
}

#bulletinTable {
	height: 100px;
	width: 68%;
	/* margin-left:300px; */
	margin-left: auto;
	margin-right: auto;
	margin-top: 5%;
}


.tBody {
	text-align: center;
	border-bottom: 1px solid lightgray;
}

#fnqColor{
	background-color:rgb(224, 224, 224);
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
	<hr style="border: solid 1px lightgray;">
	<div class="mainArea">
		<div class="menuArea">
			<div id="showLeft">
				<ul class="navi2" style="list-style-type: none">
					<hr class="colorgraph">
					<!-- 기능 -->
					<li class="web-font"><a href="FnQ.jsp">고객센터</a></li>
					<hr class="colorgraph">
					<li class="web-font" id=fnqColor><a href="FnQ.jsp">자주묻는질문</a></li>
					<li class="web-font"><a href="QnA.jsp" >1:1 문의하기</a></li>
				</ul>
			</div>
		</div>
		<div class="textArea" class="web-font">
			<h2 align="center" style="margin-top: 30px;">자주묻는질문</h2>

			<div class="uiSearch">
				<div class="ui icon input">
					<input class="prompt" type="text"> <i class="search icon"></i>
				</div>
			</div>
			<div id="nuriList" align="center">
				<form>
					<!-- 기능구현 시 여기에 삽입 action="" method="" -->
					<table id="listTable">
						<tbody>
							<tr>
								<td><br>이용문의<br> 1건<br> <br></td>
								<td><br>결제 및 환불문의<br> 3건<br> <br></td>
								<td><br>계정관련문의<br> 0건<br> <br></td>
								<td><br>버그문의<br> 0건<br> <br></td>
								<td><br>기타문의<br> 2건<br> <br></td>
							</tr>
						</tbody>
					</table>
				</form>
			</div>
			<div class="bulletin" class="web-font">
				<table id="bulletinTable">
					<tr class="tHead">
						<td>NO.</td>
						<td>제목</td>
						<td>이름</td>
					</tr>
					<tr class="tBody">
						<td>1</td>
						<td>내용</td>
						<td>허민지</td>
					</tr>
					<tr class="tBody">
						<td>2</td>
						<td>내용</td>
						<td>채은비</td>
					</tr>
				</table>
			</div>
		</div>
	</div>

</body>
</html>