<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
        padding-top: 30px;
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
td,th{
	text-align: center;
}

#itemTable{
	border-left: none; 
	border-right:none; 
	width: 70%;
}

#GoodsImg{
	width: 100px; 
	height: 100px;	
}

</style>

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
                            <form action="/GoodsAddPage">
                            <button type="submit" class="btn" style="margin-top: 7px; float: right;">상품 추가</button>
                        	</form>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
			<div id="table"></div>
            <%@include file="../paging.jsp" %>
            </div>
        </div>
    </div>
</body>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(function(){
    // 3.페이징 처리할 ajax셋팅
    paging.ajax = ajaxList;
    ajaxList();
});
 
var ajaxList = function(){    
    var submitData = {};
    // 1.페이징시 필요 데이터 셋팅
    submitData.index = paging.p.index;
    submitData.pageStartNum = paging.p.pageStartNum;
    $.ajax({
        url: '/paging',
        type: 'post',
        data:{
        index:paging.p.index,
        pageStartNum:paging.p.pageStartNum
        },
        success : function(obj){
            // 2.페이징정보와 화면 ui셋팅
            $("#table").empty(str);
            var str='';
     		str +="<table id='itemTable' border='1' style='border-left: none; border-right:none; width: 70%;'>";
        	str +="<tr>";
        	str +="<th>선택</th><th>제품</th><th>제품 설명</th><th>가격/판매량</th><th>선택</th>";
     		str +="</tr>";
     		$.each(obj.list,function(index,Goods){
            	console.log(Goods);
            	str +="<tr>";
         		str +="<td><input type='checkbox' value='"+ Goods.goodNum +"'></td>";
            	str +="<td><img id='GoodsImg' style='width: 100px; height: 100px;' src='"+ Goods.imgPath +"'></td>";
            	str +="<td style='text-align: center;'>한국어설명:"+ Goods.kgoodsE +"<br>중국어설명:"+ Goods.cgoodsE +"<br>영어설명:"+ Goods.egoodsE +"<br>일본어설명:"+ Goods.jgoodsE +"<br></td>";
            	if(Goods.salePrice==null){
            		str +="<td>가격:"+ Goods.price +"원</td>";
            	}else if(Goods.salePrice!=null){
            		str +="<td>할인가격:"+ Goods.salePrice +"원</td>";
            	}
            	str +="<td><form action='/GoodsUpdatePage'><input type='submit' class='btn'  value='수정'><input name='goodNum' type='hidden' value='"+ Goods.goodNum +"'></form></td>";
            	str +="</tr>";
            });
        	str +="</table>";
            $("#table").append(str);
            paging.p = obj.p;
            paging.create();
        }
    });    
}
</script>
</html>