<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>상품관리</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 합쳐지고 최소화된 최신 CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

    <!-- 부가적인 테마 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

    <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<style>
    .KateDiv {
        padding-top: 100px;
    }
    ul {
    list-style:none;
    margin:0;
    padding:0;
}

li {
    list-style: none;
    margin: 0 0 0 0;
    padding: 0 0 0 0;
    border : 0;
    float: left;
}

</style>

<body>
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="navbar navbar-default navbar-fixed-top">
                    <div class="container">
                        <div class="navbar-header">
                            <button button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
                            <a class="navbar-brand" rel="home" href="#" title="Buy Sell Rent Everyting"> <img
								style="max-width: 100px; margin-top: -7px;"
								src="//www.google.com/favicon.ico">
							</a>
                        </div>

                        <div id="navbar" class="collapse navbar-collapse navbar-responsive-collapse">
                            <ul class="nav navbar-nav">
                                <li><a href="/orderPage">주문내역</a></li>
                                <li><a href="/ReservationPage">예약내역</a></li>
                                <li><a href="/GoodsPage">상품관리</a></li>
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
                            <form class="navbar-form navbar-right" method="post" action="/logOut">
                                <div class="form-group">
                                    <span style="font-size: 18px; color:black;">${UserId}</span>
                                    <input class="btn" type="submit" onclick="/logOut" value="로그아웃">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12">
                <div class="KateDiv">
                    <ul>
                        <li>
                            <p>카테고리:</p>
                        </li>
                        <li>
                            <select>
                            <option>옵션1</option>
                            <option>옵션2</option>
                            <option>옵션3</option>
                        </select>
                        </li>
                        <li style="float: right;">
                            <button class="btn">카테고리 이동</button>
                            <button class="btn  btn-danger">선택 삭제</button><br>
                            <button class="btn" style="margin-top: 7px; float: right;">상품 추가</button>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
            <table border="1" style="border-left: none; border-right:none; width: 70%;">
                <tr>
                    <th>선택</th><th>제품</th><th>제품 설명</th><th>가격/판매량</th><th>선택</th>
                </tr>    
            </table>
            </div>
        </div>
    </div>
</body>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

</html>