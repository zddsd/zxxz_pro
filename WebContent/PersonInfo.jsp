<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>个人信息</title>
	<meta name="renderer" content="webkit">	
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">	
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">	
	<meta name="apple-mobile-web-app-status-bar-style" content="black">	
	<meta name="apple-mobile-web-app-capable" content="yes">	
	<meta name="format-detection" content="telephone=no">	
	<link rel="stylesheet" type="text/css" href="common/layui/css/layui.css" media="all">
	<link rel="stylesheet" type="text/css" href="common/bootstrap/css/bootstrap.css" media="all">
	<link rel="stylesheet" type="text/css" href="common/global.css" media="all">
	<link rel="stylesheet" type="text/css" href="common/css/personal.css" media="all">
</head>
<body>

 <s:if test="#session.adminname==null||#rqeust.adminname.size()==0">
  抱歉，请您先登陆》》》
   
   <a href="login.jsp">点我手动跳转</a>
 <script> 
var t=1;//设定跳转的时间 
setInterval("refer()",1000); //启动1秒定时 
function refer(){ 
if(t==0){ 
location="login.jsp"; //#设定跳转的链接地址 
} 
document.getElementById('show').innerHTML=""+t+"登陆页面"; // 显示倒计时 
t--; // 计数器递减 

} 
</script> 
<span id="show"></span> 
  </s:if>
  <s:else>
<section class="layui-larry-box">
	<div class="larry-personal">
		<header class="larry-personal-tit">
			<span>个人信息</span>
		</header><!-- /header -->
		<div class="larry-personal-body clearfix">
			<form class="layui-form col-lg-5" action="" method="post">
				<div class="layui-form-item">
					<label class="layui-form-label">用户名</label>
					<div class="layui-input-block">  
						<input type="text" name="title"  autocomplete="off"  class="layui-input layui-disabled" value="<s:property value="#request.admininfo.name"/>" disabled="disabled" >
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">所属角色</label>
					<div class="layui-input-block">
						<input type="text" name="username"  autocomplete="off" class="layui-input layui-disabled" value="管理员" disabled="disabled">
					</div>
				</div>
			<!-- <div class="layui-form-item">
					<label class="layui-form-label">真实姓名</label>
					<div class="layui-input-block">
						<input type="text" name="username"  autocomplete="off" class="layui-input" value="Larry">
					</div>
				</div> -->	
				<div class="layui-form-item">
					<label class="layui-form-label">所属分组</label>
					<div class="layui-input-block">
						<input type="text" name="username"  autocomplete="off" class="layui-input layui-disabled" value="<s:property value="#request.admininfo.group"/>" disabled="disabled">
					</div>
				</div>
				
			
				 
				<div class="layui-form-item">
					<label class="layui-form-label">界面语言</label>
					<div class="layui-input-block">
						<select name="interest" lay-filter="aihao">
							<option value=""></option>
							<option value="0" selected="selected">中文</option>
						<!--  	<option value="1">英文</option> -->
						</select>
					</div>
				</div>

				
				
		<!--  		<div class="layui-form-item">
					<div class="layui-input-block">
						<button class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>
						<button type="reset" class="layui-btn layui-btn-primary">重置</button>
					</div>
				</div>
		-->
		      <div class="layui-form-item">
					<div class="layui-input-block">
		     <a href="index.jsp">点我返回</a>	
		     	</div>
				</div>	
			</form>
		</div>
	</div>
</section>
<script type="text/javascript" src="common/layui/layui.js"></script>
<script type="text/javascript">
	layui.use(['form','upload'],function(){
         var form = layui.form();
         layui.upload({ 
             url: '' ,//上传接口 
             success: function(res){
              //上传成功后的回调 
              console.log(res) 
            } 
         });

	});
</script>

</s:else>
</body>
</html>