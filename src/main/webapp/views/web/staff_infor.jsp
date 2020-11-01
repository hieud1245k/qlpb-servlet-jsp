<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<body>
<br>
<br>
<table border=1 width=100%>
	<tr>
		<th>IDNV</th>
		<th>Hoten</th>
		<th>IDPB</th>
		<th>Diachi</th>
	</tr>
		<c:forEach var="item" items="${model.listResult}">
		<tr>
			<td>${item.id }</td>
			<td>${item.fullName }</td>
			<td>${item.idPB }</td>
			<td>${item.address }</td>
		</tr>
		</c:forEach>
</table>
</body>
</html>