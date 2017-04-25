<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="s" uri="/struts-tags" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>电影资讯小站首页</title>

<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>
</head>
<body>
        <div class="container" style="padding-top: 70px; padding-bottom:20px;background-color: #fff;">
		<div class="row">
			
           <div class="col-sm-8">
				
				
				<a href="news-show.do?newsid=4120003"><img class="img-responsive img-thumbnail" src="image/thr-final.jpg" style="width: 100% height:100%" /></a>
					
			</div>
			<div class="col-sm-4">
				<a href="news-show.do?newsid=4120002"><img class="img-responsive img-thumbnail" src="image/jgl_01.jpg" style="width: 100% height:50%" /></a>
				
				 <a href="news-show.do?newsid=4120004"><img class="img-responsive img-thumbnail" src="image/mv_01.jpg" style="width: 100% height:50%" /></a>
			</div>

		</div>
       </div>
       
</body>
</html>