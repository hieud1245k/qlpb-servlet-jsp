<%@page import="com.hieuminh.dao.daoImpl.DepartmentDao"%>
<%@page import="com.hieuminh.model.DepartmentModel"%>
<%@page import="com.hieuminh.utils.FormUtil"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<%
	try {
		request.setCharacterEncoding("utf-8");
		DepartmentModel model = FormUtil.toModel(DepartmentModel.class, request);
		if(new DepartmentDao().save(model)) {
			response.sendRedirect("../department_infor.jsp");
		} else {
			response.sendRedirect("add_department.jsp");
		}
	} catch(Exception e) {
		response.sendRedirect(request.getContentType() + "/error");
	}
%>