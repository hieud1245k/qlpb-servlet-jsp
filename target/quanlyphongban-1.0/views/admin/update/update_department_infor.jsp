<%@page import="com.hieuminh.dao.daoImpl.DepartmentDao"%>
<%@page import="com.hieuminh.model.DepartmentModel"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
</head>
<body>
	<center />
	<br />
	<br />
	<%
		String id = request.getParameter("idpb");
	DepartmentModel model = new DepartmentDao().findOne(id);
	%>
	<table border=1 width=400 height=150>
		<tr>
			<th colspan=2 align=center>Cap nhat thong tin PB</th>
		</tr>
		<form action=<c:url value='hand_update_department_infor.jsp' /> method=post>
			<tr>
				<td align=left>IDPB</td>
				<td><input type=text name=id
					value="<%out.print(model.getId());%>" readonly></td>
			</tr>
			<tr>
				<td align="left">Ten phban</td>
				<td><input type="text" name="name"
					value="<%out.print(model.getName());%>"></td>
			</tr>
			<tr>
				<td align="left">Mota</td>
				<td><input type=text name=description
					value="<%out.print(model.getDescription());%>"></td>
			</tr>
			<tr>
				<td colspan=2 align=center><input type=submit name=submit
					value='cap nhat'> <input type=submit name=exit
					value='quay lai'></td>
			</tr>
		</form>
	</table>
</body>
</html>