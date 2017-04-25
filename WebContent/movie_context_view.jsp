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
   <link href="css/star-rating.css" media="all" rel="stylesheet" type="text/css"/>

    <script src="js/star-rating.js" type="text/javascript"></script>
<style type="text/css">
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
           <s:if test="#request.movieinfo == null || #request.movieinfo.size() == 0">
		页面找不到了
	</s:if>
	<s:else>
	
		
			<ol class="breadcrumb">
				<li><a href="movieinfo-movieIndex.do">首页</a></li>
				<li><a href="movieinfo-movieList.do?page=1&zone=&class_=">电影列表</a></li>
				<li class="active"><s:property value="#request.movieinfo.name"/></li>
			</ol>
           
			<div class="row">
			 <s:iterator value="#request.movieinfo">
				<div class="col-sm-8" style="padding: 5px;" id="context">
					<div class="col-sm-4">
						<img class="img-responsive img-thumbnail" src=${posterUrl} alt="${name}">
						<div class="bdsharebuttonbox">
							<a href="#" class="bds_more" data-cmd="more"></a><a href="#"
								class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a><a
								href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a>
								<a
								href="#" class="bds_renren" data-cmd="renren" title="分享到人人网"></a>
								
								<a
								href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a>
								
								
						</div>
						<script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"1","bdSize":"24"},"share":{},"image":{"viewList":["qzone","tsina","renren","weixin"],"viewText":"分享到：","viewSize":"24"},"selectShare":{"bdContainerClass":null,"bdSelectMiniList":["qzone","tsina","renren","weixin"]}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script>

					</div>
                    
					<div class="col-sm-8">
						<h3>${name}</h3>

						<table class="table">
							<tr>
								<td>导演:${director}</td>
							</tr>
							<tr>
								<td>演员:${actor} </td>
							</tr>
							<tr>
								<td>时长:${last}  语言:${language}</td>
							</tr>
							<tr>
								<td>上映时间：${showDate} 类型:${class_}</td>
							</tr>
							<tr>
								<td>国家:${zone}</td>
							</tr>
							<tr>
								<td>
								<ul class="list-unstyled">
								<li style="float:left">评分:</li>
								
								<li style="float:left"><input id="input-21e1" value="${rate}" type="number" class="rating" min=0 max=10 data-size="xs" data-stars="10" readonly="readonly" >
								</li>
								</ul>
								</td>
							</tr>

							<tr>
								<td></td>
							</tr>

						</table>
					</div>

					<div class="col-sm-12">
					<div style="text-align:left"><h3>剧情介绍：</h3></div>
					<br>	
						${info}
						
				    <br>
				    <div style="float:right"> 
				    <script type="text/javascript">
				    function isloginstar(){
				    	 var p=document.getElementById("userid1").value;
				    	 if(p!=null&&p!="")
						 {
						
				    		 return true;
						 }
						 else{ alert("请您先登陆，然后进行操作");
						  return false;
						 }
				    	
				    	
				    }
				    
				    </script>
				    <s:if test="#session.loginusername == null || #session.loginusername.size() == 0">
				     <form action="star-save.do" name="star"  onsubmit="return isloginstar()" method="post">
				              <!-- userid contextid class -->
				               <input name="userid" id="userid1" type="hidden" value="<s:property value="#session.loginuserId"/>"> 
				                <input name="contextid" type="hidden" value="<s:property value="#request.id"/>"> 
				                 <input name="class_" type="hidden" value="movie"> 
				                 <button type="submit" class="btn btn-default btn-sm">
                                <span class="glyphicon glyphicon-star-empty">收藏</span>
                                </button>
                               </form>
				    </s:if>
				    <s:else>
				    <s:if test='#request.isstar=="1"'>
				       <form action="star-save.do" name="star"  onsubmit="return isloginstar()" method="post">
				              <!-- userid contextid class -->
				               <input name="userid" id="userid1" type="hidden" value="<s:property value="#session.loginuserId"/>"> 
				                <input name="contextid" type="hidden" value="<s:property value="#request.id"/>"> 
				                 <input name="class_" type="hidden" value="movie"> 
				                 <button type="submit" class="btn btn-default btn-sm">
                                <span class="glyphicon glyphicon-star-empty">收藏</span>
                                </button>
                               </form>
				    </s:if>
				    <s:else>
				     <button type="button" class="btn btn-default btn-sm">
          				<span class="glyphicon glyphicon-star"></span>已收藏
        				</button>         
                     </s:else>
                     </s:else>
                               
                     </div>		
					
					</div>
					<div class="col-sm-12">
						<br />
						
					<script type="text/javascript">
					function islogin()
					{
					  var p=document.getElementById("loginusername").innerText;
					  var q=document.getElementById("input-21e").value;
					   var r=document.getElementById("area").value;
					 if(p!=null&&p!="")
					 {
					
					
					 }
					 else{ alert("请您先登陆，然后进行评论");
					  return false;
					 }
					
					if(r!=null&&r!="")
					 {
					
					
					 }
					 else{ alert("请您填写评论");
					  return false;
					 }
					
					 if(q>0&&q<=10)
					 {
					 
					 return true;
					 }
					 else{ alert("请您给该部电影评分");
					  return false;
					 }
					 
					 }
					</script>
					  <!-- 评论区 -->
					  
					    <form action="moviecomment-save.do"  onsubmit="return islogin()" method="post">
						<table id="pinglun" class="table1">
							<tr>
								<td><label><strong>会员评论</strong></label>
									文明上网理性发言，请遵守新闻评论服务协议
								</td>
							</tr>

						
								<tr>
								<td id="loginusername">${sessionScope.loginusername}
								 <input id="userid" name="userid" type="hidden"  value="${sessionScope.loginuserId}"/>
								
								<input  id="infoid"  name="infoid" type="hidden" value="<s:property value="#request.id"/>"/>
								
								</td>
								
								
								</tr>
								<tr>
								<td>
								
								<span>
								<script src="js/jquery.min.js"></script>
                                 <script type="text/javascript" src="js/star-rating.js" ></script>
								<input name="score" id="input-21e" value="0" type="number" class="rating" min=0 max=10 step=0.5 data-size="xs" data-stars="10" >
								</span>
								</td>
								
								</tr>
								
								<tr>
									<td Style="col-span:4">
									<textarea name="context" id="area"   maxlength="255" onchange="this.value=this.value.substring(0, 255)" onkeydown="this.value=this.value.substring(0, 255)" 
									onkeyup="this.value=this.value.substring(0, 255)" placeholder="发表您的牛评"></textarea>
                                    </td>
								</tr>
								
								
								
								<tr>
									<td><input class="btn btn-default" type="submit"
										name="fabiao" value="发表" />
									</td>
								</tr>
						        
						        <tr>
						        <td>
						        
						        <br>
						        <br>
						      <a href="moviecomment-ListByPage.do?page=1&infoid=${id}">全部评论(<s:property value="#request.MovieCommentCount"/>条)</a>
						        </td>
						        </tr> 
						         
						</table>
                       </form>

					</div>




				</div>
             </s:iterator>

				<div class="col-sm-4">
                 
                 
                 	<s:if test="#request.favorite == null || #request.favorite.size() == 0">
							
						</s:if>
						<s:else>
					<div class="list-group">
					
							<div class="col-sm-6">猜你喜欢</div>
							<div class="col-sm-6" style="text-align: right"><a href="movieMore.jsp">更多>></a></div>
							
				
                               <s:iterator  value="#request.favorite">
							<div class="col-sm-6">
							<a href="movieinfo-show.do?id=${id}">
							<img class="img-responsive  img-thumbnail favorite" src=${posterUrl} alt=${name}>
								<h4>${name}</h4>
							</a>
							</div>
							</s:iterator> 
                          
                          
                           <!-- 需要被注释掉的代码 -->
                          
                            <!-- 需要被注释掉的代码 -->
                           
                            </div>
                         </s:else>   
                            
                            
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

           
			


          
	    </s:else>

		</div>
	</div>
	

 <jsp:include page="frame/footer_frame.html" flush="true"></jsp:include>
</body>
</html>
<script type="text/javascript">
    /*字数限制*/
    $("#area").on("input propertychange", function() {
        var $this = $(this),
            _val = $this.val(),
            count = "";
        if (_val.length > 20) {
            $this.val(_val.substring(0, 20));
        }
        count = 20 - $this.val().length;
        $("#text-count").text(count);
    });
</script>
<script>

    jQuery(document).ready(function () {

        $(".rating-kv").rating();

    });

</script>
