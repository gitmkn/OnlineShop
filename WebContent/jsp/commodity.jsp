<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>卡通玩具销售系统</title>
  <link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/res/static/css/main2.css">
  <link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/res/layui/css/layui.css">
  <script type="text/javascript" src="${ pageContext.request.contextPath }/res/layui/layui.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
</head>
<body>
<%@ include file="head.jsp" %>
  <div class="content content-nav-base commodity-content">
    <%@ include file="nav.jsp" %>
    <div class="commod-cont-wrap">
      <div class="commod-cont w1200 layui-clear">
        <!-- <div class="left-nav"> -->
          <!-- <div class="title">所有分类</div>
          <div class="list-box">
            <dl>
             <dt>户外玩具</dt>
             <dd><a href="javascript:;">进口奶粉</a></dd>
             <dd><a href="javascript:;">宝宝辅食</a></dd>
             <dd><a href="javascript:;">营养品</a></dd>
            </dl>
            <dl>
             <dt>积木</dt>
             <dd><a href="javascript:;">纸尿裤</a></dd>
             <dd><a href="javascript:;">婴儿湿巾</a></dd>
             <dd><a href="javascript:;">婴儿车</a></dd>
             <dd><a href="javascript:;">婴儿床</a></dd>
             <dd><a href="javascript:;">儿童安全座椅</a></dd>
            </dl>
            <dl>
             <dt>儿童自行车</dt>
             <dd><a href="javascript:;">儿童玩具</a></dd>
             <dd><a href="javascript:;">早教书籍</a></dd>
             <dd><a href="javascript:;">孕产育儿书</a></dd>
            </dl>
            <dl>
             <dt>爬行垫</dt>
             <dd><a href="javascript:;">童装</a></dd>
             <dd><a href="javascript:;">童鞋</a></dd>
             <dd><a href="javascript:;">宝宝配饰</a></dd>
            </dl>
            <dl>
             <dt>亲子玩具</dt>
             <dd><a href="javascript:;">孕妇装</a></dd>
             <dd><a href="javascript:;">孕妇护肤</a></dd>
             <dd><a href="javascript:;">孕妇用品</a></dd>
            </dl>
          </div>
        </div> -->
        <div class="right-cont-wrap">
          <div class="right-cont">
            <div class="prod-number">
              <h3>${ type }</h3>
            </div>
            <div class="cont-list layui-clear" id="list-cont">
            <c:forEach var="goods" items="${ goodslist }">
            <div class="item">
                <div class="img">
                  <a href="${ pageContext.request.contextPath }/goods.gdo?id=${ goods.goods_id }"><img style="width:280px;height:280px;" src="${ pageContext.request.contextPath }/admin/goods/goodsImg/${ goods.picture_url }"></a>
                </div>
                <div class="text">
                  <p class="title">${fn:substring(goods.goods_name, 0, 16)}</p>
                  <p class="price">
                    <span class="pri">￥ ${ goods.goods_price}</span>
                    <span class="nub">1266付款</span>
                  </p>
                </div>
              </div>
            </c:forEach>
              <%-- <div class="item">
                <div class="img">
                  <a href="javascript:;"><img src="${ pageContext.request.contextPath }/res/static/img/paging_img1.jpg"></a>
                </div>
                <div class="text">
                  <p class="title">森系小清新四件套</p>
                  <p class="price">
                    <span class="pri">￥200</span>
                    <span class="nub">1266付款</span>
                  </p>
                </div>
              </div> --%>
              <!-- <div class="item">
                <div class="img">
                  <a href="javascript:;"><img src="../res/static/img/paging_img2.jpg"></a>
                </div>
                <div class="text">
                  <p class="title">森系小清新四件套</p>
                  <p class="price">
                    <span class="pri">￥200</span>
                    <span class="nub">1266付款</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <div class="img">
                  <a href="javascript:;"><img src="../res/static/img/paging_img3.jpg"></a>
                </div>
                <div class="text">
                  <p class="title">森系小清新四件套</p>
                  <p class="price">
                    <span class="pri">￥200</span>
                    <span class="nub">1266付款</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <div class="img">
                  <a href="javascript:;"><img src="../res/static/img/paging_img1.jpg"></a>
                </div>
                <div class="text">
                  <p class="title">森系小清新四件套</p>
                  <p class="price">
                    <span class="pri">￥200</span>
                    <span class="nub">1266付款</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <div class="img">
                  <a href="javascript:;"><img src="../res/static/img/paging_img2.jpg"></a>
                </div>
                <div class="text">
                  <p class="title">森系小清新四件套</p>
                  <p class="price">
                    <span class="pri">￥200</span>
                    <span class="nub">1266付款</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <div class="img">
                  <a href="javascript:;"><img src="../res/static/img/paging_img3.jpg"></a>
                </div>
                <div class="text">
                  <p class="title">森系小清新四件套</p>
                  <p class="price">
                    <span class="pri">￥200</span>
                    <span class="nub">1266付款</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <div class="img">
                  <a href="javascript:;"><img src="../res/static/img/paging_img1.jpg"></a>
                </div>
                <div class="text">
                  <p class="title">森系小清新四件套</p>
                  <p class="price">
                    <span class="pri">￥200</span>
                    <span class="nub">1266付款</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <div class="img">
                  <a href="javascript:;"><img src="../res/static/img/paging_img2.jpg"></a>
                </div>
                <div class="text">
                  <p class="title">森系小清新四件套</p>
                  <p class="price">
                    <span class="pri">￥200</span>
                    <span class="nub">1266付款</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <div class="img">
                  <a href="javascript:;"><img src="../res/static/img/paging_img3.jpg"></a>
                </div>
                <div class="text">
                  <p class="title">森系小清新四件套</p>
                  <p class="price">
                    <span class="pri">￥200</span>
                    <span class="nub">1266付款</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <div class="img">
                  <a href="javascript:;"><img src="../res/static/img/paging_img1.jpg"></a>
                </div>
                <div class="text">
                  <p class="title">森系小清新四件套</p>
                  <p class="price">
                    <span class="pri">￥200</span>
                    <span class="nub">1266付款</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <div class="img">
                  <a href="javascript:;"><img src="../res/static/img/paging_img2.jpg"></a>
                </div>
                <div class="text">
                  <p class="title">森系小清新四件套</p>
                  <p class="price">
                    <span class="pri">￥200</span>
                    <span class="nub">1266付款</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <div class="img">
                  <a href="javascript:;"><img src="../res/static/img/paging_img3.jpg"></a>
                </div>
                <div class="text">
                  <p class="title">森系小清新四件套</p>
                  <p class="price">
                    <span class="pri">￥200</span>
                    <span class="nub">1266付款</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <div class="img">
                  <a href="javascript:;"><img src="../res/static/img/paging_img1.jpg"></a>
                </div>
                <div class="text">
                  <p class="title">森系小清新四件套</p>
                  <p class="price">
                    <span class="pri">￥200</span>
                    <span class="nub">1266付款</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <div class="img">
                  <a href="javascript:;"><img src="../res/static/img/paging_img2.jpg"></a>
                </div>
                <div class="text">
                  <p class="title">森系小清新四件套</p>
                  <p class="price">
                    <span class="pri">￥200</span>
                    <span class="nub">1266付款</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <div class="img">
                  <a href="javascript:;"><img src="../res/static/img/paging_img3.jpg"></a>
                </div>
                <div class="text">
                  <p class="title">森系小清新四件套</p>
                  <p class="price">
                    <span class="pri">￥200</span>
                    <span class="nub">1266付款</span>
                  </p>
                </div>
              </div> -->
            <!-- </div> -->
            
            <!-- <div id="demo0" style="text-align: center;"></div> -->
          </div>
        </div>
      </div>
    </div>
  </div>
<script>
	/* $(function(){
		$.ajax({
			type:"get",
			url:"${ pageContext.request.contextPath }/goodsIndex.gdo?type=nhwj",
			dataType:'json',
			success:function(data){
				var div = "";
				$.each(data,function(index,item){
					if(index <= 4){
						div += '<a href="javascript:;" class="top-img">'+'<img src="${ pageContext.request.contextPath }/res/static/img/s_img7.jpg" alt=""></a>';
					}
				})
				$("#2f").append(div);
			}
		});
	}); */
  layui.config({
    base: '../res/static/js/util/' //你存放新模块的目录，注意，不是layui的模块目录
  }).use(['mm','laypage','jquery'],function(){
      var laypage = layui.laypage,$ = layui.$,
     mm = layui.mm;
       laypage.render({
        elem: 'demo0'
        ,count: 100 //数据总数
      });
   

    $('.sort a').on('click',function(){
      $(this).addClass('active').siblings().removeClass('active');
    })
    $('.list-box dt').on('click',function(){
      if($(this).attr('off')){
        $(this).removeClass('active').siblings('dd').show()
        $(this).attr('off','')
      }else{
        $(this).addClass('active').siblings('dd').hide()
        $(this).attr('off',true)
      }
    })

});
</script>


</body>
</html>