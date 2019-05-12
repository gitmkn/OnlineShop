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
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
</head>
<body>
<%@ include file="head.jsp" %>

  <div class="content content-nav-base  login-content">
    <%@ include file="nav.jsp" %>
    <div class="login-bg">
      <div class="login-cont w1200">
        <div class="form-box">
          <form class="layui-form" method="post" action="${ pageContext.request.contextPath }/Login.udo">
            <legend>手机号登录</legend>
            <div class="layui-form-item">
              <div class="layui-inline iphone">
                <div class="layui-input-inline">
                  <i class="layui-icon layui-icon-cellphone iphone-icon"></i>
                  <input type="tel" name="phone" id="phone" lay-verify="required|phone" placeholder="请输入手机号" autocomplete="off" class="layui-input">
                </div>
              </div>
              <div class="layui-inline iphone">
                <div class="layui-input-inline">
                  <i class="layui-icon layui-icon-cellphone iphone-icon"></i>
                  <input type="password" name="password" id="password" lay-verify="required|password" placeholder="请输入密码" autocomplete="off" class="layui-input">
                </div>
              </div>
            </div>
            <span id="msg"></span>
            <div class="layui-form-item login-btn">
              <div class="layui-input-block">
                <button type="submit" class="layui-btn" lay-submit="" lay-filter="demo1">登录</button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>

  <%@ include file="foot.jsp" %>
  <script type="text/javascript">
   layui.config({
      base: '${ pageContext.request.contextPath }/res/static/js/util' //你存放新模块的目录，注意，不是layui的模块目录
    }).use(['jquery','form'],function(){
          var $ = layui.$,form = layui.form;


        $("#find").click(function() {
            if(!/^1\d{10}$/.test($("#phone").val())){
              layer.msg("请输入正确的手机号");
              return false;
            }
           /*  var obj=this;
            $.ajax({
                type:"get",
                url:"json/login.json",
                dataType:"json",//返回的
                success:function(data) {
                    
                    if(data.result){
                        $("#find").addClass(" layui-btn-disabled");
                        $('#find').attr('disabled',"true");
                        settime(obj);
                        $("#msg").text(data.msg);
                    }else{
                        layer.msg(data.msg);
                    }
                },
                error:function(msg) {
                    console.log(msg);
                }
            });  */
        })
        
    })
  </script>

</body>
</html>