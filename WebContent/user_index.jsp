<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>电影资讯小站</title>

<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <style type="text/css">
.carousel-inner .item img {
	width: 100%;
	height: 550px;
}

.row .col-sm-2 img {
	width: 100%;
	height: 250px;
}

.movie_context {
	padding-top: 20px;
}

.center {
	width: 90%;
	display: table;
	margin-left: 0px;
	margin-right: 0px;
	margin-top: 0px;
	background-color: #FFFAFA;
}

h4 {
	text-align: center;
}
</style>
<style type="text/css">
@
-moz-document url-prefix () {fieldset { display:table-cell;
	
}
}
</style>
</head>
<body style="background-color:#fff;">


<jsp:include page="frame/navigation_bar_frame.html" flush="true" />



<div class="container" style="padding: 50px; background-color: #fff;">


		<div id="carousel-example-generic" class="carousel slide"
			data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0"
					class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="image/thr3.jpg" alt="精灵王座">
					<div class="carousel-caption"></div>
				</div>
				<div class="item">
					<img src="image/thr-final.jpg" alt="精灵王座2">
					<div class="carousel-caption"></div>
				</div>
				<div class="item">
					<img src="image/thr-tgq.jpg" alt="来不及再见">
					<div class="carousel-caption"></div>
				</div>
			</div>

			<!-- Controls -->
			<a class="left carousel-control" href="#carousel-example-generic"
				role="button" data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#carousel-example-generic"
				role="button" data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>

		<!--轮播结束-->

		<div class="movie_context">
		
			<ol class="breadcrumb" style="background-color: #fff">
				<li><h3>热门推荐</h3></li>
				</ol>
			<div class="container">
				<div class="row">
				
				
					<div class="col-sm-2">
						<img class="img-responsive img-thumbnail"
							src="image/jinganglang3.jpg" alt="金刚狼3">
						<h2>金刚狼3</h2>
						<p>剧情简介：多年后，变种人消亡，疲惫不堪的“金刚狼” 罗根在墨西哥边境附近的一处藏身所里照顾着X教授。但
							罗根的避世状态随着一位遭黑暗势力追捕的年轻变种人的 到来而宣告终结。</p>

						<p>
							<a class=" btn btn-default" href="#" role="button">更多剧情>></a>
						</p>
					</div>

					<div class="col-sm-2">
						<img class="img-responsive  img-thumbnail"
							src="image/jinganglang3.jpg" alt="金刚狼3">
						<h2>金刚狼3</h2>
						<p>剧情简介：多年后，变种人消亡，疲惫不堪的“金刚狼” 罗根在墨西哥边境附近的一处藏身所里照顾着X教授。但
							罗根的避世状态随着一位遭黑暗势力追捕的年轻变种人的 到来而宣告终结。</p>

						<p>
							<a class=" btn btn-default" href="#" role="button">更多剧情>></a>
						</p>
					</div>

					<div class="col-sm-2">
						<img class="img-responsive  img-thumbnail"
							src="image/jinganglang3.jpg" alt="金刚狼3">
						<h2>金刚狼3</h2>
						<p>剧情简介：多年后，变种人消亡，疲惫不堪的“金刚狼” 罗根在墨西哥边境附近的一处藏身所里照顾着X教授。但
							罗根的避世状态随着一位遭黑暗势力追捕的年轻变种人的 到来而宣告终结。</p>

						<p>
							<a class=" btn btn-default" href="#" role="button">更多剧情>></a>
						</p>
					</div>

					<div class="col-sm-2">
						<img class="img-responsive img-thumbnail"
							src="image/jinganglang3.jpg" alt="金刚狼3">
						<h2>金刚狼3</h2>
						<p>剧情简介：多年后，变种人消亡，疲惫不堪的“金刚狼” 罗根在墨西哥边境附近的一处藏身所里照顾着X教授。但
							罗根的避世状态随着一位遭黑暗势力追捕的年轻变种人的 到来而宣告终结。</p>

						<p>
							<a class=" btn btn-default" href="#" role="button">更多剧情>></a>
						</p>
					</div>



					<div class="col-sm-4">


						<div class="list-group">
							<div class="center">
								      <h4><span>热门精选（top10）</span></h4> <a href="#"
									class="list-group-item"><span>电影1 热度</span></a> <a href="#"
									class="list-group-item"><span>电影1 热度</span></a> <a href="#"
									class="list-group-item"><span>电影1 热度</span></a> <a href="#"
									class="list-group-item"><span>电影1 热度</span></a>
							</div>

						</div>


						<div class="list-group">
							<div class="center">
								<h4><span>热门资讯（top10）</span></h4> <a href="#"
									class="list-group-item"><span>资讯1 热度</span></a> <a href="#"
									class="list-group-item"><span>资讯1 热度</span></a> <a href="#"
									class="list-group-item"><span>资讯1 热度</span></a> <a href="#"
									class="list-group-item"><span>资讯1 热度</span></a>
							</div>

						</div>

						<div class="list-group">
							<div class="center">
								<h4><span>热门评论（top10)</span></h4> <a href="#"
									class="list-group-item"><span>评论1 热度</span></a> <a href="#"
									class="list-group-item"><span>评论1 热度</span></a> <a href="#"
									class="list-group-item"><span>评论1 热度</span></a> <a href="#"
									class="list-group-item"><span>评论1 热度</span></a>
							</div>

						</div>
					</div>


				</div>
			</div>
		</div>
		<!--电影资讯展示-->
		<!--电影资讯精选-->
		<div>

			<!-- Nav tabs -->
			<ul class="nav nav-tabs" role="tablist">
				<li role="presentation" class="active"><a href="#home"
					aria-controls="home" role="tab" data-toggle="tab">剧情1</a></li>
				<li role="presentation"><a href="#profile"
					aria-controls="profile" role="tab" data-toggle="tab">剧情2</a></li>
				<li role="presentation"><a href="#messages"
					aria-controls="messages" role="tab" data-toggle="tab">剧情3</a></li>
			</ul>

			<!-- Tab panes -->
			<div class="tab-content">
				<div role="tabpanel" class="tab-pane active" id="home">
					<div class="row">
						<div class="col-sm-7">电影详细剧情</div>
						<div class="col-sm-2">电影海报</div>
					</div>
				</div>
				<div role="tabpanel" class="tab-pane" id="profile">
					<div class="row">
						<div class="col-sm-7">电影详细剧情1</div>
						<div class="col-sm-2">电影海报1</div>
					</div>
				</div>

				<div role="tabpanel" class="tab-pane" id="messages">
					<div class="row">
						<div class="col-sm-7">电影详细剧情2</div>
						<div class="col-sm-2">电影海报2</div>
					</div>


				</div>

			</div>

		</div>
            
            
            
            
	</div>
	
	
     <jsp:include page="frame/footer_frame.html" flush="true"></jsp:include>
 
	 
	  
	 
	
	
</body>
</html>

 