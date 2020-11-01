<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
	</head>
	<body>
	<center><br><br>
	<table border=1 width=300 height=150>
		<tr><th colspan=2>Thêm thông tin một nhân viên</th></tr>
			<form action=<c:url value='hand_add_staff.jsp' /> method=post>
			<tr>
				<td>Nhập IDNV</td>
				<td><input type=text name=id></td>
			</tr>
			<tr>
				<td>Nhập tên</td>
				<td><input type=text name=fullName></td>
			</tr>
			<tr>
				<td>Nhập IDPB</td>
				<td><input type=text name=idPB></td>
			</tr>
			<tr>
				<td>Nhập đ.c</td>
				<td><input type=text name=address></td>
			</tr>
			<tr>
				<td colspan=2 align=right><input type=submit name=submit value=them></td>
			</tr>
			</form>
	</table>
	</body>
</html>