<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Jua" rel="stylesheet">
  <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

<title>Insert title here</title>
<style>
   input[type="submit"]{
		height:50px;
	}
	
	.colorgraph {
      width: 98%;
        height: 3px;
        border-top: 0;
        background: rgb(241, 196, 15);
        border-radius: 3px;
   }
   #wrapper {
       width:70%;
           /*margin : 0 auto ;*/
   }
    
   #web-font{
      font-family: 'Jua', sans-serif;
   }
   
   /*  #web-font a{
      text-decoration: none;
   } */
   
   #head{
      margin-left:3%;
      margin-top:1%;
      color: rgb(241, 196, 15);
      font-size:3em;
      text-decoration: none;
      /* padding:8px; */
      /* width:80%; */
   }
   
   #iBox{
      display: inline-block;
      margin-top: 5px;
      /* margin-left: 30px; */
      width:100%;
      height:10%;
      /*  height: 40px; */
   }
   
   
  #form1{
   /* border-style: solid;
    border-color: red;  */
  	width:300px;
  	height:200px;
  	padding:0;
  
  }
  #form2{
    /* border-style: solid;
    border-color: red; */
  	width:300px;
  	height:100%;;
  	padding:0;
  	margin-top:0;
  }
  #login1{
  	display:inline-block;
   /*  border-style: solid;
    border-color: red; */
  	width:100%;
  	min-height:90%;
  }
  
  html{
   		height:100%;
   }
   body{
   	 height:70%;
   }
  
  #login2{
 	display:inline-block;
  	 /*border-style: solid;  */
   /*  border-color: red; */
  	width:30%;
  	height:100%;
  }
  #login3{
 	display:inline-block;
    /* border-style: solid;  
    border-color: red;  */
  	height:15%;
  	float:right;
  }
</style>
</head>
<body>
	<div id="iBox">
       <!--  <font id="web-font"><a id="head" href='../../index.jsp'>누리터</a></font>  -->
        <font id="web-font"><a id="head" href="#home" onclick="home()">누리터</a></font> 
   </div> 
   
   <br><br><br><br>
	
	<div id="login1" align="center">
		<div id="login2">
			<div align="center"><font id="web-font"><h2>로그인</h2></font></div>
    		<form id = "form1" action="<%=request.getContextPath()%>/login.me" method="post">
			 <table>
			  <tr>
				<td><input id="web-font" type="text" name="useremail"
					style="width: 290px; height: 30px;" placeholder="이메일"></td>
			 </tr>
			
			  <tr>
				<td><input id="web-font" type="password" name="password"
					style="width: 290px; height: 30px;" placeholder="비밀번호"></td>
			  </tr> 
			</table>
	
		<div id="login3">
			<input type="checkbox" id="automaticLogin" value="automaticLogin">
			<font id="web-font"><label>자동로그인</label></font>
			<br>
			<br>
		 </div>
			<input id ="web-font" type="submit" style="width: 290px; height: 30px;" value="로그인">
	
		<!-- </form> -->
	
			<br>
		<!-- <form id="form2"> -->
		<table>
			<span><label><a href="<%=request.getContextPath()%>/views/member/find_IdPassword.jsp"><font id="web-font">아이디/비밀번호 찾기</font></a></label></span>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			
			<font id="web-font"><span><a href="../member/memberJoinForm.jsp">무료 회원가입</a></span></font>
			<br>
			<br>

			<button type="submit" style="width: 290px; height: 30px;"><font id="web-font">네이버로
				시작하기</font></button> 
			
			
		</table>
	 </form>
	 </div>
	 <br>
	<!-- <button type="button" style="width: 290px; height: 30px;"><font id="web-font">카카오톡으로
				시작하기</font></button> -->
				<a id="kakao-login-btn"></a>
				<a href="http://developers.kakao.com/logout"></a>
				<script type='text/javascript'>
	  					//<![CDATA[
				    // 사용할 앱의 JavaScript 키를 설정해 주세요.
				    Kakao.init('a8004af3cf14f2187ce86e8e3a84b0e4');
				    // 카카오 로그인 버튼을 생성합니다.
				    Kakao.Auth.createLoginButton({
				      container: '#kakao-login-btn',
				      success: function(authObj) {
				    	 Kakao.API.reuest({
				    		  
				    		  url: '/v1/user/me',
				    		  success: function(res){
				    			 
				    		  alert(res.properties.nickname+'님 환영합니다.');
				    		  location.href="./home?name"+res.properties.nickname;
				    			  /* alert(JSON.stringify(authObj));
							        console.log(JSON.stringify(authObj.kaccount_email));
						              console.log(JSON.stringify(authObj.id));

						              console.log(JSON.stringify(authObj.properties.nickname)); */
				    		  },
				    	 	  fail: function(err) {
							         alert(JSON.stringify(err));
				    	 	  }
				    	  });
				        
				      },
				      fail: function(err) {
				         alert(JSON.stringify(err));
				      }
				    });
				  //]]>
				</script>
	</div>
	
	<script>
		
		function home(){
			location.href='<%=request.getContextPath()%>/home';
		}
		
	
	</script> 
	<font id="web-font"><%@ include file="/views/common/footer.jsp" %></font>
</body>
</html>