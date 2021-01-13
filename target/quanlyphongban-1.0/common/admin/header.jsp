<%@page import="com.hieuminh.model.AccountModel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<html>
	<head>
	<meta charset="utf-8">
		<style type="text/css">
			body {
				background-color:DarkSlateBlue;
			}
			.title {
				color:white;
			}
		</style>
	</head>
	<body>
		<div class='title'>
		<a href=""><font class=title size=4><b>CHƯƠNG TRÌNH QUẢN LÝ PHÒNG BAN</b></font></a>
		</div>
		<div class=title align=right>
			Xin chào, <%out.print(((AccountModel)request.getSession().getAttribute("account")).getUsername()); %>
			<a href=<c:url value='/logout' /> target=_parent><button type=button name=logout>Logout</button></a>
		</div>
	</body>
</html>