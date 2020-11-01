<%@page import="com.hieuminh.dao.daoImpl.DepartmentDao"%>
<%@page import="com.hieuminh.model.DepartmentModel"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<br>
<br>
<table border=1 width=100%>
	<tr>
		<th>IDPB</th>
		<th>Tenpb</th>
		<th>Mota</th>
		<th>Nhanvien</th>
	</tr>
	<%
		List<DepartmentModel> list = new DepartmentDao().findAll();
		for(DepartmentModel model : list) {
			out.print(
					"<tr><td>" + model.getId() + "</td><td>" + model.getName() 
					+ "</td><td>"+model.getDescription()+"</td><td align=center>"+
					"<a href=staff_of_department.jsp?idpb="+ model.getId() +">xxx</a>"
					+"</td></tr>");
		}
	%>
	
</table>
