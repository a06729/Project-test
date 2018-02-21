<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
	#logOutBtn{
		color:white;
		background-color:#00a6d5;		
		transition: 0.2s linear;	
	}
	#logOutBtn:hover{
		color:white;
		font-size:16px;
		background-color:#00a6d5;
	}
	.navbar-default{
		background-image:-webkit-linear-gradient(top,#fff 0,#fff 100%);
	
	}
	.navbar-default .navbar-nav>li>a {
		font-weight:bold;
		text-decoration:none;
		transition: 0.2s linear;
	}
	
	.navbar-default .navbar-nav>li>a:hover {
		font-weight:bold;
		text-decoration:none;
		color:#00a6d5;
	}
	
	.navbar-default .navbar-nav>li>a.active {
		font-weight:bold;
		text-decoration:none;
		transition: 0.2s linear;
	}
	
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>네이게이션바</title>
</head>
<body>
	<div class="row">
		<div class="col-sm-12">
			<div class="navbar navbar-default navbar-fixed-top">
				<div class="container">
					<div class="navbar-header">
						<button button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse" data-target="#navbar"
							aria-expanded="false" aria-controls="navbar">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" rel="home" href="#"
							title="Buy Sell Rent Everyting"> <img
							style="max-width: 100px; margin-top: -7px;"
							src="//www.google.com/favicon.ico">
						</a>
					</div>

					<div id="navbar"
						class="collapse navbar-collapse navbar-responsive-collapse">
						<ul class="nav navbar-nav">
							<li><a href="/orderPage" class="active">주문내역</a></li>
							<li><a href="/ReservationPage">예약내역</a></li>
							<li><a href="/GoodsPage">상품관리</a></li>
							<li><a href="/OMPage">결제관리</a></li>
							<!--								<li class="dropdown"><a href="#" class="dropdown-toggle"
									data-toggle="dropdown" role="button" aria-haspopup="true"
									aria-expanded="false">Dropdown <span class="caret"></span></a>
									<ul class="dropdown-menu">
										<li><a href="#">Action</a></li>
										<li><a href="#">Another action</a></li>
										<li><a href="#">Something else here</a></li>
										<li role="separator" class="divider"></li>
										<li class="dropdown-header">Nav header</li>
										<li><a href="#">Separated link</a></li>
										<li><a href="#">One more separated link</a></li>
									</ul></li>-->
						</ul>
						<form class="navbar-form navbar-right" method="post"
							action="/logOut">
							<div class="form-group">
								<span style="font-size: 18px; color: black;">${UserId}</span> <input
									id="logOutBtn" class="btn" type="submit" onclick="/logOut" value="로그아웃">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>


</html>