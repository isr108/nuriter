<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#main {
		margin-top:190px;
		margin-left:220px;
		margin-right:auto;
		overflow:hidden;
		/* border-style: solid;
    	border-color: black; */
	}
	#child {
		width:900px;
    	overflow:hidden;
    	/* border-style: solid;
    	border-color: coral; */
	}
	#child2 {
		 width:800px;
    	 margin-left:auto;
		 margin-right:auto;
		 overflow:hidden;
		 /* border-style: solid;
    	 border-color: hotpink; */
	}
	#web-font{
      	font-family: 'Jua', sans-serif;
   	}
   	#submit > button {
   		width:150px;
   	}
   	select {
		display:inline;
		width:100px;
		height:30px;
		border-radius: 5px; /* iOS 둥근모서리 제거 */
		background: rgb(241, 196, 15);
	}
	button{
	     width: 90px;
	     height: 40px;
	     font-weight: 600;
	     border-radius: 4px;
	     background-color: rgb(241, 196, 15); 
	     color: white;
   	}
   
    button:hover {
	     background-color: white; /* Green */
	     color: rgb(241, 196, 15);
	     border: 2px solid rgb(241, 196, 15); /* Green */
   	}
</style>
</head>
<body>
	<div>
		<%@ include file="../common/logoAndLogbutton.jsp" %>
	    <%@ include file="../common/categorybar.jsp" %>
	    <%@ include file="../common/myPage_left.jsp" %>
	</div>
	<form>
		<div id="main" align="center">
			<div id="child">
				<div id="child2" align="left">
					<h1 id="web-font">누리장 신청</h1>
					
					<br><br>
					
					<h3 id="web-font">카테고리</h3>
					<select id="web-font">
					  		<option id="web-font">---</option>
					        <option id="web-font">언어</option>
					        <option id="web-font">공방</option>
					        <option id="web-font">요리</option>
					        <option id="web-font">운동</option>
					        <option id="web-font">음악</option>
					        <option id="web-font">컴퓨터</option>
					        <option id="web-font">문화</option>
					        <option id="web-font">기타</option>
					  </select>
					
					  <br><br>
					
				      <h3 id="web-font">누리장 신청 내용</h3>
					  <div id="summerText">
							<div id="summertextChild">
								<%@ include file="../common/summernote_write.jsp" %>
							</div>
					  </div>
					  
					  <h3 id="web-font">활동 계획서</h3>
					  <button id="button1"><font id="web-font">파일첨부</font></button>
				
					  <div id="fileArea">
					  <input type="file" id="thumbnailImg1">
					  </div>
					  
					  <br><br><br><br>
					  
					  <div id="submit" align="center">
						  <button id="web-font">신청하기</button>
						  &nbsp;&nbsp;&nbsp;&nbsp;
						  &nbsp;&nbsp;&nbsp;&nbsp;
						  <button id="web-font">취소</button>
					  </div>
					  
				</div>
			</div>
		</div>
	</form>
	<script>
    $(function(){
		$("#fileArea").hide();
		
		$("#button1").click(function(){
			$("#thumbnailImg1").click();
		});
    });
    </script>
    <br><br><br><br><br>
    <br><br><br><br><br>
    <br><br><br><br><br>
</body>
</html>