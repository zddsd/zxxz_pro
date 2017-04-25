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

<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>
  

<style type="text/css">
body {
	height: 100%;
	background-color: #ccc;
}

h1 {
	text-align: center;
}

h3 h4 {
	text-align: center;
}

#context {
	border: 1px #ccc solid;
	border-top: none;
	border-bottom: none;
	border-left: none;
}

.favorite {
	width: 100%;
	height: 180px;
}

.table1 tr img:hover {
	background-color: #f5f5f5;
	margin-top: 4px; //
	margin-left: -50px; //
	-webkit-transform: rotate(-7deg); //
	-moz-transform: rotate(-7deg); //
	-o-transform: rotate(-7deg);
	-webkit-box-reflect: below 0px
		-webkit-gradient(linear, left top, left bottom, from(transparent),
		color-stop(.7, transparent), to(rgba(0, 0, 0, 0.4)));
}

.center {
	width: 90%;
	display: table;
	margin-left: 0px;
	margin-right: 0px;
	margin-top: 0px;
	background-color: #FFFAFA;
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

</style>
</head>
<body>
	<jsp:include page="frame/navigation_bar_frame.jsp" flush="true" />

	<div class="container">
		<div style="padding: 100px; background-color: #fff;">
     <s:if test="#request.news == null || #request.news.size() == 0">
		页面找不到了
	</s:if>
	<s:else>
	
		<s:iterator value="#request.news">
			<ol class="breadcrumb" style="background-color: #fff">
				<li><a href="movieinfo-movieIndex.do">首页</a></li>
				<li><a href="news-newsMenu.do?page=1&zone=2">资讯频道</a></li>
				
        
				<li class="active">${title}</li>

			</ol>


			<br />
			<h1>
				<span>${title}</span>
			</h1>
			<br />
			<h5>
				<strong>${date}  来源：电影资讯小站 <a href="comment-ListByPage.do?infoid=${id}&page=1"><s:property value="#request.commentCount"/>评论</a></strong>
			</h5>

			<hr width=80% size=4 color=#00ffff
				style="FILTER: alpha(opacity = 100, finishopacity = 0, style = 4)">
			<div class="row">
				<div class="col-sm-8" style="padding: 50px;" id="context">
					${context}
					
             
          
           
               
					<div class="bdsharebuttonbox">
						<a href="#" class="bds_more" data-cmd="more">分享到：</a><a href="#"
							class="bds_tsina" data-cmd="tsina" title="分享到新浪微博">新浪微博</a><a
							href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间">QQ空间</a><a
							href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博">腾讯微博</a><a
							href="#" class="bds_renren" data-cmd="renren" title="分享到人人网">人人网</a><a
							href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信">微信</a>
					</div>
					<script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"0","bdSize":"16"},"share":{"bdSize":16},"image":{"viewList":["tsina","qzone","tqq","renren","weixin"],"viewText":"分享到：","viewSize":"24"},"selectShare":{"bdContainerClass":null,"bdSelectMiniList":["tsina","qzone","tqq","renren","weixin"]}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];
					</script>
					
					
					<div class="col-sm-12">
						<br />
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
                         	
                       
                      
   
	</div>
	</div>
	 </s:iterator>
					<!-- 评论结束 -->

					
					
				
                
                
                
                 
				<div class="col-sm-4">

					<div class="list-group">
						<div class="col-sm-6">猜你喜欢</div>
							<div class="col-sm-6" style="text-align: right"><a href="movieMore.jsp">更多>></a></div>
							
				
                               <s:iterator  value="#request.favorite">
							<div class="col-sm-6">
							<a href="movieinfo-show.do?id=${id}"><img class="img-responsive  img-thumbnail favorite" alt=${name} src=${posterUrl}>
								<h4>${name}</h4>
								</a>
							</div>
							</s:iterator> 
			  
			         </div>
			 
			 
			 
			 <div class="list-group">
             <div class="center">
             <h4> <span>最新资讯</span></h4>
            <s:iterator value="#request.top">
             <a href="news-show.do?newsid=${id}" class="list-group-item cont">${title} ${date}</a>
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
         </s:else>
		   </div>
	      
		</div>
     
	          
      
    
      
         
    <jsp:include page="frame/footer_frame.html" flush="true"></jsp:include>
      
    
    </body>
</html>
