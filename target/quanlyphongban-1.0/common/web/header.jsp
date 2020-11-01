<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
	<head>
		<meta charset="utf-8">
		<style type="text/css">
			.title {
				display:inline;
			}
		</style>
	<head>
	<body style="background-color:DarkSlateBlue	">
		<div class='title'>
		<a href="/quanlyphongban/trang-chu" target=_parent><font size=4 style="color:white"><b>CHƯƠNG TRÌNH QUẢN LÝ PHÒNG BAN</b></font></a>
		</div>
		<div class='title' align=right style="color:white">
			<form action=xulydangnhap.php method=post target=_parent>
				Username: <input type=text name=username>
				Password: <input type=password name=password>
				<input type=submit name=submit value="Login">
			</form>
		</div>
	</body>
</html>