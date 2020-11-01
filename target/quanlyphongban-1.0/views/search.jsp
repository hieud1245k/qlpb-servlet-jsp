<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<center><br><br>
		<table border=1 width=300 height=100>
			<tr><th colspan=2>Tìm kiếm</th><tr>
			<form action=xulytimkiem.php method="post">
				<tr>
					<td align=left> IDNV </td>
					<td><input type=text name=txtnv></td>
				</tr>
				<tr>
					<td align=left> Họ tên </td>
					<td><input type=text name=txtht></td>
				</tr>
				<tr>
					<td align=center colspan=2>
						<input type=submit name="submit" value="submit">
						<input type=button value="Exit">
					</td>
				</tr>
			</form>
		</table>