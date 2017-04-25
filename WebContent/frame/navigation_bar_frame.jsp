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
    
    }

</style>
</head>
<body>
	<!--导航栏设计开始-->
	
	<nav class="navbar navbar-default navbar-inverse navbar-fixed-top ">

		<div class="container-fluid container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="row">
				<div class="navbar-header col-sm-3">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
						aria-expanded="false">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="movieinfo-movieIndex.do">电影资讯小站</a>

					</div>


				<div class="col-sm-4">
					<!---->
					<form class="navbar-form navbar-left" action="movieinfo-movieMatch.do" method="post" >
						<div class="form-group">
							<input name="keyWord" type="text" class="form-control" placeholder="电影名称、关键词">
						</div>

						<button class="btn btn-default" type="submit">Go!</button>

					</form>

				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav naver-left">
						<li class="active"><a href="movieinfo-movieIndex.do">首页<span class="sr-only">(current)</span></a></li>
						<ul class="nav navbar-nav">
							<li><a href="news-newsMenu.do?page=1&zone=2">资讯频道</a></li>
						<!--  <li><a href="#">即将上映 </a></li>   -->	
						<!--  	<li><a href="#">电影榜单</a></li>  -->
							<li class="dropdown"><a href="" class="dropdown-toggle"
								data-toggle="dropdown" role="button" aria-haspopup="true"
								aria-expanded="false">电影榜单 <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="#">北美电影榜单</a></li>
									<li role="separator" class="divider"></li>
									<li><a href="#">电影top10</a></li>

								</ul></li>
								
						     <s:if test="#session.loginusername == null || #session.loginusername.size() == 0">
							<li>
							<a data-toggle="modal" data-target="#exampleModal">登陆</a>
               			   </li>
               		       <li><a href="register.jsp">注册</a></li>   	
							</s:if>
							<s:else>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown" role="button" aria-haspopup="true"
								aria-expanded="false">${sessionScope.loginusername}<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="user-userinfo.do?userid=${sessionScope.loginuserId}">个人信息</a></li>
										<li role="separator" class="divider"></li>
										<li><a href="star-ListByPage.do?userid=${sessionScope.loginuserId}&amp;class_=movie&amp;page=1">收藏信息</a></li>
									
									<li role="separator" class="divider"></li>
									<li><a href="Logout-logout.do">退出</a></li>

								</ul></li>
						   
               			 </s:else>
                        </ul>
					</ul>
				</div>
				<!-- /.navbar-collapse -->

			</div>
		</div>
		<!-- /.container-fluid -->
	</nav>



	<!-- 导航栏结束 -->

<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h4> 账号登陆  </h4>
      </div>
       <form action="UserLogin.do"  name="userlogin" method="post">
      <div class="modal-body">
       
          <div class="form-group">
            <label  for="recipient-name" class="control-label">账号</label>
            <input name="userid" type="text" class="form-control" >
          </div>
          <div class="form-group">
            <label for="message-text" class="control-label">密码</label>
            <input  name="password" type="password" class="form-control" >
          </div>
      
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        <button type="submit" class="btn btn-primary">登陆</button>
      </div>
        </form>
    </div>
  </div>
</div>


</body>
</html>

<script type="text/javascript">


    $('#exampleModal').on('show.bs.modal', function (event) {
  var button = $(event.relatedTarget) // Button that triggered the modal
  var recipient = button.data('whatever') // Extract info from data-* attributes
  // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
  // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
  var modal = $(this)
  modal.find('.modal-title').text('New message to ' + recipient)
  modal.find('.modal-body input').val(recipient)
})
</script>
