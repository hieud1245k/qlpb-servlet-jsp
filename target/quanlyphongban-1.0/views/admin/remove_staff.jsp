<%@page import="com.hieuminh.dao.daoImpl.StaffDao"%>
<%@page import="com.hieuminh.model.StaffModel"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
</head>
<body>
	<form action=<c:url value='hand_remove_staff.jsp' /> method=get>
		<table border=1 width=100%>
			<caption>Xoa nhan vien</caption>
			<tr>
				<th>IDNV</th>
				<th>Hoten</th>
				<th>IDPB</th>
				<th>Diachi</th>
				<th>Chinhsua</th>
			</tr>

			<%
				List<StaffModel> list = new StaffDao().findAll();
			for (StaffModel model : list) {
				out.print("<tr><td>" + model.getId() + "</td><td>" + model.getFullName() + "</td><td>" + model.getIdPB()
				+ "</td><td>" + model.getAddress() + "</td><td align=center><input type=checkbox name=cat[] value="
				+ model.getId() + "></a></td></tr>");
			}
			%>

		</table>
		<p align=right>
			<input type=submit value=submit>
		</p>
	</form>
</body>
</html>