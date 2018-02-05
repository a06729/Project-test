<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<style>
.contain {
	top: 23%;
	margin-left: 512px;
	padding: 25px;
	position: fixed;
	width: 347px;
}

.row {
	padding-right: 30px;
	margin-right: 30px;
}



@media screen and (min-width:320px) and (max-width:767px) {
	.contain {
		top: 23%;
		margin-left: 11%;
		padding: 25px;
		position: fixed;
		width: 347px
	}
	.row {
		padding-right: 30px;
		margin-right: 30px;
	}
}


@media screen and (width:768px) , ( width :800px) {
	.contain {
		margin: 0px auto;
		top: 23%;
		left: 10%;
		padding: 25px;
		margin-left: 228px;
		position: fixed;
	}
	.row {
		padding-right: 30px;
		margin-right: 30px;
	}
}

@media screen and (min-width:970px) and (max-width:1280px) {
	.contain {
		top: 28%;
		margin-left: 376px;
		width: 360px;
		padding: 25px;
		position: fixed;
	}
	.row {
		padding-right: 30px;
		margin-right: 30px;
	}
}

@media screen and (min-width:1280px) and (max-width:1920px) {
	.contain {
		top: 23%;
		padding: 25px;
		margin-left: 41%;
		position: fixed;
	}
	.row {
		margin: 0 auto;
		width: 300px;
	}
}

body {
	background-color: #fff;
	-webkit-font-smoothing: antialiased;
	font: normal 14px Roboto, arial, sans-serif;
}

}
.form-login {
	background-color: #EDEDED;
	padding-top: 10px;
	padding-bottom: 20px;
	padding-left: 20px;
	padding-right: 20px;
	border-radius: 15px;
	border-color: #d2d2d2;
	border-width: 5px;
	box-shadow: 0 1px 0 #cfcfcf;
}

h4 {
	border: 0 solid #fff;
	border-bottom-width: 1px;
	padding-bottom: 10px;
	text-align: center;
}

.form-control {
	border-radius: 10px;
}

.wrapper {
	text-align: center;
}
</style>



<html>
<head>
	<title>Home</title>
</head>
<body>
	<form action="/login" method="post">
	<div class="contain">
		<div class="row">
			<div>
				<h4>
					<img src="http://placehold.it/140x100"> Welcome
				</h4>
				<input type="text" id=UserId name="UserId"
					class="form-control input-sm chat-input" placeholder="ID"> </br>
				 <input type="password" id="UserPassword" name="UserPassword"
					class="form-control input-sm chat-input" placeholder="Password"> </br>
				<div class="wrapper">
					<span class="group-btn"> <input type="submit"
						class="btn btn-primary" value="login" onclick="return Check()">
					</span>
				</div>
			</div>
		</div>
	</div>
	</form>

</body>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<script type="text/javascript">
$(document).ready(function() {
		let loginFail=${loginFail} ; 
		if(loginFail==0){
			alert("로그인 실패");
		}
});
</script>

<script type="text/javascript">
$(document).ready(function() {
	let NotMember=${NotMember}; 
	if(NotMember==0){
		alert("존재하지 않는 회원 회원가입필요");
	}
});
</script>

<script type="text/javascript">
	function Check() {
		if($("#UserId").val()&&$("#UserPassword").val()==""){
			alert("아이디 혹은 비밀번호를 입력하셨는지 확인해 주십시오");
			return false;
		}else if($("#UserId").val()||$("#UserPassword").val()!=""){
			return true;
		}		
	}
	
</script>

</html>


