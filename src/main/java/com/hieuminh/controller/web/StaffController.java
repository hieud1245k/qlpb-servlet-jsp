package com.hieuminh.controller.web;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hieuminh.model.StaffModel;
import com.hieuminh.service.IStaffService;

@WebServlet(urlPatterns = {"/staff"})
public class StaffController extends HttpServlet {
	
	@Inject
	private IStaffService staffService;
	
	private static final long serialVersionUID = 4651319288775500653L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		StaffModel model = new  StaffModel();
		model.setListResult(staffService.findAll());
		req.setAttribute("model", model);
		RequestDispatcher rd = req.getRequestDispatcher("/views/web/staff_infor.jsp");
		rd.forward(req, resp);
	}
}
