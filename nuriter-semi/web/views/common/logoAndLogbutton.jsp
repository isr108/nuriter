<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.kh.nuriter.member.model.vo.*"%>
<% Member loginUser = (Member)session.getAttribute("loginUser");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Jua" rel="stylesheet">
<title>Insert title here</title>
<style>
 /*    /* .colorgraph {
      width: 98%;
        height: 3px;
        border-top: 0;
        background: gray;
        border-radius: 3px;
   }
   */
   #wrapper {
       width:100%;
           /*margin : 0 auto ;*/
   }
   
   /* #tableDiv{
      width:100%;
      height:100%;
      display: inline-block; */
     /*  border-style: solid; */
       /* border-color: red; */
       
       
  /*  }
   #tableDiv table{
   	  width:20%;
   	  height:20%;
      display: inline-block;
      margin-top:1%;
   */    /* margin: 8px; */
   /*    margin-left:1%;
   }
   #tableDiv table tr{
      align: center;
      border: 2px solid black;
      
   }
   #tableDiv table tr td{
      background: white;
   }
   
   ul.navi li {
      display: inline-block; */
      /* margin:auto;  */
  /*     text-align:center;
   }
   
   ul.navi li a {
      float: center;
      font-size: 20px;
      line-height: 40px;
      color: #000000;
      text-decoration: none;
      margin: auto; 
      padding: 0 30px;
      -moz-border-radius-topright: 10px;
      -webkit-border-top-right-radius: 10px;
      -moz-border-radius-topleft: 10px;
      -webkit-border-top-left-radius: 10px;
   }
   .navi li a:hover {
      color:#FF4500;
   }
   
   ul.navi2 li a {
      float: center;
      font-size: 20px;
      line-height: 40px;
      color: #000000;
      text-decoration: none;
   */     /* margin: auto;  */
      /* padding: 0 30px; */
/*       -moz-border-radius-topright: 10px;
      -webkit-border-top-right-radius: 10px;
      -moz-border-radius-topleft: 10px;
      -webkit-border-top-left-radius: 10px;
   }
   
  	
	.menubar li ul {
background: rgb(109,109,109); */
/* display:none; */  /* 평상시에는 서브메뉴가 안보이게 하기 */
/* height:auto;
padding:0px;
margin:0px;
border:0px;
position:absolute;
width:200px;
z-index:200;
}
	
	.menubar li:hover ul {
display:block; */   /* 마우스 커서 올리면 서브메뉴 보이게 하기 */
/* }
	
   
   #showMain{
 */     /*  border-style: solid; */
       /* border-color: red; */
   /*    display: inline-block;
      width:100%;
      height:100%;
   }
   
   #showLeft{
    */  /*  border-style: solid; */
       /* border-color: red; */
      /*  width:10%;
      /*  height:15%; */
/*        font-size:20px;
        display: inline-block;
   } */
    
  /*  #showRight{ */
     /*  border-style: solid; */
     /*  border-color: red; */
    /*  float:right; */
     /*   margin-left: 10%; */
      /* display: inline-block;
      width: 90%;
      height:100%;
      
      
   }
   
   #showRightButton{
   	  
      margin-left: 8%;
      width:50%;
      height:30%;
   }
   
   #web-font{
      font-family: 'Jua', sans-serif;
   }
   
   #head{
      margin-left:3%;
      margin-top:1%;
      color: rgb(241, 196, 15);
      font-size:2em;
      /* padding:8px; */
      /* width:80%; */
   /* } */
   
   /* #iBox{
      display: inline-block;
      margin-top: 5px; */
      /* margin-left: 30px; */
     /*  width:180%;
      height:50%; */
      /*  height: 40px; */
  /*  } */
   
  /*  #search{
   	  display: inline-block;
      width:50%;
      height:10%;
      margin-left: 220px;
      margin-top: 25px;
      /* margin-top:2%; */
   /* }  */
   
  /*  #searchBox{
    display: inline-block;
       color: rgb(94, 94, 94);
       border-width: 3px;
       border-style: solid;
       border-color: rgb(241, 196, 15);
       width:70%;
       height:40px;
   }
   
   #searchBtn {
     width: 90px;
    height: 40px;
     border-radius: 3px;
    font-weight: 600;
     border-color: transparent;
     font-size: 15px;
    color: white;
    cursor: pointer;
    background-color: rgb(241, 196, 15);
   }
   
   #loginBtn{
   	  float:right;
      display: inline-block;
      margin-top: 2%;
      margin-right:1%;
    */	/*   margin-left: 20%; */
   	 /* width:10%: */
   	 
   /* }
   
   .button{
       width: 90px;
     height: 40px;
     font-weight: 600;
     border-radius: 4px;
     background-color: rgb(241, 196, 15); 
     color: white;
   }
   
   .button:hover {
    */  /* background-color: white; */ /* Green */
     /* color: rgb(241, 196, 15);
     border: 2px solid rgb(241, 196, 15); /* Green */
  /*   } */
   
  /*  #showMain button{
       width: 150px;
     height: 40px;
     font-weight: 600;
     border-radius: 4px;
     background-color: rgb(241, 196, 15); 
     color: white;
   }
   
   #showMain button:hover {
    */ /*  background-color: white; */ /* Green */
     /* color: rgb(241, 196, 15); */
     /* border: 2px solid rgb(241, 196, 15); */ /* Green */
   /* }
   
   #showRightButton button{
       width: 150px;
     height: 40px;
     font-weight: 600;
     border-radius: 4px;
     background-color: rgb(241, 196, 15); 
     color: white;
   }
   
   #showRightButton button:hover {
     background-color: white;
     color: rgb(241, 196, 15);
     border: 2px solid rgb(241, 196, 15);
   } */
     
    html{
   		height:100%;
   }
   body{
   	 height:100%;
   }
   #main{
   	min-height:90%:
   } 
   
    .colorgraph {
      width: 98%;
        height: 3px;
        border-top: 0;
        background: rgb(241, 196, 15);
        border-radius: 3px;
   }
  /*  #wrapper {
       width:70%;
           /*margin : 0 auto ;*/
 /*   } */
   
 /*   #tableDiv{
      width:100%;
      height:100%;
      display: inline-block;
     /*  border-style: solid; */
       /* border-color: red; */
       
       
 /*  } */
 /*   #tableDiv table{
   	  width:20%;
   	  height:20%;
      display: inline-block;
      margin-top:1%; */
      /* margin: 8px; */
 /*      margin-left:1%;
   }
   #tableDiv table tr{
      align: center;
      border: 2px solid black;
      
   }
   #tableDiv table tr td{
      background: white;
   } */
   
 /*   ul.navi li {
      display: inline-block; */
      /* margin:auto;  */
 /*      text-align:center;
   }
    */
  /*  ul.navi li a {
      float: center;
      font-size: 20px;
      line-height: 40px;
      color: #000000;
      text-decoration: none;
      margin: auto; 
      padding: 0 30px;
      -moz-border-radius-topright: 10px;
      -webkit-border-top-right-radius: 10px;
      -moz-border-radius-topleft: 10px;
      -webkit-border-top-left-radius: 10px;
   }
   .navi li a:hover {
      color:#FF4500;
   }
    */
  /*  ul.navi2 li a {
      float: center;
      font-size: 15px;
      line-height: 10px;
      color: #000000;
      text-decoration: none; */
       /* margin: auto;  */
      /* padding: 0 30px; */
 /*      -moz-border-radius-topright: 10px;
      -webkit-border-top-right-radius: 10px;
      -moz-border-radius-topleft: 10px;
      -webkit-border-top-left-radius: 10px;
   }
    */
  	
	/* .menubar li ul {
	background: rgb(109,109,109);
	display:none;  /* 평상시에는 서브메뉴가 안보이게 하기 */
	/*height:auto;
	padding:0px;
	margin:0px;
	border:0px;
	position:absolute;
	width:200px;
	z-index:200;
} */
	
/*	.menubar li:hover ul {
	display:block;   /* 마우스 커서 올리면 서브메뉴 보이게 하기 */
/*} */
	
   
   /* #showMain{ */
    /*      border-style: solid;
    border-color: red; */
    /* display: inline-block;
    width: 100%;
    height: 100%;
    float: right;
   } */
   
  /*  #showLeft{
     /*  border-style: solid; */
       /* border-color: red; */
      /*  width:10%; */
      /*  height:15%; */
    /*    font-size:20px;
        display: inline-block;
   } */
   
  /*  #showRight{ */
     /*  border-style: solid; */
     /*  border-color: red; */
    /*  float:right; */
     /*   margin-left: 10%; */
   /*    display: inline-block;
      width: 90%;
      height:100%;
      
      
   } */
   
  /*  #showRightButton{
   	  
      margin-left: 8%;
      width:50%;
      height:30%;
   } */ 
   
   #web-font{
      font-family: 'Jua', sans-serif;
   }
   
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
  	 background-color:white;
  	 display: inline-block;
      /* margin-top: 5px; */
      /* margin-left: 30px; */
       width:190%;
      height:30%;
      /*  height: 40px; */
   }
   
   
   
   #search{
   	  display: inline-block;
      width:40%;
      height:10%;
      margin-left: 80px;
      margin-top: 25px;
      /* margin-top:2%; */
   }
   
   #searchBox{
    display: inline-block;
       color: rgb(94, 94, 94);
       border-width: 3px;
       border-style: solid;
       border-color: rgb(241, 196, 15);
       width:70%;
       height:40px;
   }
   
   #searchBtn {
     width: 90px;
    height: 40px;
     border-radius: 3px;
    font-weight: 600;
     border-color: transparent;
     font-size: 15px;
    color: white;
    cursor: pointer;
    background-color: rgb(241, 196, 15);
   }
   
    #loginBtn{
   	 /* float:right;  */
      display: inline-block;
      margin-top: 2%;
      margin-right:2%;
   	  /* margin-left: 15%; */
   	  margin-left: 145px;
   	  width:20%; 
   	 
   }
   #loginBtn a{
   		/* display:inline-block; */
   		width:10%;
   		 text-decoration: none;
   		 margin-right:2%;
   		 color:#646464;
   }
   .button{
       width: 90px;
     height: 40px;
     font-weight: 600;
     border-radius: 4px;
     background-color: rgb(241, 196, 15); 
     color: white;
   }
   
   .button:hover {
     background-color: white; /* Green */
     color: rgb(241, 196, 15);
     border: 2px solid rgb(241, 196, 15); /* Green */
   }
   #slelct{
   	display:inline-block;
   	  width: 50%;
    height:50%;
   	
   }
   
   #showMain button{
       width: 150px;
     height: 40px;
     font-weight: 600;
     border-radius: 4px;
     background-color: rgb(241, 196, 15); 
     color: white;
   }
   
   #showMain button:hover {
     background-color: white; /* Green */
     color: rgb(241, 196, 15);
     border: 2px solid rgb(241, 196, 15); /* Green */
   }
   
   #showRightButton button{
       width: 150px;
     height: 40px;
     font-weight: 600;
     border-radius: 4px;
     background-color: rgb(241, 196, 15); 
     color: white;
   }
   
   #showRightButton button:hover {
     background-color: white;
     color: rgb(241, 196, 15);
     border: 2px solid rgb(241, 196, 15);
   }
   
   /* 네비바 고정 */
   #nuriBavBar.is-fixed {
    position: fixed;
    /* 하단 경계선 */
    /*  border-bottom: 1px solid #ffd400; */
    /* background-color: #fff; */
    top: 0;
    z-index: 10;
    }
   </style>
</head>
<body>
<!-- 고정시키기 -->
<nav id="nuriBavBar" class="top-0 is-nav-white is-fixed">
 <!-- 누리터 로고 -->
   <%-- <div id="iBox">
        <a href="views/newMain.jsp"><label id="head"><font id="web-font">누리터</font></label></a>
        검색바
        <div id="iBox"><font id="web-font">
        <label id="head" href='../../index.jsp'><font id="web-font">누리터</font></label>
       <font id="web-font"><a id="head" href="#home" onclick="home()">누리터</a></font> 
        <div id="search" align="center">
      		<input type="text" id="searchBox" value="내용을 입력해 주세요">
      		<input type="button" id="searchBtn" value="검색">
  	 	</div>
  	 	
  	 	 <div id="loginBtn"  align=right>
        	 <%if(loginUser != null) {%>
        		<font id="web-font"> <a><%= loginUser.getUserName() %> 님</a></font>
        		<button class="button" onclick="logout();" >로그아웃</button>
        <% } %>
        		<% if(!loginUser.getUserId().equals("admin")){ %>
					<button class="button" onclick="location.href='/w7/views/member/memberUpdateForm.jsp'">마이페이지</button>
				<% }else{ %>
					<button class="button" onclick="location.href='views/admin/adminPage.jsp'">관리페이지</button>
				<% } %>
 		</div> 
 		</div>
 		<script>
		
	function logout(){
		var check = window.confirm('로그아웃 하시겠습니까?');
		
		if(check == true){
			location.href='<%=request.getContextPath()%>/logout';
		}
	}
	
	function home(){
		location.href='<%=request.getContextPath()%>/home';
	}
	
	</script>    --%>
	<div id="iBox"><font id="web-font">
        <!-- <label id="head" href='../../index.jsp'><font id="web-font">누리터</font></label> -->
       <font id="web-font"><a id="head" href="#home" onclick="home()">누리터</a></font> 
        <div id="search" align="center">
      		<input type="text" id="searchBox" value="내용을 입력해 주세요">
      		<input type="button" id="searchBtn" value="검색">
  	 	</div>
  	 	
  	 	 <div id="loginBtn">  <!-- align=right> -->
        	<%--  <%if(loginUser != null) {%>
        		<font id="web-font"> <a><%= loginUser.getUserName() %> 님</a></font>
        		<button class="button" onclick="logout();" >로그아웃</button>
        <% } %>
        		<% if(!loginUser.getUserId().equals("admin")){ %>
					<button class="button" onclick="location.href='/w7/views/member/memberUpdateForm.jsp'">마이페이지</button>
				<% }else{ %>
					<button class="button" onclick="location.href='../admin/adminPage.jsp'">관리페이지</button>
				<% } %> --%>
				<%if(loginUser == null) {%>
        	<button class="button" onclick="location.href='../member/login.jsp' " >로그인</button>
        	<button class="button" onclick="location.href='../member/memberJoinForm.jsp' ">회원가입</button>
        <%}else{ %>
        <%if(loginUser != null) {%>
        		<font id="web-font"> <a><%= loginUser.getUserName() %> 님</a></font>
        		<button class="button" onclick="logout();" >로그아웃</button>
        <% } %>
        		<% if(!loginUser.getUserId().equals("admin")){ %>
					<button class="button" onclick="location.href='/w7/views/member/memberUpdateForm.jsp'">마이페이지</button>
				<% }else{ %>
					<button class="button" onclick="location.href='views/admin/adminPage.jsp'">관리페이지</button>
				<% } %>
        
        <%} %>
 		</div> 
 		</font></div>
 		<script>
		
	function logout(){
		var check = window.confirm('로그아웃 하시겠습니까?');
		
		if(check == true){
			location.href='<%=request.getContextPath()%>/logout';
		}
	}
	
	function home(){
		location.href='<%=request.getContextPath()%>/home';
	}
	
	</script>
</nav>
</body>
</html>