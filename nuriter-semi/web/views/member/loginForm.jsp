<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css?family=Jua" rel="stylesheet">
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
   
   #head{
      margin-left:3%;
      margin-top:1%;
      color: rgb(241, 196, 15);
      font-size:2em;
      text-decoration: none;
      /* padding:8px; */
      /* width:80%; */
   }
   
   #iBox{
      display: inline-block;
      margin-top: 5px;
      /* margin-left: 30px; */
      width:100%;
      height:50%;
      /*  height: 40px; */
   }
   
   
  #form1{
   /* border-style: solid;
    border-color: red; */
  	width:300px;
  	height:150px;
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
  	height:100%;
  }
  #login2{
 	display:inline-block;
  	/* border-style: solid; 
    border-color: red;  */
  	width:30%;
  	height:100%;
  }
  #login3{
 	display:inline-block;
   /*  border-style: solid; 
    border-color: red;  */
  	height:15%;
  	float:right;
  }  
</style>

</head>
<body>
	<div id="iBox">
        <font id="web-font"><a id="head" href='/views/member/main.html'>누리터</a></font> 
   </div> 
   
   <br><br><br><br>
	
	<div id="login1" align="center">
		<div id="login2">
			<div align="center"><font id="web-font"><a>로그인</a></font></div>
    		<form id = "form1" action="<%=request.getContextPath()%>/login" method="post">
			 <table>
			  <tr>
				<td><input id="web-font" type="text" name="userId"
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
	
		</form>
	
			<br>
		<form id="form2">
		<table>
			<span><label><a href=""><font id="web-font">아이디/비밀번호 찾기</font></a></label></span>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			
			<font id="web-font"><span><a href="../view/join.html">무료 회원가입</a></span></font>
			<br>
			<br>

			<button type="submit" style="width: 290px; height: 30px;"><font id="web-font">네이버로
				시작하기</font></button>
			<br>
			<br>
			<button type="submit" style="width: 290px; height: 30px;"><font id="web-font">카카오톡으로
				시작하기</font></button>
		</table>
	 </form>
	 </div>
	
	</div>
</body>
</html> --%>