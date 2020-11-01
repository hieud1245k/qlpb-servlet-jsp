<%@page import="com.hieuminh.utils.FormUtil"%>
<%@page import="com.hieuminh.model.StaffModel"%>
<%@page import="com.hieuminh.dao.daoImpl.StaffDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<%
	try {
		request.setCharacterEncoding("utf-8");
		StaffModel model = FormUtil.toModel(StaffModel.class, request);
		if(new StaffDao().save(model)) {
			response.sendRedirect("../staff_infor.jsp");
		} else {
			response.sendRedirect("add_staff.jsp");
		}
	} catch(Exception e) {
		response.sendRedirect(request.getContentType() + "/error");
	}
%>