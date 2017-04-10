<%@page import="com.zxxz.ssh.entity.Admin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
    
    <s:debug></s:debug>
     
     <%--
     Admin admin=new Admin(); 
     String name1=admin.getName();
     request.setCharacterEncoding("utf-8");
     String name=(String) request.getParameter(name1);
      --%>
	<h4>Employee Input Page</h4>

	<s:form action="admin-save.do" method="post" >

		<s:if test="id != null">
			<s:textfield name="admin.name" label="name"   >name</s:textfield>
			<br/>
			<s:hidden name="admin.id"></s:hidden>
			<%-- 
			<!-- 通过添加隐藏域的方式把未显式提交的字段值提交到服务器 -->
			
			--%>
		</s:if>
		<s:else>
		    <s:textfield name="admin.id" label="id">id</s:textfield>
			<s:textfield name="admin.name" label="name">name</s:textfield>
			<br/>
		</s:else>
		<s:textfield name="admin.password" label="password" type="password">password</s:textfield>
		<br/>
		<s:textfield name="admin.status" label="status">status</s:textfield>
		<br/>
		<s:textfield name="admin.group" label="group">group</s:textfield>
		<br/>
		
		<s:submit></s:submit>	
	</s:form>

</body>
</html>