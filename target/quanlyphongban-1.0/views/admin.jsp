<%@ page language="java" contentType="text/html"; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<style type="text/css">
			#chenanh {
				background-image: url(http://localhost:81/php/17N11_NguyenMinhHieu17T2/haivan.jpg);
				color: white;
			}
		</style>
		<div id=title>
		<title>Quản lý phòng ban</title>
		<meta charset="utf-8">
		<frameset border=2 rows="68,*,50">
			<frame src="trangchu1.php" />
			<frameset cols="18%,*">
				<frame name='tuychon' src='tuychon1.php' />
				<frame id=chenanh name='noidung' />
			</frameset>
			<frame  src=south.php/>
			<noframes> Trình duyệt không hỗ trợ Frame</noframes>
		</frameset>
		</div>
	</head>
</html>
