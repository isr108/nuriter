<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../common/menubar.jsp" %>
	<div>
		
		<h1 align="center"><%=loginUser.getUserName() %>님의 회원 정보 수정 <button onclick="deleteMember();">탈퇴하기</button></h1>
		<form action="/w7/updateMember" method="post">
			<table align="center">
				<tr>
					<td><label>아이디</label></td>
					<td><input type="text" name="userId" value="<%= loginUser.getUserId()%>" readonly></td>
				</tr>
				<tr>
					<td><label>비밀번호</label></td>
					<td><input type="password" name="password"></td>
				</tr>
				<tr>
					<td><label>비밀번호확인</label></td>
					<td><input type="password" name="password2"></td>
				</tr>
				<tr>
					<td><label>이름</label></td>
					<td><input type="text" name="userName" value="<%=loginUser.getUserName()%>"></td>
				</tr>
				<tr>
					<td><label>나이</label></td>
					<td><input type="number" name="age" value="<%=loginUser.getAge()%>"></td>
				</tr>
				<tr>
					<td><label>성별</label></td>
					<td>
						<% if(loginUser.getGender().equals("M")){ %>
							<input type="radio" name="gender" value="M" id="male" checked>
							<label for="male">남</label> 
							<input type="radio" name="gender" value="F" id="female"> 
							<label for="female">여</label>
						<% }else{ %>
							<input type="radio" name="gender" value="M" id="male">
							<label for="male">남</label> 
							<input type="radio" name="gender" value="F" id="female" checked> 
							<label for="female">여</label>
						<% } %>
					</td>
				</tr>
				<tr>
					<td><label>이메일</label></td>
					<td><input type="text" name="email" value="<%= loginUser.getEmail()%>"></td>
				</tr>
				<tr>
					<td><label>전화번호</label></td>
					<td><input type="tel" name="phone" value="<%=loginUser.getPhone()%>"></td>
				</tr>
				<tr>
					<td><label>주소</label></td>
					<td><input type="text" name="address" value="<%=loginUser.getAddress()%>"></td>
				</tr>
				<tr>
					<td><label>취미</label></td>
					<td>
						<input type="checkbox" name="hobby" value="운동" id="sports">
						<label for="sports">운동</label> 
						<input type="checkbox" name="hobby"
						value="낚시" id="fishing"> 
						<label for="fishing">낚시</label> 
						<input type="checkbox" name="hobby" value="등산" id="climbing"> 
						<label for="climbing">등산</label> 
						<input type="checkbox" name="hobby"
						value="요리" id="cooking"> 
						<label for="cooking">요리</label>
					</td>
				</tr>
				<tr align="center">
					<td colspan="2">
					<input type="reset" value="취소하기" onclick="location.href='/w7/views/main/main.jsp'"> 
					<input type="submit" value="변경하기" ></td>
				</tr>
			</table>
		</form>
	</div>
	<script>
		$(function(){
			$("input[name=hobby]").each(function(){
				var arr = '<%= loginUser.getHobby()%>'.split(", ");
				//console.log(arr);
				for(var i=0; i<arr.length; i++){
					if($(this).val() == arr[i]){
						$(this).attr("checked",true);
					}
				}
			});
		});
		
		function deleteMember(){
			var answer = window.confirm('정말로 탈퇴하시려구요?');
			
			if(answer == true){
				alert('탈퇴 되었습니다.');
				location.href="<%=request.getContextPath()%>/deleteMember";
			}else{
				alert('탈퇴취소 되었습니다.')
			}
		}
		
		  
			
	</script>
	
</body>
</html>


 --%>









