<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상품추가</title>

    <!-- 합쳐지고 최소화된 최신 CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

    <!-- 부가적인 테마 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

    <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <style>
        ul {
            list-style: none;
        }
        
        .menuName{
        	background-color: #6f6a70; 
        	color: white; 
        	text-align: center; 
        	width: 100%;
        }
        
        .countryName{
        	float: left; 
        	margin-right: 10px;
        }
        
    </style>
    
</head>
<body>
	<div class="container">
			<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
		<div class="row">
			<div class="col-sm-12">
				<p style="text-align: center; padding-top: 84px;">상품 등록</p>
			</div>
		</div>
		<form action="/GoodsUpdate" enctype="multipart/form-data" method="post">
		
		<div class="row">
			<!--컨텐츠 row시작-->
			<div class="col-xs-4 col-md-3">
				<img style="width:184px;" id="img" src="${goodsInf.imgPath}" class="img-thumbnail">
			</div>
			<div class="col-md-9">
				<table style="width: 70%">
					<tr>
						<td style="border-bottom: 1px solid red; padding-bottom: 10px;">
							<input id="uploadFile" name="uploadFile" type="file">
						</td>
					</tr>
					<tr>
						<td style="border-bottom: 1px solid red; padding-top: 14px">
							<input type="checkbox" style="float: left;">
							<p>추천상품 수동설정</p>
							<p>추천상품은 4개까지 설정가능하며 수동 설정이 없을 시 누적 판매가 높은 상품이 자동적으로
								설정됩니다.</p>
						</td>
					</tr>
					<tr>
						<td style="border-bottom: 1px solid red; padding-top: 17px;">
							<input id="SaleCheck" type="checkbox" style="float: left;">
							<p style="float: left;">할인상품으로설정</p>
							<p style="float: right;">할인금액설정&nbsp;&nbsp;&nbsp;
							
							<c:choose>
								<c:when test="${!empty goodsInf.salePrice}">
								<input id="salePrice" name="salePrice" type="text" style="text-align: right;" value="${goodsInf.salePrice}" disabled="disabled">
								</c:when>
								
								<c:when test="${empty goodsInf.salePrice}">
									<input id="salePrice" name="salePrice" type="text" style="text-align: right;" value="0" disabled="disabled">
								</c:when>
								
							</c:choose>
								 
							<span style="float: right;">원</span>
							</p>
						</td>
					</tr>
				</table>
			</div>
			<div class="col-xs-3 col-md-3">
				<p class="menuName" style="margin-top: 30px;">카테고리</p>
			</div>

			<div class="col-md-9">
				<table style="width: 70%; margin-top: 28.5px;">
					<tr>
						<td><select id="Kategorie" name="Kategorie" style="width: 32%;">
								<option>예비 상품</option>
						</select>
							<p style="width: 67%; float: right">예비상품은 메뉴판에서 표시되지 않고,필요할때
								매뉴판 카테고리에 등록할 수 있습니다.</p></td>
					</tr>
				</table>
			</div>

			<div class="col-xs-3 col-md-3">
				<p class="menuName">상품명</p>
			</div>

			<div class="col-md-9">
				<table style="width: 70%;">
					<tr>
						<td>
							<p class="countryName">한</p> 
							<input id="kgoodsName" value="${goodsInf.kgoodsName}" name="kgoodsName" type="text" style="width: 90%;" placeholder="상품명입력">
						</td>
					</tr>
					<tr>
						<td>
							<p class="countryName">중</p> 
							<input id="cgoodsName" value="${goodsInf.cgoodsName}" name="cgoodsName" type="text" style="width: 90%;" placeholder="상품명입력">
						</td>
					</tr>
					<tr>
						<td>
							<p class="countryName">영</p> 
							<input id="egoodsName" value="${goodsInf.egoodsName}" name="egoodsName"type="text" style="width: 90%;" placeholder="상품명입력">
						</td>
					</tr>
					<tr>
						<td>
							<p class="countryName">일</p> 
							<input id="jgoodsName" value="${goodsInf.jgoodsName}" name="jgoodsName" type="text" style="width: 90%;" placeholder="상품명입력">
						</td>
					</tr>
				</table>
			</div>

			<div class="col-xs-3 col-md-3">
				<p class="menuName">상품설명</p>
			</div>
			
			<div class="col-md-9">
				<table style="width: 70%; margin-top: 4px;">
					<tr>
						<td>
							<p class="countryName">한</p> 
							
							<textarea
								id="kgoodsE" name="kgoodsE"
								maxlength="140" rows="2" cols="50"
								placeholder="140자까지 입력가능" style="width: 90%;">${goodsInf.kgoodsE}</textarea>
							
						</td>
					</tr>

					<tr>
						<td>
							<p class="countryName">중</p> 
							
							<textarea id="cgoodsE" name="cgoodsE" maxlength="140" rows="2" cols="50" 
							placeholder="140자까지 입력가능" style="width: 90%;">${goodsInf.cgoodsE}</textarea>
							
						</td>
					</tr>

					<tr>
						<td>
							<p class="countryName">영</p> 
							
							<textarea id="egoodsE" name="egoodsE" maxlength="140" rows="2" cols="50" 
									  placeholder="140자까지 입력가능" style="width: 90%;">${goodsInf.egoodsE}</textarea>
						
						</td>
					</tr>

					<tr>
						<td>
							<p class="countryName">일</p> 
							
							<textarea id="jgoodsE" name="jgoodsE" maxlength="140" rows="2" cols="50" 
							placeholder="140자까지 입력가능" style="width: 90%;">${goodsInf.jgoodsE}</textarea>
							
						</td>
					</tr>

				</table>
			</div>

			<div class="col-xs-3 col-md-3">
				<p class="menuName">상품가격</p>
			</div>

			<div class="col-md-9">
				<table style="width: 70%;">
					<tr>
						<td>
							<input id="price" name="price" type="text"style="float: left; text-align: right;" value="${goodsInf.price}">
							<p style="width:67%;">원</p>
						</td>
					</tr>
				</table>
			</div>
			<input type="submit"  class="btn" value="상품등록" style="float: right; margin-right: 26%;"> 
			<input type="button"  class="btn btn-danger" value="취소" style="float: right; margin-right: 35px;">
		</div>
			<input name="goodNum" type="hidden" value="${goodsInf.goodNum}">
		</form>
	</div>
</body>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<script>
	$("#SaleCheck").on("click",function(){
		if($("#SaleCheck").is(":checked")){
			$("#salePrice").attr("disabled",false);
		}else{
			$("#salePrice").attr("disabled",true);
		}
	});
</script>

<script type="text/javascript">
	var sel_file;
	
	$(document).ready(function() {
		$("#uploadFile").on("change", handleImgFileSelect);
	});

	function handleImgFileSelect(e) {
		var files = e.target.files;
		var filesArr = Array.prototype.slice.call(files);
		var fileSize=e.target.files[0].size;
		var maxSize=1024*1024;
		
		filesArr.forEach(function(f) {
			if (!f.type.match("image.*")) {
				alert("확장자는 이미지 확장자만 가능합니다.");
				$("#uploadFile").val("");
				$("#img").attr("src","http://placehold.it/150x150");
				return false;
			}
			if(fileSize>maxSize){
				alert("파일용량 1MB을 초과했습니다.");
				$("#uploadFile").val("");
				$("#img").attr("src","http://placehold.it/150x150");
			}

			sel_file = f;

			var reader = new FileReader();
			reader.onload = function(e) {
				$("#img").attr("src", e.target.result);
			}
			reader.readAsDataURL(f);
		});
	}
</script>


</html>