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
<script type="text/javascript" src="${ pageContext.request.contextPath }/admin/js/jquery.js"></script>
<script type="text/javascript" src="${ pageContext.request.contextPath }/admin/js/global.js"></script>
<script type="text/javascript" src="${ pageContext.request.contextPath }/admin/js/jquery.select.js"></script>
<script type="text/javascript" src="${ pageContext.request.contextPath }/admin/js/WdatePicker.js"></script>
<script type="text/javascript" src="${ pageContext.request.contextPath }/admin/js/editor_api.js"></script>
<title>卡通玩具销售系统后台</title>
</head>

<body>
<div id="container">
	<div id="hd">
    </div>
    <div id="bd">
    	<div id="main">
            <h2 class="subfild">
            	<span>密码修改</span>
            </h2>
            <div class="subfild-content base-info">
            	<div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>新密码</label>
                	<div class="kv-item-content">
                    	<input type="text" placeholder="请输入新密码" />
                    </div>
                    <span class="kv-item-tip">密码位数请输入6位以上</span>
                </div>
               <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>再次输入</label>
                	<div class="kv-item-content">
                    	<input type="text" placeholder="请输入新密码"/>
                    </div>
                </div>
            </div>
         
            
            
            <div class="buttons">
                <input class="button" type="button" value="确认修改" />
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
