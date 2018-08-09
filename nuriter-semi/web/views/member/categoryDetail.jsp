<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

  
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>jQuery UI Tabs - Default functionality</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
  <script>
  	$( function() {
    	$( "#tabs" ).tabs();
  	} );
  </script>
  
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
  
<title>Insert title here</title>
<style>

.content{
	border:1px solid red;
	width:60%;
	margin-left:auto;
	margin-right:auto;
}

#listBox{
    margin-right: 500px;
	left: 200px;
	border:1px solid blue;
    font-size: 19px;
    width:500px;
    height:40px;
}

.leftBox{
	/* float:left; */
}

.images{
	padding-top:50px;
    margin-top: 20px;
    margin-right:500px;
}

#tabs{
	width:500px;
	margin-top:20px;
	margin-right:500px;
}

.rightBox {
	float:right;
}

#info {
	border:1px solid black;
	width:450px;
	height:400px;
    margin-bottom: 20px;
}

#likeOrAngry{
	border:1px solid white;
}

/* #likeOrAngry > i{
	border:1px solid blue;
	width:180px;
	height:50px;
} */

button {
	margin-top:10px;
	width:200px;
	height:50px;
}

#aboutHe{
	border:1px solid black;
	width:450px;
	height:400px;
	padding-top:20px;
}

#profile{
	width:100px;
	height:100px;
}

#introduce{
    margin-top: 30px;
}

#introduce > p{
	border:1px solid black;
	width:370px;
	height:200px;
}

</style>
</head>
<body>
	<%@ include file="../common/upLogo.jsp" %>
	<%-- <%@ include file="../common/categorybar.jsp" %> --%>
	
	<div class="content" align="center">
		<!-- <div id="listBox" align="center">
      		<button type="button" class="btn btn-link">언어</button>
      		<button type="button" class="btn btn-link">공방</button>
      		<button type="button" class="btn btn-link">요리</button>
      		<button type="button" class="btn btn-link">운동</button>
      		<button type="button" class="btn btn-link">음악</button>
      		<button type="button" class="btn btn-link">컴퓨터</button>
      		<button type="button" class="btn btn-link">문화</button>
      		<button type="button" class="btn btn-link">기타</button>
   		</div> -->
   <div class="leftBox">
   		<img src="/ns/images/member/category/william.jpg" width="500px" height="400px" class="images"/>
   	 <div class="images">
   	 	<img src="/ns/images/member/category/william1.jpg" width="165px" height="150px"/>
   	 	<img src="/ns/images/member/category/william2.jpg" width="165px" height="150px"/>
   	 	<img src="/ns/images/member/category/william3.jpg" width="165px" height="150px"/>
   	 </div>
   	 
   <div id="tabs">
   	 <ul>
    	<li><a href="#tabs-1">계획</a></li>
    	<li><a href="#tabs-2">가격정보</a></li>
    	<li><a href="#tabs-3">A/S및 환불</a></li>
    	<li><a href="#tabs-4">서비스평가</a></li>
  	 </ul>
  	 <div id="tabs-1">
    	<p>윌리엄은 샘 해밍턴의 아들이며 현재 슈퍼맨이 돌아왔다에 출연중인 깜찍한 아가다.</p>
  	 </div>
  	 <div id="tabs-2">
    	<p>앙하하ㅏ하하ㅏ하하ㅏㅎ아ㅏㅇ하ㅏ앙하ㅏㅇ항</p>
  	 </div>
 	 <div id="tabs-3">
    	<p>하기시리히ㅓ아허ㅣ엏나ㅣㅓ아ㅓ한ㅇㅎ</p>
  	 </div>
  	 <div id="tabs-4">
    	<p>안노오오오오ㅗㅇㅇ</p>
  	 </div>
   </div>

   </div>
   
   <div class="rightBox">
   	매주 일요일마다 같이 축구하실 분 구합니다.
   	
   	<div id="info">
   		<p>가격 : </p>
   		<hr>
   		<p>요일 : </p>
   		<p>시간 : </p>
   		<p>장소 : </p>
   		<div id="likeOrAngry">
	   		<div>
	   			<i class="far fa-grin-hearts fa-5x"></i><br>관심누리터 등록
	   		</div>
	   		<div>
	   			<i class="fas fa-angry fa-5x"></i><br>게시글 신고
	   		</div>
   		</div>
   		<button onclick="apply();">누리터 신청하기</button>
    </div>
    
    <div id = aboutHe>
    	<div id="profile">
    		<i class="fas fa-user-tie fa-5x"></i><br>
    		<label>홍길동</label>
    	</div>
    	<div id="introduce" align="center">
    		<label>누리장 소개</label>
    		<p>안녕하세요 저는...</p>
    		
    	</div>
    </div>
    
   </div>
   	</div>
   	
</body>
</html>