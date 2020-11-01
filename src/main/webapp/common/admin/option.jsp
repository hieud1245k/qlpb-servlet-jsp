<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@include file="/common/taglib.jsp" %>
<html>
	<head>
		<meta charset=utf-8>
		<style type="text/css">
			body {
				background-color:darkcyan;
				color:red;
			} 
			.mauchu {
				color:chartreuse;
			}
			#menu ul {
				background: #8AD385;
				width: 245px;
				padding: 0;
				list-style-type: none;
				text-align: left;
			}
			#menu li {
				width: auto;
				height: 40px;
				line-height: 40px;
				border-bottom: 1px solid #e8e8e8;
				padding: 0 1em;
			}
			#menu li a {
				text-decoration: none;
				color: #333;
				font-weight: bold;
				display: block;
			}
			#menu li:hover {
				background: #cde2cd;
			}
		</style>
	</head>
	<body>
		<p><h3>Chọn chức năng:</h3></p>
		<div id=menu>
		<ul>
		<li><a class=mauchu href=<c:url value='/views/staff_infor.jsp' /> target='noidung'>Xem thông tin NV</a></li>
			<li><a class=mauchu href=<c:url value='/views/department_infor.jsp' /> target='noidung'>Xem thông tin PB</a></li>
			<li><a class=mauchu href=<c:url value='/views/search.jsp' /> target='noidung'>Tìm kiếm thông tin</a></li>
		<li><a class=mauchu href=<c:url value='/views/admin/add_staff.jsp' /> target=noidung>Thêm nhân viên</a></li>
		<li><a class=mauchu href=<c:url value='/views/admin/add_department.jsp' /> target=noidung>Thêm phòng ban</a></li>
		<li><a class=mauchu href=<c:url value='/views/admin/remove_staff.jsp' /> target=noidung>Xóa nhân viên</a></li>
		<li><a class=mauchu href=<c:url value='/views/admin/update_infor.jsp' /> target=noidung>Cập nhật thông tin nhân viên</a></li>
		</ul>
		</div>
	</body>
</html>
	
	