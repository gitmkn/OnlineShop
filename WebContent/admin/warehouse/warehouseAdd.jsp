<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../control.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=emulateIE7" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/admin/css/style.css" />
<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/admin/css/WdatePicker.css" />
<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/admin/css/skin_/form.css" />
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
                    	<input type="text"  placeholder="入库单ID" />
                    </div>
                    <span class="kv-item-tip">商品名称字数限制在35个字符</span>
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
            </div>
            
            <div class="buttons">
                <input class="button" type="button" value="确认添加" />
            </div>
        </div>
    </div>
</div>
</body>
</html>
