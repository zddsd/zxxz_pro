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
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>电影资讯小站</title>

<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!--<script src="js/jquery.min.js"></script>-->
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script src="js/bootstrap.min.js"></script>
<style type="text/css">
@
-moz-document url-prefix () {fieldset { display:table-cell;
	
}
}
</style>
</head>
<body style="background-color:#fff;">
	<jsp:include page="frame/navigation_bar_frame.jsp" flush="true" />
    <jsp:include page="frame/news__bar_show.jsp" flush="true" />
	<div class="container" style="padding-top: 20px;  background-color: #fff;">
		<div class="row">
			
		<!--左侧menu-->


		<div class="list-group col-sm-4">
			<a href="news-newsMenu.do?page=1&zone=1" class="list-group-item">华语资讯</a> 
			<a href="news-newsMenu.do?page=1&zone=2" class="list-group-item">欧美银幕</a> 
			<a href="news-newsMenu.do?page=1&zone=3" class="list-group-item">日韩频道</a>
			<a href="news-newsMenu.do?page=1&zone=4" class="list-group-item">全球精选</a>
		</div>


		<!--右侧新闻资讯-->

		<div class="list-group col-sm-8">
			<div class="thumbnail">
				<table class="table table-striped table-hover">



					

                         <s:iterator value="#request.menu">
					<tr>
						<td><a href="news-show.do?newsid=${id}" title="${title}"><small>${title}</small></a>
						</td>
						<td><small>${date}</small></a></td>
					</tr>
                        </s:iterator>




				</table>
			</div>


			<!--页码标签-->
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
  
  <li><a href="news-newsMenu.do?zone=<s:property value="#request.zone1"/>&page=1">首页</a></li>
    <li>
      <a href="news-newsMenu.do?zone=<s:property value="#request.zone1"/>&page=<%
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
           <li><a href="news-newsMenu.do?zone=<s:property value="#request.zone1"/>&page=<%=i%>">
           <%=i%>
           </a></li>
          <% 
        }
     
     
      %>
  
    <li>
      <a href="news-newsMenu.do?zone=<s:property value="#request.zone1"/>&page=<%
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
    
  <!--   <li><a href="news-newsMenu.do?zone=${id}&page<s:property value="#request.rpage"/>">末页</a></li> --> 
   <li><a href="news-newsMenu.do?zone=<s:property value="#request.zone1"/>&page=<%=rpage%>">末页</a></li>
  </ul>
</nav>


<!-- 页码结束 -->

		</div>
		</div>
		
		</div>
		 <jsp:include page="frame/footer_frame.html" flush="true"></jsp:include>
</body>
</html>
