<%@page import="com.hieuminh.dao.daoImpl.DepartmentDao"%>
<%@page import="com.hieuminh.utils.FormUtil"%>
<%@page import="com.hieuminh.model.DepartmentModel"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<%
 	try {
 		request.setCharacterEncoding("utf-8");
 		DepartmentModel model = FormUtil.toModel(DepartmentModel.class, request);
 		new DepartmentDao().update(model);
 		response.sendRedirect("../update_infor.jsp");
 	} catch(Exception e) {
 		response.sendRedirect(request.getContextPath() + "/error");
 	}
%>