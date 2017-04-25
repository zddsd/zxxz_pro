<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.net.*" %> 
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
<title>电影资讯小站注册</title>

<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet"
	media="screen">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.3/respond.min.js"></script>
    <![endif]-->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script type="text/javascript" src="js/jquery-1.8.3.min.js"
	charset="UTF-8"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>

<style type="text/css">
.btn:focus, .btn:active:focus, .btn.active:focus, .btn.focus, .btn:active.focus,
	.btn.active.focus {
	outline: none;
}

body {
	height: 100%;
	background-color: #ccc;
}

.row .col-sm-3  img:hover {
	background-color: #f5f5f5;
	margin-top: 5px; //
	margin-left: -50px;
	-webkit-transform: rotate(-7deg);
	-moz-transform: rotate(-7deg);
	-o-transform: rotate(-7deg); //
	-webkit-box-reflect: below 0px
		-webkit-gradient(linear, left top, left bottom, from(transparent),
		color-stop(.7, transparent), to(rgba(0, 0, 0, 0.4)));
}
</style>



</head>
<body>
	<!--插入navigation-->
	<jsp:include page="frame/navigation_bar_frame.jsp" flush="true" />
   <%
                                request.setCharacterEncoding("utf-8");
                                String zone=(String)request.getAttribute("zone");
                                String class_=(String)request.getAttribute("class_");
                               // out.print(zone);
                                %>

	<div class="container">
		<div
			style="padding: 100px; padding-bottom: 50px; background-color: #fff;">
			<div class="row">

				<div class="col-sm-12">
				   <div class="col-sm-12">
					<ul class="list-group">

						<li class="list-group-item">

							<div class="btn-group btn-group-justified" role="group"
								aria-label="...">
								<div class="btn-group" role="group">
									<button type="button" class="btn btn-default1"
										disabled="disabled">
										<strong>地区:</strong>
									</button>
								</div>
								<div class="btn-group" role="group">
								
									<a href="movieinfo-movieList.do?page=1&zone=<%=URLEncoder.encode(URLEncoder.encode("","utf-8"))%>&class_=<%=URLEncoder.encode(URLEncoder.encode(class_,"utf-8"))%>">
									<button type="button" class="btn btn-default1">不限</button>
									</a>
								</div>
      
								<div class="btn-group" role="group">
								
									<a href="movieinfo-movieList.do?page=1&zone=<%=URLEncoder.encode(URLEncoder.encode("中国","utf-8"))%>&class_=<%=URLEncoder.encode(URLEncoder.encode(class_,"utf-8"))%>">
									<button type="button" class="btn btn-default1">中国</button>
									</a>
								</div>
								<div class="btn-group" role="group">
									<a href="movieinfo-movieList.do?page=1&zone=<%=URLEncoder.encode(URLEncoder.encode("香港","utf-8"))%>&class_=<%=URLEncoder.encode(URLEncoder.encode(class_,"utf-8"))%>">
									<button type="button" class="btn btn-default1">香港</button>
									</a>
								</div>
								<div class="btn-group" role="group">
									<a href="movieinfo-movieList.do?page=1&zone=<%=URLEncoder.encode(URLEncoder.encode("美国","utf-8"))%>&class_=<%=URLEncoder.encode(URLEncoder.encode(class_,"utf-8"))%>">
									<button type="button" class="btn btn-default1">美国</button>
									</a>
								</div>
								<div class="btn-group" role="group">
										<a href="movieinfo-movieList.do?page=1&zone=<%=URLEncoder.encode(URLEncoder.encode("欧洲","utf-8"))%>&class_=<%=URLEncoder.encode(URLEncoder.encode(class_,"utf-8"))%>">
								
									<button type="button" class="btn btn-default1">欧洲</button>
									
									</a>
								</div>

								<div class="btn-group" role="group">
										<a href="movieinfo-movieList.do?page=1&zone=<%=URLEncoder.encode(URLEncoder.encode("日本","utf-8"))%>&class_=<%=URLEncoder.encode(URLEncoder.encode(class_,"utf-8"))%>">
								
									<button type="button" class="btn btn-default1">日本</button>
									
									</a>
								</div>


								<div class="btn-group" role="group">
								
										<a href="movieinfo-movieList.do?page=1&zone=<%=URLEncoder.encode(URLEncoder.encode("韩国","utf-8"))%>&class_=<%=URLEncoder.encode(URLEncoder.encode(class_,"utf-8"))%>">
								
									<button type="button" class="btn btn-default1">韩国</button>
									
									</a>
								</div>

							</div>

						</li>


						<li class="list-group-item">
							<div class="btn-group btn-group-justified" role="group"
								aria-label="...">
								<div class="btn-group" role="group">
									<button type="button" class="btn btn-default1"
										disabled="disabled">
										<strong>类型:</strong>
									</button>
								</div>
                                
           
								<div class="btn-group" role="group">
								
									<a href="movieinfo-movieList.do?page=1&zone=<%=URLEncoder.encode(URLEncoder.encode(zone,"utf-8"))%>&class_=<%=URLEncoder.encode(URLEncoder.encode("","utf-8"))%>">
								
									<button type="button" class="btn btn-default1">不限</button>
									</a>
								</div>
								<div class="btn-group" role="group">
								<a href="movieinfo-movieList.do?page=1&zone=<%=URLEncoder.encode(URLEncoder.encode(zone,"utf-8"))%>&class_=<%=URLEncoder.encode(URLEncoder.encode("爱情","utf-8"))%>">
									<button type="button" class="btn btn-default1">爱情</button>
								</a>
								</div>
								<div class="btn-group" role="group">
								<a href="movieinfo-movieList.do?page=1&zone=<%=URLEncoder.encode(URLEncoder.encode(zone,"utf-8"))%>&class_=<%=URLEncoder.encode(URLEncoder.encode("动作","utf-8"))%>">
								
									<button type="button" class="btn btn-default1">动作</button>
								</a>
								</div>

								<div class="btn-group" role="group">
									<a href="movieinfo-movieList.do?page=1&zone=<%=URLEncoder.encode(URLEncoder.encode(zone,"utf-8"))%>&class_=<%=URLEncoder.encode(URLEncoder.encode("科幻","utf-8"))%>">
								
									<button type="button" class="btn btn-default1">科幻</button>
								</a>
								</div>


								<div class="btn-group" role="group">
									<a href="movieinfo-movieList.do?page=1&zone=<%=URLEncoder.encode(URLEncoder.encode(zone,"utf-8"))%>&class_=<%=URLEncoder.encode(URLEncoder.encode("惊悚","utf-8"))%>">
								
									<button type="button" class="btn btn-default1">惊悚</button>
									
									</a>
								</div>

								<div class="btn-group" role="group">
									<a href="movieinfo-movieList.do?page=1&zone=<%=URLEncoder.encode(URLEncoder.encode(zone,"utf-8"))%>&class_=<%=URLEncoder.encode(URLEncoder.encode("战争","utf-8"))%>">
								
									<button type="button" class="btn btn-default1">战争</button>
                                     </a>
								</div>

								<div class="btn-group" role="group">
								
									<a href="movieinfo-movieList.do?page=1&zone=<%=URLEncoder.encode(URLEncoder.encode(zone,"utf-8"))%>&class_=<%=URLEncoder.encode(URLEncoder.encode("动画","utf-8"))%>">
								
									<button type="button" class="btn btn-default1">动画</button>
                                     
                                    </a>
								</div>
							</div>



						</li>


       
       
       
					</ul>
				</div>
         </div>
          	<s:if test="#request.movieList==null||#request.movieList.size()==0">
					
		           <div style="padding:270px;">
				       未查询到相关结果
				   </div>
				  
				</s:if>
				<s:else>
				
          <div class="col-sm-12">
				<br>
				<hr>
			
				
				 <s:iterator value="#request.movieList">
				<div class="col-sm-4" style="padding:20px">
					<a href="movieinfo-show.do?id=${id}">	 <img class="img-responsive img-thumbnail"
						src="${posterUrl}" alt="${name}">
					<div style="width: 100%; float:center; text-align: left;">
						<h4>${name}</h4></a>
					</div>
					
					
					<div style="width: 100%; float: left; text-align: left">演员:${actor}</div>
				</div>
			</s:iterator>
				
				
            
                  
 <div class="col-sm-12">

               <!--  分页显示结果：-->
			
	   <% 
	   
	  
	   Object a=request.getAttribute("page");
	   Object b=request.getAttribute("rpage");
	   int pageNo=1;
	    int rpage=1;
	   if(a!=null&&b!=null)
	   {
             pageNo=Integer.parseInt(a.toString());
      		rpage=Integer.parseInt(b.toString());
             //out.print(pageNo);
		}	

	   
	 
	   %>
        
        
<nav aria-label="Page navigation">
  <ul class="pagination">
  
  <li><a href="movieinfo-movieList.do?zone=${zone}&class_=${class_}&page=1">首页</a></li>
    <li>
      <a href="movieinfo-movieList.do?zone=${zone}&class_=${class_}&page=<%
      if(pageNo>1)
      {out.print(pageNo-1);
      }
      else if(pageNo<=1)
      {
      out.print(1);
      }
      %>" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
     <% for(int i=1;i<=rpage;i++)
        {
          %>
           <li><a href="movieinfo-movieList.do?zone=${zone}&class_=${class_}&page=<%=i%>">
           <%=i%>
           </a></li>
          <% 
        }
     
     
      %>
  
    <li>
      <a href="movieinfo-movieList.do?zone=${zone}&class_=${class_}&page=<%
      if(pageNo<rpage)
      {out.print(pageNo+1);
      }
      else if(pageNo==rpage)
      {
      out.print(rpage);
      }
      %>" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
    
  <!--   <li><a href="movieinfo-movieList.do?zone=${zone}&class_=${class_}&page=<s:property value="#request.rpage"/>">末页</a></li> --> 
   <li><a href="movieinfo-movieList.do?zone=${zone}&class_=${class_}&page=<%=rpage%>">末页</a></li>
  </ul>
</nav>
</div>
</s:else>
</div>
			</div>
		</div>





		
	

	<!--插入footer-->
	<jsp:include page="frame/footer_frame.html" flush="true"></jsp:include>


</body>
</html>
