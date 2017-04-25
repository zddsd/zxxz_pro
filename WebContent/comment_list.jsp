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
<!-- <script src="js/jquery.min.js"></script> -->
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>
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


<jsp:include page="frame/navigation_bar_frame.jsp" flush="true" />

   <div class="container">
   <div style="padding: 100px; background-color: #fff;">
    
			<div style="text-align:center; padding:20px">	<h1><a href="news-show.do?newsid=<s:property value="#request.newsid"/>"><s:property value="#request.newsname"/></a></h1></div> 
			 <hr width=80% size=4 color=#00ffff	style="FILTER: alpha(opacity = 100, finishopacity = 0, style = 4)">
    <div class="row">
   
   
   <div class="col-sm-8" style="padding: 50px;" id="context">
   	<script type="text/javascript">
					function islogin()
					{
					  var p=document.getElementById("loginusername").innerText;
					//  var q=document.getElementById("input-21e").value;
					   var r=document.getElementById("area").value;
					 if(p!=null&&p!="")
					 {
					
					
					 }
					 else{ alert("请您先登陆，然后进行评论");
					  return false;
					 }
					
					if(r!=null&&r!="")
					 {
					
					  return ture;
					 }
					 else{ alert("请您填写评论");
					  return false;
					 }
					
					 
					 
					 }
					</script>
							<form action="comment-save.do"  onsubmit="return islogin()" method="post">
						<table id="pinglun">
							<tr>
								<td><label><strong>会员评论</strong></label>
									文明上网理性发言，请遵守新闻评论服务协议</td>
							</tr>

						
								<tr>
								<td id="loginusername">${sessionScope.loginusername}</td>
								<td>
								 <input id="userid" name="userid" type="hidden"  value="${sessionScope.loginuserId}"/>
								
								<input  id="infoid"  name="infoid" type="hidden" value="<s:property value="#request.newsid"/>"/>
								</td>
								
								
								</tr>
								<tr>
									<td><textarea name="context" id="area"  maxlength="255" onchange="this.value=this.value.substring(0, 255)" onkeydown="this.value=this.value.substring(0, 255)" 
									onkeyup="this.value=this.value.substring(0, 255)" placeholder="发表您的牛评">

                                    </textarea>
                                    </td>
								</tr>
								
								
								
								<tr>
									<td><input class="btn btn-default" type="submit"
										name="fabiao" value="发表" /></td>
								</tr>
						
						</table>
                         	</form>
                                          	
                         	
                         	<br>
                         	<br>
    <s:if test="#request.comment == null || #request.comment.size() == 0">
		暂无评论
	</s:if>
	<s:else>
	
	 <h5>全部评论</h5>
	 <br>
	    
		
		
			<s:iterator value="#request.comment">
			 <hr>
				    <div class="col-sm-6" style="text-align:left">
					
					${username}
					</div>
					<div class="col-sm-6" style="text-align:right">
					${commTime}
				     </div>
				     
				    <br>
				  
				     <br>
			         <div class="col-sm-12" style="WORD-WRAP: break-word">
					${context}    
				    </div>
				    <br>
				     <div class="col-sm-12" style="text-align:right">
				     <a href="comment-check.do?comment_id=${comment_id}&page=${page}&infoid=${newsid}">举报</a>     
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
  
  <li><a href="comment-ListByPage.do?infoid=<s:property value="#request.newsid"/>&page=1">首页</a></li>
    <li>
      <a href="comment-ListByPage.do?infoid=<s:property value="#request.newsid"/>&page=<%
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
           <li><a href="comment-ListByPage.do?infoid=<s:property value="#request.newsid"/>&page=<%=i%>">
           <%=i%>
           </a></li>
          <% 
        }
     
     
      %>
  
    <li>
      <a href="comment-ListByPage.do?infoid=<s:property value="#request.newsid"/>&page=<%
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
    
  <!--   <li><a href="comment-ListByPage.do?infoid=${id}&page<s:property value="#request.rpage"/>">末页</a></li> --> 
   <li><a href="comment-ListByPage.do?infoid=<s:property value="#request.newsid"/>&page=<%=rpage%>">末页</a></li>
  </ul>
</nav>



	</s:else>
	    
	<%--=request.getAttribute("page")--%>
	
	     </div>
	</div>
	</div>
	</div>
	
	 <jsp:include page="frame/footer_frame.html" flush="true"></jsp:include>
</body>
</html>