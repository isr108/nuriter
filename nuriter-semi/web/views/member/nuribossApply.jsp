<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.3.3/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.3.3/dist/semantic.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
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
   	.web-font{
      	font-family: 'Jua', sans-serif;
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
					<select id="web-font" class="selectBox">
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
					
					<select name="category" id="gsonListSelect" class="web-font" style="display:none; font-size:14px;"></select>
					
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
    
  //셀렉트 박스
    $(function(){
	    $(".selectBox").change(function(){
	    	var name = $(".selectBox option:selected").text();
	    	
	    	$.ajax({
				url:"/ns/category.nu",
				data:{name:name},
				type:"get",
				success:function(data){
					console.log(data);
					
					$select = $("#gsonListSelect");
					$select.find("option").remove();
					
					for(var key in data){
						var $option = $("<option  name='category'>");
						$option.val(data[key].cno);
						$option.text(data[key].cname);
						$select.append($option);
					}
					
					$("#gsonListSelect").show();
				},
				error:function(data){
					console.log(data)
				}
			});
		});
    });
    </script>
    <br><br><br><br><br>
    <br><br><br><br><br>
    <br><br><br><br><br>
</body>
</html>