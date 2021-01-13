<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
	<body>
	<center><br><br>
	<table border=1 width=300 height=150>
		<tr><th colspan=2>Thêm thông tin một phòng ban</th></tr>
			<form action=<c:url value='hand_add_department.jsp' /> method=post>
			<tr>
				<td>Nhập IDPB</td>
				<td><input type=text name=id></td>
			</tr>
			<tr>
				<td>Nhập tên pb</td>
				<td><input type=text name=name></td>
			</tr>
			<tr>
				<td>Nhập mô tả</td>
				<td><input type=text name=description></td>
			</tr>
			<tr>
				<td colspan=2 align=right><input type=submit name=submit value=them></td>
			</tr>
			</form>
	</table>
	</body>
</html>