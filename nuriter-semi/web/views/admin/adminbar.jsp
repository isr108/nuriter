<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	  #main{
   	/* width:170%; */
   /* 	display:inline-block; */
   	min-height:90%: 
   }
   #web-font{
      font-family: 'Jua', sans-serif;
   }
   #showLeft{
     /*  border-style: solid; */
       /* border-color: red; */
       width:10%;
      /*  height:15%; */
       font-size:20px;
        display: inline-block;
   } 
</style>
</head>
<body>
	<div id="main">
 <br><br> <br><br>
   <hr class="colorgraph">
   <div id="showLeft" >
     <ul class="navi2" style="list-style-type:none">
        <li id="web-font"><a style="font-size:1em;" href="#" onclick="selectAll();">회원정보조회</a></li>
        <hr class="colorgraph">
        <li id="web-font"><a style="font-size:1em;" href="#">회원관리</a></li>
        <li id="web-font"><a href="#">신고회원</a></li>
        <li id="web-font"><a href="#">누리장회원</a></li>
        <hr class="colorgraph">
        <li id="web-font"><a style="font-size:1em;" href="#">게시글관리</a></li>
        <li id="web-font"><a href="#">공지사항</a></li>
        <li id="web-font"><a href="#">고객문의관리</a></li>
        <li id="web-font"><a href="#">자주묻는질문</a></li>
        
     </ul>
   	</div>        		
</body>
</html>