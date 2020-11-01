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
			if(request.getParameter("txtnv")!=null) {
				StaffModel model = new StaffDao().findOne(request.getParameter("txtnv"));
				if(model == null) {
					response.sendRedirect("search.jsp");
				} else {
						out.print(
								"<tr><td>" + model.getId() + "</td><td>" + model.getFullName() 
								+ "</td><td>"+model.getIdPB()+"</td><td>"+model.getAddress()+"</td></tr>");
				}
			}
		%>
	</table>
	<a href=search.jsp>Quay lai</a></p>
</body>
</html>