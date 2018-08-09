<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

  <link href="https://fonts.googleapis.com/css?family=Jua" rel="stylesheet">
<title>Insert title here</title>
<style>
#allBox {
   		margin-top:20px;
   		border:1px solid white;
   		height:100px;
   }

 #head {
   display:inline-block;
   top: 13px;
   left: 200px;
   width: 172px;
   height: 48px;
   font-weight: bold;
   font-size: 32px;
   color: rgb(241, 196, 15);
}

#web-font {
   font-family: 'Jua', sans-serif;
}

#searchBox {
   top: 17.5px;
   left: 204px;
   width: 544px;
   height: 40px;
   color: rgb(94, 94, 94);
   border-width: 3px;
   border-style: solid;
   border-color: rgb(241, 196, 15);
}

#searchBtn {
   top: 17.3359px;
   left: 768.75px;
   width: 100px;
   height: 41px;
   font-size: 16px;
   color: rgb(64, 64, 64);
   text-align: center;
   line-height: 2.5em;
   border-radius: 4px;
   background-color: rgb(241, 196, 15);
}


#login {
   margin-left: 70px;
   width: 100px;
   height: 40px;
   font-size: 16px;
   color: rgb(64, 64, 64);
   text-align: center;
   line-height: 2.5em;
   border-top-left-radius: 4px;
   border-top-right-radius: 4px;
   border-bottom-right-radius: 4px;
   border-bottom-left-radius: 4px;
   background-color: rgb(224, 224, 224);
}

#register {
   width: 100px;
   height: 42px;
   font-size: 16px;
   color: rgb(255, 255, 255);
   text-align: center;
   line-height: 2.5em;
   border-top-left-radius: 4px;
   border-top-right-radius: 4px;
   border-bottom-right-radius: 4px;
   border-bottom-left-radius: 4px;
   background-color: rgb(52, 152, 219);
}

/* .listBox{
    margin-right: 500px;
	left: 200px;
	border:1px solid blue;
    font-size: 19px;
    width:500px;
    height:40px;
} */
</style>
</head>
<body>
<div id="allBox" align="center">
   	  <h1 id="head"><font id="web-font">누리터</font></h1>
      <input type="text" id="searchBox" placeholder="내용을 입력해주세요">
      <input type="button" id="searchBtn" value="검색">
      <input type="button" id="login" value="로그인">
      <input type="button" id="register" value="회원가입">
   	<!-- <div class="listBox">
      <button type="button" class="btn btn-link">언어</button>
      <button type="button" class="btn btn-link">공방</button>
      <button type="button" class="btn btn-link">요리</button>
      <button type="button" class="btn btn-link">운동</button>
      <button type="button" class="btn btn-link">음악</button>
      <button type="button" class="btn btn-link">컴퓨터</button>
      <button type="button" class="btn btn-link">문화</button>
      <button type="button" class="btn btn-link">기타</button>
   	</div> -->
   	<hr id="hr1">
   	
   </div>
</body>
</html>