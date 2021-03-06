<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>卡通玩具销售系统</title>
  <link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/res/static/css/main.css">
  <link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/res/layui/css/layui.css">
  <script type="text/javascript" src="${ pageContext.request.contextPath }/res/layui/layui.js"></script>
  
	<%-- <script src="${ pageContext.request.contextPath }/admin/goods/dist/jquery-1.10.2.js"></script>
	<script src="${ pageContext.request.contextPath }/admin/goods/dist/bootstrap-3.3.4.js"></script> --%>
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
</head>
<body>
<%@ include file="head.jsp" %>
  <div class="content content-nav-base datails-content">
    <%@ include file="nav.jsp" %>
    <div class="data-cont-wrap w1200">
      <div class="crumb">
        <!-- <a href="javascript:;">首页</a>
        <span>></span>
        <a href="javascript:;">所有商品</a>
        <span>></span> -->
        <a href="javascript:;">产品详情</a>
      </div>
      <div class="product-intro layui-clear">
        <div class="preview-wrap">
          <a href="javascript:;"><img style="width:400px; height:400px;" src="${ pageContext.request.contextPath }/admin/goods/goodsImg/${ goods.picture_url }"></a>
        </div>
        <div class="itemInfo-wrap">
          <div class="itemInfo">
            <div class="title">
              <h4>${ goods2.goods_name } </h4>
              <!-- <span><i class="layui-icon layui-icon-rate-solid"></i>收藏</span> -->
            </div>
            <div class="summary">
              <p class="reference"><span>参考价</span> <del>￥${ goods.goods_price+20 }</del></p>
              <p class="activity"><span>活动价</span><strong class="price"><i>￥</i> ${ goods.goods_price }</strong></p>
              <p class="address-box"><span>送&nbsp;&nbsp;&nbsp;&nbsp;至</span><strong class="address">${ UserInfo.address }</strong></p>
              
            </div>
            <div class="choose-attrs">
              <!-- <div class="color layui-clear"><span class="title">颜&nbsp;&nbsp;&nbsp;&nbsp;色</span> <div class="color-cont"><span class="btn">白色</span> <span class="btn active">粉丝</span></div></div> -->
              <%-- <div class="number layui-clear"><span class="title">库存数量</span><span class="title">${ goods.goods_sum }</span></div> --%>
              <p class="address-box"><span>库存数量</span>&nbsp;&nbsp;&nbsp;&nbsp;<strong class="address">${ goods.goods_sum }</strong></p><br>
              <div class="number layui-clear"><span class="title">数&nbsp;&nbsp;&nbsp;&nbsp;量</span><div class="number-cont"><span class="cut btn">-</span><input name="goods_sum" onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}" onafterpaste="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}" maxlength="4" type="" name="" value="1"><span class="add btn">+</span></div></div>
            </div>
            <div class="choose-btns">
              <button id="pay" class="layui-btn layui-btn-primary purchase-btn">立刻购买</button>
              <button id="cart" class="layui-btn  layui-btn-danger car-btn"><i class="layui-icon layui-icon-cart-simple"></i>加入购物车</button>  
            </div>
          </div>
        </div>
      </div>
      <div class="layui-clear">
        <div class="detail">
          <h4>详情</h4>
          <div class="item">
          ${ goods.goods_describe }
            <%-- <img src="${ pageContext.request.contextPath }/res/static/img/details_imgbig.jpg"> --%>
          </div>
        </div>
      </div>
    </div>
  </div>
  <%@ include file="foot.jsp" %>
  
<script type="text/javascript">
  layui.config({
    base: '${ pageContext.request.contextPath }/res/static/js/util/' //你存放新模块的目录，注意，不是layui的模块目录
  }).use(['mm','jquery'],function(){
      var mm = layui.mm,$ = layui.$;
      var cur = $('.number-cont input').val();
      $('.number-cont .btn').on('click',function(){
        if($(this).hasClass('add')){
          cur++;
         
        }else{
          if(cur > 1){
            cur--;
          }  
        }
        $('.number-cont input').val(cur)
      })
      $("#cart").click(function(){
    	  var goods = '${ goods.goods_id }';
    	  var user = '${ UserInfo.id }';
    	  var goodssum = $('input[name=goods_sum]').val();
    	  if(user == 0){
    		  alert("请登录！！");
    		  window.document.location.href="<%=request.getContextPath()%>/jsp/login.jsp";
    	  }else{
    		  $.ajax({
            	  type:'get',
            	  url:'${ pageContext.request.contextPath }/cartAdd.cdo?goods='+goods+'&&user='+user+'&&goodssum='+goodssum,
            	  success:function(data){
            		  if(data == "1"){
            			  alert("添加成功");
            		  }
            	  }
              });
    	  }
    	  
      });
      
      $("#pay").click(function(){
    	  var goods_sum = '${ goods.goods_sum }';
    	  var userid = '${ UserInfo.id }'
    	  var goods = '${ goods.goods_id }';
    	  var goodssum = $('input[name=goods_sum]').val();
    	  if(userid == null || userid == ""){
    		  alert("请登录");
    		  window.document.location.href="${ pageContext.request.contextPath }/jsp/login.jsp";
    	  }else{
    		  if(goods_sum - goodssum < 0){
    			  alert("您选中的数量超出库存数量了");
    		  }else{
    			  window.document.location.href="${ pageContext.request.contextPath }/goodsPay.gdo?id="+goods+"&&sum="+goodssum;
    		  }
    	  }
    	 
      });
  });
  
 
</script>


</body>
</html>