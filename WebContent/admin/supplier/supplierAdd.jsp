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
            	<p>供应商基本信息</p>
            </h2>
            <div class="subfild-content base-info">
            	<div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>供应商名称</label>
                	<div class="kv-item-content">
                    	<input type="text" placeholder="供应商名称" />
                    </div>
                    <span class="kv-item-tip">名称字数限制在35个字符</span>
                </div>
                <!-- <div class="kv-item ue-clear time">
                	<label><span class="impInfo">*</span>发布时间</label>
                	<div class="kv-item-content">
                    	<input type="text" placeholder="文章标题" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" />
                        <i class="time-icon"></i>
                    </div>
                    <span class="kv-item-tip error">这是一个错误信息</span>
                </div> -->
                
                <!-- <div class="kv-item ue-clear">
                	<label>商品分类</label>
                	<div class="kv-item-content">
                    	<select>
                        	<option>女孩玩具</option>
                            <option>男孩玩具</option>
                            <option>婴儿玩具</option>
                        </select>
                    </div>
                    <span class="kv-item-tip success">成功信息</span>
                </div> -->
                <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>联系人</label>
                	<div class="kv-item-content">
                    	<input type="text" placeholder="联系人" />
                    </div>
                    <!-- <span class="kv-item-tip">商品个数为整数</span> -->
                </div>
                <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>供应商地址</label>
                	<div class="kv-item-content">
                    	<input type="text" placeholder="供应商地址" />
                    </div>
                    <!-- <span class="kv-item-tip">请正确填写商品价格</span> -->
                </div>
                <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>供应商邮箱</label>
                	<div class="kv-item-content">
                    	<input type="text" placeholder="供应商邮箱" />
                    </div>
                    <!-- <span class="kv-item-tip">请正确填写商品价格</span> -->
                </div>
                <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>供应商电话</label>
                	<div class="kv-item-content">
                    	<input type="text" placeholder="供应商电话" />
                    </div>
                    <!-- <span class="kv-item-tip">请正确填写商品价格</span> -->
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
                
                
                <!-- <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>商品图</label>
                	<div class="kv-item-content file">
						<span class="text"></span>
                        <input type="file" />
                        <input type="button" class="button normal long2" value="浏览.." />
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
