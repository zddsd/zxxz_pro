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

    <script type="text/javascript" charset="utf-8" src="ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="ueditor.all.min.js"> </script>
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
    <script type="text/javascript" charset="utf-8" src="lang/zh-cn/zh-cn.js"></script>
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
  <s:if test="#session.group==1"> 
<div class="container">
		<!--注册表单-->
		<div style="padding: 50px; background-color: #fff;">
			<br/>
			<h1>电影新闻资讯上传</h1>
			<hr width=80% size=4 color=#00ffff
				style="FILTER: alpha(opacity = 100, finishopacity = 0, style = 4)">
			<form  id="context1" action="news-save.do" class="form-horizontal" onsubmit="return getContent()" method="post">
               
         <!--     <div class="form-group">
               <s:textfield label="昵称" class="col-md-4 control-label" name="user.username"></s:textfield>
               </div>
                -->  
                
                <div class="form-group">
					<label class="col-md-4 control-label" for="username">电影新闻id</label>
					<div class="col-md-4">
						<input name="newsid" type="text" class="form-control" 
							placeholder="20170412010101">
					</div>
				</div>
                
                <div class="form-group">
					<label class="col-md-4 control-label" for="username">相关电影id</label>
					<div class="col-md-4">
						<input name="movieid" type="text" class="form-control" 
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
					<label class="col-md-4 control-label" for="eamil">地区</label>
					<div class="col-md-4">
						<input  name="zone" type="text" class="form-control" 
							placeholder="欧美、日韩、大陆、港台、其他">
					</div>
				</div>
				
				
				<div class="form-group">
				<div class="col-md-8">
				<!-- ueditor编辑器开始 -->
				<script id="editor" type="text/plain" style="width:1024px;height:500px;"></script>
				</div>
                
				<div id="btns" class="col-md-8">
   				
        
       		<!-- 	 <button onclick="getContent()">获得内容</button>  -->
                 <input  name="context"  type="hidden"  id="news_context">

    			</div>    
   				</div>


                
                <!-- ueditor编辑器结束-->
 			<div class="col-md-10 col-md-offset-4">
					<button name="submit" type="submit" class="btn btn-default">提交信息</button>
					<button   class="btn btn-default" type="reset" >重置</button>
				</div>
			</form>
            

		</div>
	</div>
   </s:if>
   <s:else>
	对不起，您暂时还没有权限，如果有问题，请联系超级管理员。
	</s:else>
</body>
</html>

<script type="text/javascript">

    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
    var ue = UE.getEditor('editor');


    function isFocus(e){
        alert(UE.getEditor('editor').isFocus());
        UE.dom.domUtils.preventDefault(e)
    }
    function setblur(e){
        UE.getEditor('editor').blur();
        UE.dom.domUtils.preventDefault(e)
    }
    function insertHtml() {
        var value = prompt('插入html代码', '');
        UE.getEditor('editor').execCommand('insertHtml', value)
    }
    function createEditor() {
        enableBtn();
        UE.getEditor('editor');
    }
   
    function getContent() {
        var arr = [];
      
        arr.push(UE.getEditor('editor').getContent());
       
        var i;
        var test="";
        for(i in arr){
            test=arr[i]+test;
        }
        document.getElementById("news_context").value=test;
    }
   

    uParse('.content',{
    	'liiconpath':'themes/ueditor-list/' //使用 '/' 开头的绝对路径
     })
     
     
</script>