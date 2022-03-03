<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
</head>
<body>

	<h3>회원정보 추가</h3> 
	<!--  <form action="/lesson06/add_user" method="post" id="userForm"> -->
		<label>이름 : </label> <input type="text" name="name" id="nameInput"> <br><br>
		<label>생년월일 : </label>  <input type="text" name="yyyymmdd" id="yyyymmddInput"> <br><br>
		<label>자기소개 : </label> <br><br>
		<textarea rows="10" cols="50" name="introduce" id="introduceInput"></textarea> <br><br>
		<label>이메일 주소 : </label> <input type="text" name="email" id="emailInput"> <br><br>
		
	  	<!--<button type="submit">추가</button>  -->
		<button type="button" id="addBtn">추가</button> 
	<!-- </form>  -->
	
	<script>
		$(document).ready(function() {
			$("#userForm").on("submit" , function() {
				
				let name = $("#nameInput").val();
				let yyyymmdd = $("#yyyymmddInput").val();
				let introduce = $("#introduceInput").val().trim();
				let email = $("#emailInput").val();
			
				//유효성 검사
				
				if(name == "") {
					alert("이름을 입력하세요!!")
					return false; // false로 리턴해줘야함
				}
				if(yyyymmdd == "") {
					alert("생년월일을 입력하세요!!")
					return false; 
				}
				if(introduce == "") {
					alert("자기소개을 입력하세요!!")
					return false; 
				}
				if(email == "") {
					alert("이메일을 입력하세요!!")
					return false; 
				}
				
				$.ajax({
					type:"post",
					url:"/lesson06/add_user", // action url 그대로 사용
					// input에서 사용하는 name과 똑같음 파라미터 네임을 넣어줌  {"name":name} {"키": value(즉 변수)} --%>
					data:{"name":name, "yyyymmdd":yyyymmdd, "introduce" : introduce, "email":email}, 
					// 여기까지가 request를 위해 필요한 것들
					
					success:function(data) {
						alert(data);
						location.href = "lesson04/ex01"
					},
					error:function() {
						alert("입력에러");
					}
				});
				
				return false; 
			})
			
			$("#addBtn").on("click", function(){
				
				let name = $("#nameInput").val();
				let yyyymmdd = $("#yyyymmddInput").val();
				let introduce = $("#introduceInput").val().trim();
				let email = $("#emailInput").val();
			
				//유효성 검사
				
				if(name == "") {
					alert("이름을 입력하세요!!")
					return ;
				}
				if(yyyymmdd == "") {
					alert("생년월일을 입력하세요!!")
					return ; 
				}
				if(introduce == "") {
					alert("자기소개을 입력하세요!!")
					return ; 
				}
				if(email == "") {
					alert("이메일을 입력하세요!!")
					return ; 
				}
				
				$.ajax({
					type:"post",
					url:"/lesson06/add_user", // action url 그대로 사용
					// input에서 사용하는 name과 똑같음 파라미터 네임을 넣어줌  {"name":name} {"키": value(즉 변수)} --%>
					data:{"name":name, "yyyymmdd":yyyymmdd, "introduce":introduce, "email":email}, 
					// 여기까지가 request를 위해 필요한 것들
					
					success:function(data) {
						alert(data);
						location.href = "lesson04/ex01";
					},
					error:function() {
						alert("입력 에러");
					}
				});
			 
				
			});
		});	
	</script>

</body>
</html>