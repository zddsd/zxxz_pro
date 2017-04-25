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
	
	
	<jsp:include page="frame/navigation_bar_frame.jsp" flush="true" />
    
    
    
	<div class="container">
		<!--注册表单-->
		<div style="padding: 50px; background-color: #fff;">
			<br/>
			<h1>欢迎注册</h1>
			<hr width=80% size=4 color=#00ffff
				style="FILTER: alpha(opacity = 100, finishopacity = 0, style = 4)">
			<form action="user-save.do" class="form-horizontal"  method="post">
               
         <!--     <div class="form-group">
               <s:textfield label="昵称" class="col-md-4 control-label" name="user.username"></s:textfield>
               </div>
                -->  
               <div class="form-group">
					<label class="col-md-4 control-label" for="username">账号</label>
					<div class="col-md-4">
						<input name="userid" type="text" class="form-control" 
							placeholder="输入您要注册的账号">
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
					<label class="col-md-4 control-label" for="eamil">邮箱</label>
					<div class="col-md-4">
						<input  name="email" type="text" class="form-control" 
							placeholder="example@example.com">
					</div>
				</div>


				<div class="form-group">
					<label class="col-md-4 control-label" for="password">密码</label>
					<div class="col-md-4">
						<input  name="password" type="password" class="form-control"
							placeholder="Password">
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label" for="rpassword">确认密码</label>
					<div class="col-md-4">
						<input name="rpassword" type="password" class="form-control"
							placeholder="Password">
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label" for="sex">性别</label>
					<div class="radio">

						<label class="col-md-1 control-label" class="checkbox-inline">
							<input name="sex" type="radio" value="1" checked="true">男
						</label> 
						<label class="col-md-1 control-label" class="checkbox-inline">
							<input  name="sex" type="radio" value="0">女
						</label>
					</div>
				</div>





				 <div class="form-group">
                <label for="birthday" class="col-md-4 control-label">生日</label>
                <div class="input-group date form_date col-md-4" style="padding-left:15px;" data-date="" data-date-format="yyyy MM dd" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                    <input name="birthday" class="form-control"  type="text" value="" readonly>
                   <!-- <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>  -->
					<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                </div>
				<input type="hidden" id="dtp_input2" value="" /><br/>
               </div>




				<div class="form-group">
					<label class="col-md-4 control-label" for="phonenumber">手机号</label>
					<div class="col-md-4">
						<input name="phonenumber" type="text" class="form-control" 
							placeholder="可用来登陆或者找回密码">
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label" for="zone">所在地</label>
					<div class="col-md-4">
						<input name="zone" type="text" class="form-control" 
							placeholder="可为您提供个性化服务">
					</div>
				</div>

			

				<div class="form-group">
					<label class="col-md-4 control-label" for="File">上传头像</label>
					<div class="col-md-4">
						<input name="img_user" type="file" id="File">
						<!-- <img id="image" src="" >  --> 
						
						<p class="help-block">上传图片类型只能始jpg、png，且不大于40K</p>
					</div>
				</div>


				<div class="form-group">
					
						<label class="col-md-4 control-label" class="checkbox-inline"></label>
						<div class="checkbox col-md-4">
							<input name="xieyi" type="checkbox" value="1">阅读并同意<a href="yonghu/xieyi.jsp">《电影资讯小站用户协议》</a>
						</div>
				</div>
				<!--  <textarea class="form-control" rows="5" placeholder="输入个人简介"></textarea> -->

				<div class="col-md-10 col-md-offset-4">
					<button name="submit" type="submit" class="btn btn-default">提交信息</button>
				</div>
			</form>
            

		</div>
	</div>
    <jsp:include page="frame/footer_frame.html" flush="true"></jsp:include>
</body>
</html>


<script type="text/javascript" src="js/bootstrap-datetimepicker.js" charset="UTF-8"></script>

<script type="text/javascript" src="js/locales/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8">
</script>

<script type="text/javascript">
    // $.fn.datepicker.defaults.format = "yyyy-mm-dd";
	$('.form_date').datetimepicker({
        language:  'zh-CN',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 2,
		minView: 2,
		forceParse: 0
		
    });
	
	
	 function loadImageFile(event)

        {

                var image = document.getElementById('image');

                image.src = URL.createObjectURL(event.target.files[0]); 

        };
	
</script>