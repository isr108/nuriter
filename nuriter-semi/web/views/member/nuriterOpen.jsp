<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.3.3/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.3.3/dist/semantic.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<title>Insert title here</title>
<style>
	#main {
		margin-top:190px;
		margin-left:220px;
		margin-right:auto;
    	overflow:hidden;
	}
	#twoRight {
		background:red;
		display:inline;
		overflow:hidden;
	}
	#twoRight-child {
		margin-top:30px;
		margin-left:70px;
    	overflow:hidden;
	}
	#twoRight-child2 {
		width:800px;
    	overflow:hidden;
	}
	#category {
		display:inline;
	}
	#category > h3{
		display:inline;
	}
	#web-font{
      	font-family: 'Jua', sans-serif;
   	}
   	#submit > button {
   		width:150px;
   	}
   	.text{
   		width: 600px;
	    padding: 12px 20px;
	    margin: 4px 0;
	    box-sizing: border-box;
	    border-style: double;
	    border-color: rgb(241, 196, 15);
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
	select {
		display:inline;
		width:100px;
		height:30px;
		border-radius: 5px; /* iOS 둥근모서리 제거 */
		background: rgb(241, 196, 15);
	}
	input[type=file] {
		font-family: 'Jua', sans-serif;
	}
</style>
</head>
<body>
	<div>
		<%@ include file="../common/logoAndLogbutton.jsp" %>
	    <%@ include file="../common/categorybar.jsp" %>
	    <%@ include file="../common/myPage_left.jsp" %>
	</div>
	<div id="main">
	    	<div id="twoRight" align="center">
	    		<div id="twoRight-child">
		    		<div id="twoRight-child2" align="left">
			    		<h3 id="web-font">카테고리</h3><br>
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
						  <select id="web-font">
						 		<option id="web-font">---</option>
						        <option id="web-font">영어</option>
						        <option id="web-font">중국어</option>
						        <option id="web-font">일본어</option>
						        <option id="web-font">불어</option>
						        <option id="web-font">잉어</option>
						        <option id="web-font">아랍어</option>
						        <option id="web-font">못먹어</option>
						  </select>
						  
					  <h3 id="web-font">누리터명</h3>
					  <input type="text" id="nuriterTitle" class="text">
					  
					  <h3 id="web-font">기간</h3>
					  <input type="text" class="text">
					  
					  <h3 id="web-font">시간</h3>
					  <input type="text" class="text">
					  
					  <h3 id="web-font">장소</h3>
					  <input type="text" class="text">
					  
					  <h3 id="web-font">누리터 내용</h3>
					  <div id="summerText">
						  <div id="summertextChild">
						  <%@ include file="../common/summerText.jsp" %>
						  </div>
					  </div>
					  
					  <div>
						  <h3 id="web-font">사진 파일</h3>
						  <button id="button1"><font id="web-font">사진첨부</font></button>
					
						  <div id="fileArea">
						  <input type="file" id="thumbnailImg1">
						  </div>
					  </div>
					  
					  <br><br><br><br>
					  
					  <div id="submit" align="center">
		           		  <button><font id="web-font" size=3px>개설하기</font></button>
		           		  <button><font id="web-font" size=3px>취소</font></button>
	           		  </div>
	           		  
	        	</div>
        	</div>
	    </div>
    </div>
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