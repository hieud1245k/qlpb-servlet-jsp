<%@page import="com.hieuminh.dao.daoImpl.StaffDao"%>
<%@page import="com.hieuminh.utils.FormUtil"%>
<%@page import="com.hieuminh.model.StaffModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
	try {
		request.setCharacterEncoding("utf-8");
		StaffModel model = FormUtil.toModel(StaffModel.class, request);
		new StaffDao().update(model);
		response.sendRedirect("../update_infor.jsp");
	} catch(Exception e) {
		response.sendRedirect(request.getContextPath() + "/error");
	}
%>