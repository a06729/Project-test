<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    
<title>정산내역</title>
</head>
<style>

    ul {
        list-style: none;
        margin: 0;
        padding: 0;
    }

    li {
        list-style: none;
        margin: 0 0 0 0;
        padding: 0 0 0 0;
        border: 0;
        float: left;
    }
    th{
        text-align: center;
    }
    table{
        width: 100%;
        margin-top: 55px;
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
                                    <span style="font-size: 18px; color: black;">${UserId}</span> <input class="btn" type="submit" onclick="/logOut" value="로그아웃">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <div style="padding-top: 100px;">
                        <form>
                            <button class="btn" style="float: left; margin-right: 10px;">주문 관리</button>
                        </form>
                        <form>
                            <button class="btn" style="float: left; margin-right: 10px;">취소 내역</button>
                        </form>
                        <form>
                            <button class="btn" style="float: left;">정산내역</button> 
                        </form>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12" style="margin-top: 10px;">
                <div style="width: 370px;">
                    <input id="firstDay" type="date" style="float: left;">
                    <p style="float: left;">~</p>
                    <input id="lastDay" type="date" style="float: left;">
                    <input class="btn" type="button" value="검색" style="float: left; margin-left: 5px;">
                </div>
                
                <table>
                    <tr>
                        <td style="text-align: center;">
                            <p>정산 주문 건수:0권 &nbsp; &nbsp; &nbsp;정산총액:0원</p>
                        </td>
                    </tr>
                </table>
                <table border="1px solid" style="width: 100%">
                        <tr>
                            <th>일자</th>
                            <th>상품코드</th>
                            <th>주문관리</th>
                            <th>주문번호</th>
                            <th>상품코드</th>
                            <th>연락처</th>
                            <th>거래상태</th>
                            <th>원화금액</th>
                            <th>판매금액</th>
                            <th>환불</th>
                        </tr>
                </table>
            </div>
        </div>

    </div>
</body>

<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<script>
var date = new Date();
var firstDay = new Date(date.getFullYear(), date.getMonth(), 2);
var lastDay = new Date(date.getFullYear(), date.getMonth() + 1, 0);

document.getElementById('firstDay').valueAsDate = firstDay;
document.getElementById('lastDay').valueAsDate = lastDay;
    
</script>
</html>