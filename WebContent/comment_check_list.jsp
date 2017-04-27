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
<!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>
<style type="text/css">
body{
      height: 100%;
      //background-color: #ccc;
    }
table tr td{
    text-align:center;
}

</style>
</head>


<body>
   <div class="container" style="padding-top:50px">
    <div class="row">
    <s:if test="#request.comment == null || #request.comment.size() == 0">
		没有举报信息
	</s:if>
	<s:else>
		<!--  <table class="table table-hover table-striped table-bordered" >
			<tr>
				<td>名字</td>
				<td>内容</td>
				
				<td>发表时间</td>
				<td>删除</td>
				
			
			</tr>
			<s:iterator value="#request.comment">
				<tr>
					<td>${comment_id}</td>
					<td style="WORD-WRAP: break-word width:60%" >${context}</td>
				  
					<td>${commTime}</td>
					<td></td>
					
					</tr>
			
			</s:iterator>
			
			
		</table>  -->
		
		<s:iterator value="#request.comment">
		 <hr>
				    <div class="col-sm-6" style="text-align:left">
					${comment_id}
					</div>
					 <div class="col-sm-12" style="WORD-WRAP: break-word" style="text-align:right">
					${context}
				    </div>
					
				     
				    <br> <br>
			        <div class="col-sm-6" >
					${commTime}
				     </div>
				    <br>
				     <div class="col-sm-12" style="text-align:right">
				    <a href="comment-delete.do?comment_id=${comment_id}&page=${page}">删除</a>  
				    </div>
				    
				   
					<br>
					<br>
		</s:iterator>
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
  
  <li><a href="comment-ListCheckByPage.do?page=1">首页</a></li>
    <li>
      <a href="comment-ListCheckByPage.do?page=<%
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
           <li><a href="comment-ListCheckByPage.do?page=<%=i%>">
           <%=i%>
           </a></li>
          <% 
        }
     
     
      %>
  
    <li>
      <a href="comment-ListCheckByPage.do?page=<%
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
    
  <!--   <li><a href="comment-ListCheckByPage.do?page=<s:property value="#request.rpage"/>">末页</a></li> --> 
   <li><a href="comment-ListCheckByPage.do?page=<%=rpage%>">末页</a></li>
  </ul>
</nav>
	</s:else>
	    
	<%--=request.getAttribute("page")--%>
	

	    </div>
	</div>
</body>
</html>