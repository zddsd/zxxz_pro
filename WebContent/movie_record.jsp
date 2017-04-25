<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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


<style type="text/css">
body {
	height: 100%;
}
</style>
</head>
<body>

	<jsp:include page="frame/navigation_bar_frame.jsp" flush="true" />
	<div class="container"
		style="padding-top: 20px; background-color: #fff;">
		<div class="row">

			<div class="col-sm-12" style="padding: 70px">
				<table class="table table-striped table-hover">
					<thead>
						<tr>
							<th>年度排名</th>
							<th>历史排名</th>
							<th>电影名称</th>
							<th>总票房</th>
							
							<th>上映年份</th>
							
						</tr>
					</thead>
					<tbody>
						<tr class="odd">
							<td>1</td>
							<td>1</td>
							<td>美人鱼</td>
							<td>33.9亿</td>


							<td>2016</td>

						</tr>
						<tr class="even">
							<td>1</td>
							<td>2</td>
							<td>捉妖记</td>
							<td>24.38亿</td>


							<td>2015</td>

						</tr>
						<tr class="odd">
							<td>2</td>
							<td>3</td>
							<td>速度与激情7</td>
							<td>24.26亿</td>


							<td>2015</td>

						</tr>
						<tr class="even">
							<td>1</td>
							<td>4</td>
							<td>速度与激情8</td>
							<td>22.41亿</td>


							<td>2017</td>

						</tr>
						<tr class="odd">
							<td>1</td>
							<td>5</td>
							<td>变形金刚4：绝迹重生</td>
							<td>19.79亿</td>

							<td>2014</td>

						</tr>
						<tr class="even">
							<td>2</td>
							<td>6</td>
							<td>功夫瑜伽</td>
							<td>17.53亿</td>


							<td>2017</td>

						</tr>
						<tr class="odd">
							<td>3</td>
							<td>7</td>
							<td>寻龙诀</td>
							<td>16.79亿</td>


							<td>2015</td>

						</tr>
						<tr class="even">
							<td>3</td>
							<td>8</td>
							<td>西游伏妖篇</td>
							<td>16.49亿</td>


							<td>2017</td>

						</tr>
						<tr class="odd">
							<td>4</td>
							<td>9</td>
							<td>港囧</td>
							<td>16.20亿</td>


							<td>2015</td>

						</tr>
						<tr class="even">
							<td>2</td>
							<td>10</td>
							<td>疯狂动物城</td>
							<td>15.3亿</td>


							<td>2016</td>

						</tr>
						<tr class="odd">
							<td>3</td>
							<td>11</td>
							<td>魔兽</td>
							<td>14.72亿</td>


							<td>2016</td>

						</tr>
						<tr class="even">
							<td>5</td>
							<td>12</td>
							<td>复仇者联盟2：奥创纪元</td>
							<td>14.65亿</td>


							<td>2015</td>

						</tr>
						<tr class="odd">
							<td>6</td>
							<td>13</td>
							<td>夏洛特烦恼</td>
							<td>14.39亿</td>


							<td>2015</td>

						</tr>
						<tr class="even">
							<td>7</td>
							<td>14</td>
							<td>侏罗纪世界</td>
							<td>14.2亿</td>


							<td>2015</td>

						</tr>
						<tr class="odd">
							<td>1</td>
							<td>15</td>
							<td>阿凡达</td>
							<td>13.82亿</td>

							<td>2010</td>

						</tr>
						<tr class="even">
							<td>1</td>
							<td>16</td>
							<td>人再囧途之泰囧</td>
							<td>12.67亿</td>

							<td>2012</td>

						</tr>
						<tr class="odd">
							<td>1</td>
							<td>17</td>
							<td>西游降魔篇</td>
							<td>12.46亿</td>

							<td>2013</td>

						</tr>
						<tr class="even">
							<td>4</td>
							<td>18</td>
							<td>美国队长3：英雄内战</td>
							<td>12.46亿</td>


							<td>2016</td>
						<tr class="odd">
							<td>5</td>
							<td>19</td>
							<td>西游记之孙悟空三打白骨精</td>
							<td>12.00亿</td>


							<td>2016</td>

						</tr>
						<tr class="even">
							<td>6</td>
							<td>20</td>
							<td>湄公河行动</td>
							<td>11.81亿</td>


							<td>2016</td>

						</tr>
					</tbody>
				</table>




			</div>
		</div>
	</div>


	<jsp:include page="frame/footer_frame.html" flush="true"></jsp:include>
</body>
</html>