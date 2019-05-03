<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Document</title>
  <link rel="stylesheet" type="text/css" href="../res/static/css/main.css">
  <link rel="stylesheet" type="text/css" href="../res/layui/css/layui.css">
  <script type="text/javascript" src="../res/layui/layui.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
</head>
<body>
<%@ include file="head.jsp" %>
  <div class="content content-nav-base commodity-content">
    <%@ include file="nav.jsp" %>
    <div class="commod-cont-wrap">
      <div class="commod-cont w1200 layui-clear">
        <div class="left-nav">
          <div class="title">个人中心</div>
          <div class="list-box">
            <dl>
             <dt>我的中心</dt>
             <dd><a href="javascript:;">购物车</a></dd>
             <dd><a href="javascript:;">我的订单</a></dd>
            </dl>
            <dl>
             <dt>我的账号</dt>
             <dd><a href="javascript:;">我的资料</a></dd>
             <dd><a href="javascript:;">修改密码</a></dd>
             <dd><a href="javascript:;">退出</a></dd>
            </dl>
          </div>
        </div>
        <div class="right-cont-wrap">
          <div class="right-cont">
            <div class="sort layui-clear">
              <a class="active" href="javascript:;" event = 'volume'>销量</a>
              <a href="javascript:;" event = 'price'>价格</a>
              <a href="javascript:;" event = 'newprod'>新品</a>
              <a href="javascript:;" event = 'collection'>收藏</a>
            </div>
            <div class="prod-number">
              <span>200个</span>
            </div>
            <div class="cont-list layui-clear" id="list-cont">
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
                  <p class="title">森系小清新四件套<span>&nbsp;&nbsp;&nbsp;&nbsp;2019/05/12</span></p>
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
              </div>
            </div>
            <!-- 模版引擎导入 -->
            <!-- <script type="text/html" id="demo">
              {{# layui.each(d.menu.milk.content,function(index,item){}}    
                <div class="item">
                  <div class="img">
                    <a href="javascript:;"><img src="{{item.img}}"></a>
                  </div>
                  <div class="text">
                    <p class="title"></p>
                    <p class="price">
                      <span class="pri">{{item.pri}}</span>
                      <span class="nub">{{item.nub}}</span>
                    </p>
                  </div>
                </div>
              {{# }); }}
            </script> -->
            <div id="demo0" style="text-align: center;"></div>
          </div>
        </div>
      </div>
    </div>
  </div>
<script>

  layui.config({
    base: '../res/static/js/util/' //你存放新模块的目录，注意，不是layui的模块目录
  }).use(['mm','laypage','jquery'],function(){
      var laypage = layui.laypage,$ = layui.$,
     mm = layui.mm;
       laypage.render({
        elem: 'demo0'
        ,count: 100 //数据总数
      });


    // 模版引擎导入
    //  var html = demo.innerHTML;
    //  var listCont = document.getElementById('list-cont');
    //  // console.log(layui.router("#/about.html"))
    // mm.request({
    //     url: '../json/commodity.json',
    //     success : function(res){
    //       console.log(res)
    //       listCont.innerHTML = mm.renderHtml(html,res)
    //     },
    //     error: function(res){
    //       console.log(res);
    //     }
    //   })

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