<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="s" uri="/struts-tags" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
    
    收藏成功，正在跳转》》》
   
   <a href="star-ListByPage.do?userid=${userid}&class_=${class_}&page=${page}">点我手动跳转</a>
   <input id="contextid1" type="hidden" value="userid=${userid}&class_=${class_}&page=${page}"/>">
 <script> 
var t=0;//设定跳转的时间 
var q=document.getElementById("contextid1").value;
var url="star-ListByPage.do?"+q;
setInterval("refer()",1000); //启动1秒定时 
function refer(){ 
if(t==0){ 
location=url; //#设定跳转的链接地址 
} 
document.getElementById('show').innerHTML=""+t+"信息页面"; // 显示倒计时 
t--; // 计数器递减 

} 
</script> 
<span id="show"></span> 
</body> 
</html> 