<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>电影资讯小站注册</title>

<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet"
	media="screen">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.3/respond.min.js"></script>
    <![endif]-->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script type="text/javascript" src="js/jquery-1.8.3.min.js"
	charset="UTF-8"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>

<style type="text/css">
.btn:focus, .btn:active:focus, .btn.active:focus, .btn.focus, .btn:active.focus,
	.btn.active.focus {
	outline: none;
}

body {
	height: 100%;
	background-color: #ccc;
}

.row .col-sm-3  img:hover {
	background-color: #f5f5f5;
	margin-top: 5px; //
	margin-left: -50px;
	-webkit-transform: rotate(-7deg);
	-moz-transform: rotate(-7deg);
	-o-transform: rotate(-7deg); //
	-webkit-box-reflect: below 0px
		-webkit-gradient(linear, left top, left bottom, from(transparent),
		color-stop(.7, transparent), to(rgba(0, 0, 0, 0.4)));
}
</style>



</head>
<body>
	<!--插入navigation-->
	<jsp:include page="frame/navigation_bar_frame.html" flush="true" />


	<div class="container">
		<div
			style="padding: 100px; padding-bottom: 50px; background-color: #fff;">
			<div class="row">

				<div class="col-sm-12">
				   <div class="col-sm-12">
					<ul class="list-group">

						<li class="list-group-item">

							<div class="btn-group btn-group-justified" role="group"
								aria-label="...">
								<div class="btn-group" role="group">
									<button type="button" class="btn btn-default1"
										disabled="disabled">
										<strong>地区:</strong>
									</button>
								</div>


								<div class="btn-group" role="group">
									<button type="button" class="btn btn-default1">大陆</button>
								</div>
								<div class="btn-group" role="group">
									<button type="button" class="btn btn-default1">香港</button>
								</div>
								<div class="btn-group" role="group">
									<button type="button" class="btn btn-default1">美国</button>
								</div>
								<div class="btn-group" role="group">
									<button type="button" class="btn btn-default1">欧洲</button>
								</div>

								<div class="btn-group" role="group">
									<button type="button" class="btn btn-default1">日本</button>
								</div>


								<div class="btn-group" role="group">
									<button type="button" class="btn btn-default1">韩国</button>
								</div>

								<div class="btn-group" role="group">
									<button type="button" class="btn btn-default1">其他</button>

								</div>
							</div>

						</li>


						<li class="list-group-item">
							<div class="btn-group btn-group-justified" role="group"
								aria-label="...">
								<div class="btn-group" role="group">
									<button type="button" class="btn btn-default1"
										disabled="disabled">
										<strong>类型:</strong>
									</button>
								</div>


								<div class="btn-group" role="group">
									<button type="button" class="btn btn-default1">喜剧</button>
								</div>
								<div class="btn-group" role="group">
									<button type="button" class="btn btn-default1">爱情</button>
								</div>
								<div class="btn-group" role="group">
									<button type="button" class="btn btn-default1">动作</button>
								</div>

								<div class="btn-group" role="group">
									<button type="button" class="btn btn-default1">科幻</button>
								</div>


								<div class="btn-group" role="group">
									<button type="button" class="btn btn-default1">惊悚</button>
								</div>

								<div class="btn-group" role="group">
									<button type="button" class="btn btn-default1">战争</button>

								</div>

								<div class="btn-group" role="group">
									<button type="button" class="btn btn-default1">动画</button>

								</div>
							</div>



						</li>

						<!--           <li class="list-group-item">
         <div class="btn-group btn-group-justified" role="group" aria-label="...">
           <div class="btn-group" role="group">
              <button type="button" class="btn btn-default1" disabled="disabled"><strong>时间:</strong></button>
    </div>

    <div class="btn-group" role="group">
   <button type="button" class="btn btn-default1">2017</button>
  </div>
  <div class="btn-group" role="group">
   <button type="button" class="btn btn-default1">2016</button>
  </div>
  <div class="btn-group" role="group">
   <button type="button" class="btn btn-default1">2015</button>
  </div>

  <div class="btn-group" role="group">
   <button type="button" class="btn btn-default1">2014-2011</button>
  </div>


  <div class="btn-group" role="group">
   <button type="button" class="btn btn-default1">2010-2000</button>
  </div>

  <div class="btn-group" role="group">
   <button type="button" class="btn btn-default1">90年代</button>

  </div>

  <div class="btn-group" role="group">
   <button type="button" class="btn btn-default1">更早</button>

  </div>
  </div>



       </li>-->
					</ul>
				</div>
         </div>
          
          <div class="col-sm-12">
				<br>
				<hr>
				<div class="col-sm-3">
					<a href="#"> <img class="img-responsive img-thumbnail"
						src="image/jinganglang3.jpg" alt="金刚狼3"></a>
					<div style="width: 50%; float: left; text-align: left;">
						<h4>金刚狼3</h4>
					</div>
					<div style="width: 50%; float: right; text-align: right;">
						<h4>8.0</h4>
					</div>
					<br>
					<div style="width: 100%; float: left; text-align: left">主演：休
						杰克曼</div>
				</div>
				
            </div>
                  


               <!--  分页显示结果：-->
		<nav aria-label="Page navigation">
			<ul class="pagination">
				<li><a href="#" aria-label="Previous"> <span
						aria-hidden="true">&laquo;</span>
				</a></li>
				<li><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
				<li><a href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span>
				</a></li>
			</ul>
		</nav>



			</div>
		</div>





		
	</div>

	<!--插入footer-->
	<jsp:include page="frame/footer_frame.html" flush="true"></jsp:include>


</body>
</html>
