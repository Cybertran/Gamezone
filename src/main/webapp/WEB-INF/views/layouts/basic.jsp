<%@page import="com.optimus.common.*,java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%
	PageRenderer renderer = PageRendererManager.getPageRenderer();
	ArrayList<String> scriptLinks  = renderer.getScriptList();
	ArrayList<String> cssLinks  = renderer.getCssList();
%>
<c:set value="<%=scriptLinks%>" var="scriptLinks"></c:set>
<c:set value="<%=cssLinks%>" var="cssLinks"></c:set>
<c:forEach items="${scriptLinks}" var="item">
	<script type="text/javascript" src='<c:url value="${item}" />'>
		
	</script>
</c:forEach>
<c:forEach items="${cssLinks}" var="item"> 
	<link href="<c:url value='${item}'/>" rel="stylesheet" media="screen">
</c:forEach>
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>
<tiles:getAsString name="title" /></title> 
		<tiles:insertAttribute name="header" />
</head>
<body class="well">
<div class="container bodyLayout" style="margin-top: 50px;">
<tiles:insertAttribute name="body" />
</div>
	
</body>
<tiles:insertAttribute name="footer" />
</html>