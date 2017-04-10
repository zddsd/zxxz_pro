<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述4个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>电影资讯小站注册</title>

<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/4.7.4/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.4/respond.min.js"></script>
    <![endif]-->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://cdn.bootcss.com/jquery/1.14.4/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>

<script type="text/javascript">
	

	
</script>
<style type="text/css">

body{
   background-color:#fff;
}
h1 {
	text-align: center;
}

</style>
</head>
<body style="ground-color:#fff">
   
<div class="container">
		<!--注册表单-->
		<div style="padding: 50px; background-color: #fff;">
			<br/>
			<h1>电影新闻资讯上传</h1>
			<hr width=80% size=4 color=#00ffff
				style="FILTER: alpha(opacity = 100, finishopacity = 0, style = 4)">
			<form action="user-save.do" class="form-horizontal"  method="post">
               
         <!--     <div class="form-group">
               <s:textfield label="昵称" class="col-md-4 control-label" name="user.username"></s:textfield>
               </div>
                -->  
                
                <div class="form-group">
					<label class="col-md-4 control-label" for="username">电影新闻id</label>
					<div class="col-md-4">
						<input name="nickname" type="text" class="form-control" 
							placeholder="20170412010101">
					</div>
				</div>
                
                <div class="form-group">
					<label class="col-md-4 control-label" for="username">相关电影id</label>
					<div class="col-md-4">
						<input name="nickname" type="text" class="form-control" 
							placeholder="tt4630562">
					</div>
				</div>
				
               <div class="form-group">
					<label class="col-md-4 control-label" for="username">新闻标题</label>
					<div class="col-md-4">
						<input name="title" type="text" class="form-control" 
							placeholder="输入您新闻标题">
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-md-4 control-label" for="username">昵称</label>
					<div class="col-md-4">
						<input name="nickname" type="text" class="form-control" 
							placeholder="输入您喜欢的昵称">
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label" for="eamil">地区</label>
					<div class="col-md-4">
						<input  name="email" type="text" class="form-control" 
							placeholder="欧美、日韩、大陆、港台、其他">
					</div>
				</div>

				<input name="context" type="hidden">

		

				<div class="col-md-10 col-md-offset-4">
					<button name="submit" type="submit" class="btn btn-default">提交信息</button>
				</div>
			</form>
            

		</div>
	</div>
   
</body>
</html>