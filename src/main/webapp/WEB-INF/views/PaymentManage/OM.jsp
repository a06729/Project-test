<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    
<title>주문관리</title>
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
		<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
        <div class="row">
            <div class="col-sm-12">
                <div style="padding-top: 100px;">
                        <form action="/OMPage">
                            <button class="btn" style="float: left; margin-right: 10px;">주문 관리</button>
                        </form>
                        <form action="/CancelPage">
                            <button class="btn" style="float: left; margin-right: 10px;">취소 내역</button>
                        </form>
                        <form action="/JeongsanPage">
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