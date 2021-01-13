<%@page import="javax.inject.Inject"%>
<%@page import="com.hieuminh.dao.daoImpl.StaffDao"%>
<%@page import="com.hieuminh.service.serviceImpl.StaffService"%>
<%@page import="com.hieuminh.model.StaffModel"%>
<%@page import="java.util.List"%>
<%@page import="com.hieuminh.service.IStaffService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>



<!DOCTYPE html>
<html>
<body>
	<br>
	<br>
	<table border=1 width=100%>

		<tr>
		<th>IDNV</th>
		<th>Hoten</th>
		<th>IDPB</th>
		<th>Diachi</th>
		</tr>

		<%
			List<StaffModel> list = new StaffDao().findAll();
		 for (StaffModel model : list) {
			out.print(
			"<tr><td>" + model.getId() + "</td><td>" + model.getFullName() 
			+ "</td><td>"+model.getIdPB()+"</td><td>"+model.getAddress()+"</td></tr>");
		} 
		%>
	</table>
</body>
</html>