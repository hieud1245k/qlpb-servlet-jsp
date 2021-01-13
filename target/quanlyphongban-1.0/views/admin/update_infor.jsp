<%@page import="com.hieuminh.dao.daoImpl.DepartmentDao"%>
<%@page import="com.hieuminh.model.DepartmentModel"%>
<%@page import="com.hieuminh.dao.daoImpl.StaffDao"%>
<%@page import="java.util.List"%>
<%@page import="com.hieuminh.model.StaffModel"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
</head>
<body>
	<table border=1 width=100%>
		<caption>Cap nhat thong tin phong ban</caption>
		<tr>
			<th>IDPB</th>
			<th>Tenpb</th>
			<th>Mota</th>
			<th>capnhat</th>
		</tr>
		<% 
			List<DepartmentModel> list_pb = new DepartmentDao().findAll();
		for (DepartmentModel model : list_pb) {
			out.print("<tr><td>" + model.getId() + "</td><td>" + model.getName() + "</td><td>" + model.getDescription()
			+ "</td><td align=center style: {text-decoration: none}>" + "<a href=update/update_department_infor.jsp?idpb=" 
			+ model.getId() + ">cập nhật</a>"
			+ "</td></tr>");
		}
		%>
	</table>
	<br>
	<br>
	<br>
	<table border=1 width=100%>
		<caption>Cap nhat thong tin nhanvien</caption>
		<tr>
			<th>IDNV</th>
			<th>Hoten</th>
			<th>IDPB</th>
			<th>Diachi</th>
			<th>cap nhat</th>
		</tr>
		<%
			List<StaffModel> list_nv = new StaffDao().findAll();
		for (StaffModel model : list_nv) {
			out.print("<tr><td>" + model.getId() + "</td><td>" + model.getFullName() + "</td><td>" + model.getIdPB()
			+ "</td><td>" + model.getAddress() + "</td><td align=center style: {text-decoration: none}>" 
			+ "<a href=update/update_staff_infor.jsp?idnv=" + model.getId() + ">cập nhật</a>"
			+ "</td></tr>");
		}
		%>
	</table>
</body>
</html>