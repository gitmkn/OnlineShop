<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="control.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>卡通玩具销售系统</title>
  <link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/res/static/css/main.css">
  <link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/res/layui/css/layui.css">
  <script type="text/javascript" src="${ pageContext.request.contextPath }/res/layui/layui.js"></script>
  <script type="text/javascript" src="${ pageContext.request.contextPath }/res/static/js/jquery.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
</head>
<body>
<%@ include file="head.jsp" %>
  <div class="content content-nav-base shopcart-content">
    <%@ include file="nav.jsp" %>
    <div class="banner-bg w1200">
      <h3>夏季清仓</h3>
      <p>宝宝卡通玩具3折起</p>
    </div>
    <div class="cart w1200">
      <div class="cart-table-th">
        <div class="th th-chk">
          <div class="select-all">
            <div class="cart-checkbox">
              <input class="check-all check" id="allCheckked" type="checkbox">
            </div>
          <label>&nbsp;&nbsp;全选</label>
          </div>
        </div>
        <div class="th th-item">
          <div class="th-inner">
            商品
          </div>
        </div>
        <div class="th th-price">
          <div class="th-inner">
            单价
          </div>
        </div>
        <div class="th th-amount">
          <div class="th-inner">
            数量
          </div>
        </div>
        <div class="th th-sum">
          <div class="th-inner">
            小计
          </div>
        </div>
        <div class="th th-op">
          <div class="th-inner">
            操作
          </div>
        </div>  
      </div>
      
      
    
      <div class="OrderList">
        <div class="order-content" id="list-cont">
          <c:forEach items="${ cargoods }" var="list">
          <ul class="item-content layui-clear">
            <li class="th th-chk">
              <div class="select-all checkbox">
                <div class="cart-checkbox">
                  <c:if test="${ list.goods_sum > 0 }">
	              <input class="CheckBoxShop check" id="" type="checkbox" num="all" name="select1" value="${ list.car_id}">
	              </c:if>
                  
                </div>
              </div>
            </li>
            <li class="th th-item">
              <div class="item-cont">
                <a href="javascript:;"><img src="${ pageContext.request.contextPath }/admin/goods/goodsImg/${ list.picture_url }" alt=""></a>
                <div class="text">
                  <div class="title">${ list.goods_name }</div>
                  <%-- <p><span>粉色</span>  <span>${ list.createtime }</span></p> --%>
                </div>
              </div>
            </li>
            <li class="th th-price">
              <span class="th-su">${ list.goods_price }</span>
            </li>
            <li class="th th-amount">
              <div class="box-btn layui-clear">
                <div class="less layui-btn">-</div>
                <input class="Quantity-input" type="" name="sum" value="${ list.sum }" disabled="disabled">
                <input type="hidden" name="goodssum" value="${ list.goods_sum }" disabled="disabled">
                <div class="add layui-btn">+</div>
              </div>
              <c:if test="${ list.goods_sum < 5 && list.goods_sum > 0 }">
              <div id="shouqing">即将售罄</div>
              </c:if>
              <c:if test="${ list.goods_sum <= 0 }">
              <div id="shouqing">已售罄</div>
              </c:if>
            </li>
            <li class="th th-sum">
              <span class="sum">${ list.goods_price*list.sum }</span>
            </li>
            <li class="th th-op">
              <!-- <span class="dele">删除</span> -->
              <a onclick="dele('${ list.car_id}')">删除</a>
            </li>
          </ul>
          </c:forEach>
        </div>
      </div>

      <div class="FloatBarHolder layui-clear">
        <div class="th th-chk">
          <div class="select-all">
            <div class="cart-checkbox">
              <input class="check-all check" id="" name="select-all" type="checkbox">
            </div>
            <label>&nbsp;&nbsp;已选<span class="Selected-pieces">0</span>件</label>
          </div>
        </div>
        <!-- <div class="th batch-deletion">
          <span class="batch-dele-btn">批量删除</span>
        </div> -->
        <%-- <form class="layui-form" method="post" action="${ pageContext.request.contextPath }/shopcar.pay"> --%>
        <div class="th Settlement">
          <button id="tijiao" class="layui-btn">结算</button>
        </div>
          
        <div class="th total">
        <input type="hidden" name="pieces" value="">
          <p>应付：<span class="pieces-total">0</span></p>
        </div>
      </div>
     <!--  </form> -->
    </div>
  </div>
<%@ include file="foot.jsp" %>
<script type="text/javascript">
	var pieces = 0; 

  layui.config({
    base: '${ pageContext.request.contextPath }/res/static/js/util/' //你存放新模块的目录，注意，不是layui的模块目录
  }).use(['mm','jquery','element','car'],function(){
    var mm = layui.mm,$ = layui.$,element = layui.element,car = layui.car;
    car.init(); 
    
    $.ajax({
		type:'get',
		url:'${ pageContext.request.contextPath }/cartList.cdo?userid=${ UserInfo.id }'
	});
    
});
  
  function dele(a){
	  	alert(a);
	  	$.ajax({
	  		type:'get',
	  		url:'${ pageContext.request.contextPath }/cartDele.cdo?id='+a,
	  		success:function(data){
	  			if(data != "1"){
	  				alert("删除失败");
	  			}
	  			window.location.reload();
	  		}
	  	});
	  }
  $("#tijiao").click(function(){
		pieces = $(".pieces-total").text();
		var checkID = [];
		var sum = [];
		var goodssum = [];
		$("input[name='select1']:checked").each(function(i){//把所有被选中的复选框的值存入数组
			checkID[i] =$(this).val();//购物车id
			sum[i] = $(this).parent(".cart-checkbox").parent(".checkbox").parent(".th").parent(".item-content").find("input[name=sum]").val();//商品数量
			goodssum[i] = $(this).parent(".cart-checkbox").parent(".checkbox").parent(".th").parent(".item-content").find("input[name=goodssum]").val();
			if(sum[i] - goodssum[i] > 0){
				alert("超出了库存,现有"+goodssum[i]+",已为您修改数量");
				sum[i] = goodssum[i];
			}
		});
		
		//拼接字符串
		var ss = "";
		var mm = "";
		for(var i = 0;i<checkID.length;i++){
			if(ss==""){
				ss = checkID[i];
				mm = sum[i];
			}else{
				ss = ss+"-"+checkID[i];
				mm = mm+"%"+sum[i];
			}
		}
		if(checkID.length <= 0){
			alert("请选择商品");
		}else{
			$.ajax({
				type:'get',
				url:'${ pageContext.request.contextPath }/shopcar.cdo',
				data:{
					pieces:$(".pieces-total").text(),
					checkID:ss,
					sum:mm},
				success:function(data){
					if(data == "0"){
						window.location.href="${ pageContext.request.contextPath }/jsp/carpay.jsp";
					}
				}
			});
		}
	});

</script>
</body>
</html>