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
<title>电影资讯小站</title>

<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->



<style type="text/css">


#context {
	border: 1px #ccc solid;
	border-top: none;
	border-bottom: none;
	border-left: none;
}

img{
  width:135px;
  width:235px;

}

</style>
</head>
<body  style=" background-color:#fff;">
	<jsp:include page="frame/navigation_bar_frame.jsp" flush="true" />

	<div class="container">
		<div style="padding: 70px;background-color: #fff;">
          
         <div class="row">
				<div class="col-sm-8" style="padding: 50px;" id="context">
				   <s:if test="#request.movieResult == null || #request.movieResult.size() == 0">
		没有找到相关结果
	</s:if>
	<s:else>
				 <s:iterator value="#request.movieResult" status="status">
				 <div  class="col-sm-12">
				 <h3><label class="label label-success"><s:property value="%{#status.index+1}"/></label></h3>
				 </div>
					
				 <div class="col-sm-6">
				 <a href="movieinfo-show.do?id=${id}">	
					<img class="img-responsive img-thumbnail" src=${posterUrl} alt=${name}>
						<h4>${name}</h4></a>
						

						
					</div>
					 <div class="col-sm-6">
					 </div>
					
					</s:iterator>
					</s:else>
				 
				</div>
				</div>
          </div>
          </div>
	          
      
    
      
         
    <jsp:include page="frame/footer_frame.html" flush="true"></jsp:include>
      
    
    </body>
</html>
