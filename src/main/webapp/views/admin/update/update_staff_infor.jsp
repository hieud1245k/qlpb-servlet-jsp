<%@page import="com.hieuminh.dao.daoImpl.StaffDao"%>
<%@page import="com.hieuminh.model.StaffModel"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<center />
	<br />
	<br />

	<%
		String id = request.getParameter("idnv");
		StaffModel model = new StaffDao().findOne(id);
	%>

	<table border=1 width=400 height=150>
		<tr>
			<th colspan=2 align=center>Cap nhat thong tin NV</th>
		</tr>
		<form action=<c:url value='hand_update_staff_infor.jsp' /> method=post>
			<tr>
				<td align=left>IDNV</td>
				<td><input type=text name=id value="<% out.print(model.getId()); %>"
					readonly></td>
			</tr>
			<tr>
				<td align=left>Hoten</td>
				<td><input type=text name=fullName value="<% out.print(model.getFullName()); %>"></td>
			</tr>
			<tr>
				<td align=left>IDPB</td>
				<td><input type=text name=idPB value="<% out.print(model.getIdPB()); %>"
					readonly></td>
			</tr>
			<tr>
				<td align=left>Diachi</td>
				<td><input type=text name=address value="<% out.print(model.getAddress()); %>" ></td>
			</tr>
			<tr>
				<td colspan=2 align=center><input type=submit name=submit1
					value='cap nhat'> <input type=submit name=exit1
					value='quay lai'></td>
			</tr>
		</form>
	</table>
</body>
</html>