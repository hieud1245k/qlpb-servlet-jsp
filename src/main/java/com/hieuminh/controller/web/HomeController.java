package com.hieuminh.controller.web;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hieuminh.model.AccountModel;
import com.hieuminh.service.IAccountService;
import com.hieuminh.utils.FormUtil;

@WebServlet(urlPatterns = { "/trang-chu" ,"/dang-nhap","/logout"})
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Inject
	private IAccountService accountService;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		session.removeAttribute("account");
		RequestDispatcher rd = req.getRequestDispatcher("/views/web.jsp");
		rd.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		AccountModel model = FormUtil.toModel(AccountModel.class, req);
		model = accountService.findByUsernameAndPassword(model.getUsername(), model.getPassword());
		if(model != null) {
			HttpSession session = req.getSession();
			session.setAttribute("account", model);
			resp.sendRedirect(req.getContextPath() + "/admin-home?");	
		} else {
			resp.sendRedirect(req.getContextPath() +  "/trang-chu");
		}
	}

}
