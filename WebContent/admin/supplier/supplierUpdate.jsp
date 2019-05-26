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
<script type="text/javascript" src="${ pageContext.request.contextPath }/admin/js/jquery-3.4.1.js"></script>
<title>卡通玩具销售系统后台</title>
</head>
 <%  
String getId = request.getParameter("getId");
%> 
<body>
<div id="container">
	<div id="hd">
    </div>
    <div id="bd">
    	<div id="main">
            <h2 class="subfild">
            	<p>供应商基本信息修改</p>
            </h2>
            <form method="post">
            <input type="hidden" name="id" value="<%=getId %>"/>
            <div class="subfild-content base-info">
            	<div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>供应商名称</label>
                	<div class="kv-item-content">
                    	<input type="text" name="name"/>
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
                    	<input type="text" name="username" />
                    </div>
                    <!-- <span class="kv-item-tip">商品个数为整数</span> -->
                </div>
                <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>供应商地址</label>
                	<div class="kv-item-content">
                    	<input type="text" name="address" />
                    </div>
                    <!-- <span class="kv-item-tip">请正确填写商品价格</span> -->
                </div>
                <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>供应商邮箱</label>
                	<div class="kv-item-content">
                    	<input type="text" name="email"/>
                    </div>
                    <!-- <span class="kv-item-tip">请正确填写商品价格</span> -->
                </div>
                <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>供应商电话</label>
                	<div class="kv-item-content">
                    	<input type="text" name="phone"/>
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
                <input id="submit" class="button" type="button" value="确认修改" />
            </div>
            </form>
        </div>
    </div>
</div>
</body>

<script type="text/javascript">
	var getId = '<%=getId%>';
	$(function(){
		$.ajax({
			type:'get',
			url:'${ pageContext.request.contextPath }/supplier.sdo?supplierid='+getId,
			dataType:'json',
			success:function(data){
				$('input[name=name]').val(data.supplier_name);
				$('input[name=username]').val(data.supplier_username);
				$('input[name=address]').val(data.supplier_address);
				$('input[name=email]').val(data.supplier_email);
				$('input[name=phone]').val(data.supplier_phone);
			}
		});
	});
	$("#submit").click(function(){
		$.ajax({
			type:'get',
			url:'${ pageContext.request.contextPath }/supplierUpdate.sdo',
			data:$("form").serialize(),
			success:function(data){
				if(data == 1){
					alert("修改成功");
					window.location.href="supplierList.jsp";
				}else{
					alert("修改失败，请重新修改");
				}
			}
		});
	});
</script>
</html>
