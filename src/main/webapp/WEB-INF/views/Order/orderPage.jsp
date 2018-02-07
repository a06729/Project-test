<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>주문내역</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<style>
.tableDiv {
	padding-top: 100px;
	margin: 0% 5% 0% 10%;
}

.resultDiv {
	padding-top: 15px;
	margin: 0% 5% 0% 6.3%;
}

.navbar-default .navbar-nav>.active>a{
	background-color: transparent;
	
}

</style>

<body>

	<div class="container">
	
	<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
		
		<div class="row">
			<div class="col-sm-8">
				<div class="tableDiv">
					<h4 style="width: auto; text-align: center;">주문내역</h4>
					<form action="/orderSearch" method="post">
						<table class="optionTable" border="1" style="width: 100%">
							<tr>
								<td colspan="2">상태</td>
								<td><input type="checkbox" id="payment" name="paymentOk"
									value="paymentOk">결제완료 &nbsp;&nbsp;&nbsp; <input
									type="hidden" name="hiddenPaymentOk"> <input
									type="checkbox" id="use" name="useOk" value="useOk">사용완료
									&nbsp;&nbsp;&nbsp; <input type="hidden" name="hiddenUseOk">
									<input type="checkbox" id="cancel" name="cancel" value="cancel">주문취소
									&nbsp;&nbsp;&nbsp; <input type="hidden" name="hiddenCancel">
									<input type="checkbox" id="refund" name="refundOk"
									value="refundOk">환불완료&nbsp;&nbsp;&nbsp; <input
									type="hidden" name="hiddenRefundOk"></td>
							</tr>
							<tr>
								<td colspan="2">환불요청</td>
								<td><input id="onlyRefund" name="onlyRefund"
									type="checkbox" name="optionBox">환불요청 상태만 표시 <input
									type="hidden" name="hiddenOnlyRefund"></td>
							</tr>
							<tr>
								<td colspan="2">키워드</td>
								<td><select id="selectKeyword" style="height: 27px;">
										<option name="buyerId" value="buyerId">주문자ID</option>
										<option name="buyername" value="buyername">주문자명</option>
										<option name="itemname" value="itemname">상품명</option>
										<input id="keywordOp" name="keywordOp" type="hidden"
										value="buyerId">
								</select><input name="keyword" type="text"></td>
							</tr>
						</table>
						<div style="padding: 0px; width: 100%">
							<input style="display: block" class="btn pull-right"
								type="submit" value="검색">
						</div>
					</form>
					<!-- /orderSearch 끝 -->
				</div>
				<!--.tableDiv의 끝 -->
			</div>
			<!-- .col-sm-8 끝 -->
		</div>
		<!-- row롤 감싼 optionTable 의끝-->

		<div class="row">
			<div class="col-sm-9">
				<div class="resultDiv" style="">
					<p class="orderCount" style="text-align: center;">주문:0</p>
					<table class="" border="1" style="width: 100%;">
						<tr>
							<td colspan="2">번호</td>
							<td colspan="2">주문번호</td>
							<td colspan="2">주문일시</td>
							<td colspan="2">주문ID</td>
							<td colspan="2">주문자명</td>
							<td colspan="2">상품명</td>
							<td colspan="2">가격</td>
							<td colspan="2">상태</td>
						</tr>
					</table>

					<table class="" border="1" style="width: 100%;">
						<tr>
							<td colspan="2" style="text-align: center;">없음</td>
						</tr>
					</table>

				</div>
			</div>
		</div>

	</div>
	<!--.container의 끝-->
</body>
</html>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>