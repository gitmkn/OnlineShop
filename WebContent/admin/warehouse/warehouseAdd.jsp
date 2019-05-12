<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=emulateIE7" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/admin/css/style.css" />
<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/admin/css/WdatePicker.css" />
<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/admin/css/skin_/form.css" />
<link href="${ pageContext.request.contextPath }/admin/umeditor/themes/default/_css/umeditor.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="${ pageContext.request.contextPath }/admin/js/jquery.js"></script>
<script type="text/javascript" src="${ pageContext.request.contextPath }/admin/js/global.js"></script>
<script type="text/javascript" src="${ pageContext.request.contextPath }/admin/js/jquery.select.js"></script>
<script type="text/javascript" src="${ pageContext.request.contextPath }/admin/js/WdatePicker.js"></script>
<script type="text/javascript">
var beanurl = '${ pageContext.request.contextPath }/admin/';
window.UMEDITOR_HOME_URL = beanurl+'umeditor/';  // 请换成绝对路径
</script>
<script type="text/javascript" src="${ pageContext.request.contextPath }/admin/js/umeditor.config.js"></script>
<script type="text/javascript" src="${ pageContext.request.contextPath }/admin/js/editor_api.js"></script>
<script type="text/javascript" src="${ pageContext.request.contextPath }/admin/umeditor/lang/zh-cn/zh-cn.js"></script>
<title>卡通玩具销售系统后台</title>
</head>

<body>
<div id="container">
	<div id="hd">
    </div>
    <div id="bd">
    	<div id="main">
            <h2 class="subfild">
            	<p>商品入库基本信息</p>
            </h2>
            <div class="subfild-content base-info">
            	<div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>入库单ID</label>
                	<div class="kv-item-content">
                    	<input type="text" placeholder="入库单ID" />
                    </div>
                    <span class="kv-item-tip">商品名称字数限制在35个字符</span>
                </div>
                <div class="kv-item ue-clear time">
                	<label><span class="impInfo">*</span>入库时间</label>
                	<div class="kv-item-content">
                    	<input type="text" value="2019-05-02-13:23:05"/>
                        <i class="time-icon"></i>
                    </div>
                    <!-- <span class="kv-item-tip error">这是一个错误信息</span> -->
                </div>
                
                <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>数量</label>
                	<div class="kv-item-content">
                    	<input type="text" placeholder="数量" />
                    </div>
                    <span class="kv-item-tip">数为整数</span>
                </div>
                <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>管理员</label>
                	<div class="kv-item-content">
                    	<input type="text" value="admin" />
                    </div>
                    <span class="kv-item-tip">请正确填写商品价格</span>
                </div>
                <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>商品ID</label>
                	<div class="kv-item-content">
                    	<input type="text" value="201905030912" />
                    </div>
                    <span class="kv-item-tip">请正确填写商品价格</span>
                </div>
                <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>供应商ID</label>
                	<div class="kv-item-content">
                    	<input type="text" placeholder="供应商ID" />
                    </div>
                    <span class="kv-item-tip">请正确填写商品价格</span>
                </div>
                <!-- <div class="kv-item ue-clear">
                	<label>是否审核</label>
                	<div class="kv-item-content">
                    	<span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="need" />
                                <span class="radio"></span>
                            </span>
                            <span class="text">是</span>
                        </span>
                    	<span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="need" />
                                <span class="radio"></span>
                            </span>
                            <span class="text">否</span>
                        </span>
                        
                    </div>
                    <span class="kv-item-tip">标题字数限制在35个字符</span>
                </div> -->
                
                
              
            </div>
            
            
            <div class="buttons">
                <input class="button" type="button" value="确认添加" />
            </div>
        </div>
    </div>
</div>
</body>

<script type="text/javascript">
	$('select').select();
	showRemind('input[type=text],textarea','color5');
	UM.getEditor('content');
</script>
</html>
