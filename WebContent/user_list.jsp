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
    <s:if test="#request.user == null || #request.user.size() == 0">
		没有任何管理员信息
	</s:if>
	<s:else>
		<table class="table table-hover table-striped table-bordered" >
			<tr>
				<td>账号</td>
				<td>名字</td>
				
				<td>邮箱</td>
				<td>电话号码</td>
				
				<td>地区</td>
			<!--  	<td>头像名</td>
				<td>创建时间</td>  -->
				<td>状态</td>
				<td>操作</td>
			</tr>
			<s:iterator value="#request.user">
				<tr>
					<td>${userid}</td>
					<td>${username}</td>
					
					<td>${email}</td>
					
					<td>${phonenumber}</td>
                    <td>${zone}</td>
                <!--     <td>${IMG_URL}</td>
                    <td>${create_time}</td> --> 
                    <td>${status}</td>
					<!--  <td>
						<a href="user-delete.do?user.userid=${userid}" class="delete">删除</a>
						<input type="hidden" value="${username}"/>
					</td>-->
					<td>
						<a href="user-input.do?user.userid=${userid}">修改</a>
					</td>
				</tr>
			</s:iterator>
			
			
		</table>
	</s:else>
	
	
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
  
  <li><a href="user-ListByPage.do?page=1">首页</a></li>
    <li>
      <a href="user-ListByPage.do?page=<%
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
           <li><a href="user-ListByPage.do?page=<%=i%>">
           <%=i%>
           </a></li>
          <% 
        }
     
     
      %>
   
    <li>
      <a href="user-ListByPage.do?page=<%
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
    
    <li><a href="user-ListByPage.do?page=<%=rpage%>">末页</a></li>
  </ul>
</nav>
	    
	</div>
</body>
</html>
	</div>
</body>
</html>