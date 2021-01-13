<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<style type="text/css">
			#chenanh {
				background-image: url(<c:url value='/template/admin/image/haivan.jpg' />);
				color: white;
			}
		</style>
		<div id=title>
		<title>Quản lý phòng ban</title>
		<meta charset="utf-8">
		<frameset border=2 rows="68,*,50">
			<frame src=<c:url value='/common/web/header.jsp' /> />
			<frameset cols="18%,*">
				<frame name='tuychon' src=<c:url value='/common/web/option.jsp' /> />
				<frame id=chenanh name='noidung' src="" />
			</frameset>
			<frame src=<c:url value='/common/footer.jsp' /> />
			<noframes> Trình duyệt không hỗ trợ Frame</noframes>
		</frameset>
		</div>
	</head>
</html>
