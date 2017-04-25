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

<style type="text/css">

body{
      height: 100%;
   //   background-color: #ccc;
    }
.table1{
	width:100%;
}
.table tr td{
    text-align:left;
}
#context {
	border: 1px #ccc solid;
	border-top: none;
	border-bottom: none;
	border-left: none;
}

#area {
	width: 100%;
	height: 70px;
}

#pinglun {
	width: 100%;
}

table tr td{
    

}
</style>
</head>
<body>


 <s:if test="#session.loginusername == null || #session.loginusername.size() == 0">
  <script> 
var t=3;//设定跳转的时间 
setInterval("refer()",1000); //启动1秒定时 
function refer(){ 
if(t==0){ 
location="user_index.jsp"; //#设定跳转的链接地址 
} 
document.getElementById('show').innerHTML=""+t+"默认页面"; // 显示倒计时 
t--; // 计数器递减 

} 
</script> 
<span id="show"></span> 
  </s:if>
  
  	
	<s:else>
 <jsp:include page="frame/navigation_bar_frame.jsp" flush="true" />
 
	
	        <div class="container">
   <div style="padding: 100px; background-color: #fff;">
    
			<div style="text-align:center; padding:20px">	<h1>收藏信息</h1></div> 
			 <hr width=80% size=4 color=#00ffff	style="FILTER: alpha(opacity = 100, finishopacity = 0, style = 4)">
              <div class="row">
   
   
         <div class="list-group col-sm-4">
		   
		   
		   
			<a href="#" class="list-group-item">电影</a> 
			
		  
			
		</div>
		
		
		
		<div class="list-group col-sm-8">
			<div class="thumbnail">
				<table class="table table-striped table-hover">



					

                         <s:iterator value="#request.star">
					<tr>
						<td><a href="movieinfo-show.do?id=${context_id}" title="${name}"><small>${name}</small></a>
						</td>
						<td><small>收藏日期:${date}</small></a></td>
						<td><small><a href="star-delete.do?star_id=${Star_id}&class_=movie&userid=${user_id}&page=${page}">删除</a></small></td>
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
 
  <li><a href="star-ListByPage.do?userid=111&class_=movie&page=1">首页</a></li>
    <li>
      <a href="star-ListByPage.do?userid=111&class_=movie&page=<%
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
           <li><a href="star-ListByPage.do?userid=111&class_=movie&page=<%=i%>">
           <%=i%>
           </a></li>
          <% 
        }
     
     
      %>
  
    <li>
      <a href="star-ListByPage.do?userid=111&class_=movie&page=<%
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
   <li><a href="star-ListByPage.do?userid=111&class_=movie&page=<%=rpage%>">末页</a></li>
  </ul>
</nav> 
		
    </div>
    </div>
   </div>
   </div>
    
    
    
     <jsp:include page="frame/footer_frame.html" flush="true"></jsp:include>
     
 </s:else>
</body>
</html>