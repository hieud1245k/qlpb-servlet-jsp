<%@page import="com.hieuminh.dao.daoImpl.StaffDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<%
	try {
		String[] ids = request.getParameterValues("cat[]");
		for(String id : ids) {
			new StaffDao().delete(id);
		}
		response.sendRedirect("remove_staff.jsp");
	} catch(Exception e) {
		response.sendRedirect("../staff_infor.jsp");
	}
%>