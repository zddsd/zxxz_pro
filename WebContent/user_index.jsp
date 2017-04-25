<%@page language="java" contentType="text/html; charset=UTF-8"
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
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>电影资讯小站</title>

<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- <script src="js/jquery.min.js"></script> -->
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>
    <style type="text/css">
.carousel-inner .item img {
	width: 100%;
	height: 550px;
}

.row .col-sm-2 img {
	width: 100%;
	height: 250px;
}

.movie_context {
	padding-top: 20px;
}

.center {
	width: 90%;
	display: table;
	margin-left: 0px;
	margin-right: 0px;
	margin-top: 0px;
	background-color: #FFFAFA;
}

h4 {
	text-align: center;
}
.re{
   
   
}
</style>
<style type="text/css">
@
-moz-document url-prefix () {fieldset { display:table-cell;
	
}
}
</style>
</head>
<body style="background-color:#fff;">


	<jsp:include page="frame/navigation_bar_frame.jsp" flush="true" />
    <jsp:include page="frame/movie_bar_show.jsp" flush="true" />


<div class="container" style="padding-top: 20px; background-color: #fff;">

      
	

		<div class="movie_context">
		
			<ol class="breadcrumb" style="background-color: #fff">
				<li><h3>热门推荐</h3></li>
				</ol>
			<div class="container">
				<div class="row">
				
				    <div class="col-sm-8">
				    
				     <s:iterator value="#request.re">
					<div class="col-sm-4">
					<a href="movieinfo-show.do?id=${id}">	
					<img class="img-responsive img-thumbnail re"src=${posterUrl} alt=${name}>
						<h4>${name}   </h4> 
					</a>
					</div>
                     </s:iterator>
       
                   </div>


					<div class="col-sm-4">


						<div class="list-group">
						<div class="center">
							<h4><span>最新资讯</span></h4>
							 <s:iterator value="#request.top">
                              <a href="news-show.do?newsid=${id}" class="list-group-item"><span>${title} ${date}</span></a>
                              </s:iterator> 
						</div>
					</div>


					<div class="list-group">
						<div class="center">
							<h4><span>最新上架</span></h4> 
							
							<s:iterator value="#request.movietop">
                            <a href="movieinfo-show.do?id=${id} " class="list-group-item"><span>${name} ${showDate}</span></a> 
                              </s:iterator> 
							
							
						</div>
					</div>
					</div>


				</div>
			
		</div>
		<!--电影资讯展示-->
	
            
            
         </div>   
	</div>  
	
	
     <jsp:include page="frame/footer_frame.html" flush="true"></jsp:include>
 
	 
	  
	 
	
	
</body>
</html>

 