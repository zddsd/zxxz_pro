<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
  <head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
	<meta name="renderer" content="webkit|ie-comp|ie-stand">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta http-equiv="Cache-Control" content="no-siteapp" />
	<meta name="keywords" content="scclui框架">
	<meta name="description" content="scclui为轻量级的网站后台管理系统模版。">
    <title>首页</title>
	
	<link rel="stylesheet" href="common/css/sccl.css">
	<link rel="stylesheet" type="text/css" href="common/skin/qingxin/skin.css" id="layout-skin"/>
    
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
	<div class="layout-admin">
		<header class="layout-header">
			<span class="header-logo">电影资讯小站后台管理系统</span> 
			<a class="header-menu-btn" href="javascript:;"><i class="icon-font">&#xe600;</i></a>
			<ul class="header-bar">
				<li class="header-bar-role">
				<s:if test="#session.group==1">
				超级管理员
				</s:if>
				
				</li>
				<li class="header-bar-nav">
					<a href="javascript:;"><s:property value="#session.adminname"/><i class="icon-font" style="margin-left:5px;">&#xe60c;</i></a>
					<ul class="header-dropdown-menu">
						<li><a href="admin-admininfo.do?id=<s:property value="#session.adminid"/>">个人信息</a></li>
						<!-- <li><a href="javascript:;">切换账户</a></li>  -->
						<li><a href="Logout-adminlogout.do" >退出</a></li>
					</ul>
				</li>
				<li class="header-bar-nav"> 
					<a href="javascript:;" title="换肤"><i class="icon-font">&#xe608;</i></a>
					<ul class="header-dropdown-menu right dropdown-skin">
						<li><a href="javascript:;" data-val="qingxin" title="清新">清新</a></li>
						<li><a href="javascript:;" data-val="blue" title="蓝色">蓝色</a></li>
						<li><a href="javascript:;" data-val="molv" title="墨绿">墨绿</a></li>
						
					</ul>
				</li>
			</ul>
		</header>
		<aside class="layout-side">
			<ul class="side-menu">
			  
			</ul>
		</aside>
		
		<div class="layout-side-arrow"><div class="layout-side-arrow-icon"><i class="icon-font">&#xe60d;</i></div></div>
		
		<section class="layout-main">
			<div class="layout-main-tab">
				<button class="tab-btn btn-left"><i class="icon-font">&#xe60e;</i></button>
                <nav class="tab-nav">
                    <div class="tab-nav-content">
                        <a href="javascript:;" class="content-tab active" data-id="Home.jsp">首页</a>
                    </div>
                </nav>
                <button class="tab-btn btn-right"><i class="icon-font">&#xe60f;</i></button>
			</div>
			<div class="layout-main-body">
				<iframe class="body-iframe" name="iframe0" width="100%" height="99%" src="Home.jsp" frameborder="0" data-id="Home.jsp" seamless></iframe>
			</div>
		</section>
		<div class="layout-footer">版权所有@</div>
	</div>
	<script type="text/javascript" src="common/lib/jquery-1.9.0.min.js"></script>
	<script type="text/javascript" src="common/js/sccl.js"></script>
	<script type="text/javascript" src="common/js/sccl-util.js"></script>
	</s:else>
  </body>
</html>
