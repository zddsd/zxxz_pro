<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
    
    保存成功，正在跳转》》》
   
   <a href="javascript:history.go(-1);location.reload()">点我手动跳转</a>
 <script> 
var t=3;//设定跳转的时间 
setInterval("refer()",1000); //启动1秒定时 
function refer(){ 
if(t==0){ 
location="news_admin_upload.jsp"; //#设定跳转的链接地址 
} 
document.getElementById('show').innerHTML=""+t+"资讯上传页面"; // 显示倒计时 
t--; // 计数器递减 

} 
</script> 
<span id="show"></span> 
</body> 
</html> 