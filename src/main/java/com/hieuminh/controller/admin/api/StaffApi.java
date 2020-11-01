package com.hieuminh.controller.admin.api;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hieuminh.model.StaffModel;
import com.hieuminh.service.IStaffService;
import com.hieuminh.utils.FormUtil;

@WebServlet(urlPatterns = { "/api-admin-staff" })
public class StaffApi extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Inject
	private IStaffService staffService;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8"); // dinh nghia tieng viet
		StaffModel model = FormUtil.toModel(StaffModel.class, req);
		if (staffService.save(model)) {
			resp.sendRedirect(req.getContextPath() + "/admin-home");
		} else {
			resp.sendRedirect(req.getContextPath() + "/error");
		}
	}
}
