<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>카테고리 관리</title>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>


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
</style>

</head>
<body>
	<div class="container">
		<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
		<div class="row">
			<div class="col-xs-8">
				<div style="padding-top: 100px;">
					<ul>
        				<li>
              				<form action="/GoodsPage">
              				<button class="btn" style="margin-right: 10px;">상품관리</button>
        					</form>
        				</li>
						<li>
        					<form action="/KategorieControl">
        					<button class="btn">카테고리 관리</button>
        					</form>						
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-12">
				<div>
					<ul>
						<li style="float: right; margin-bottom: 11px;">
							<button class="btn">카테고리 추가</button>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-12">
				<table border="1" style="border-left: none; border-right: none; width: 100%;">
					<tr>
						<th style="width: 6%; text-align: center;">번호</th>
						<th style="text-align: center;">카테고리명</th>
						<th style="text-align: center;">상품수</th>
						<th style="text-align: center;">관리</th>
					</tr>
				</table>
				<input type="button" class="btn" value="변경사항 저장"
					style="margin-top: 27px; float: right;">
			</div>
		</div>
	</div>
</body>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</html>