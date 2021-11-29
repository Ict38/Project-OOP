package com.test.controller.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.test.service.UserService;
import com.test.service.impl.UserServiceImpl;



@SuppressWarnings("serial")
@WebServlet(urlPatterns = "/register")
public class RegisterController extends HttpServlet {

	@SuppressWarnings("static-access")
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		UserService service = new UserServiceImpl();
		String alertMsg = "Đăng Ký Thành Công";
		if (service.checkExistUsername(username)) {
			alertMsg = "Tên Đăng Nhập đã được sử dụng!";
			req.setAttribute("alert", alertMsg);
			req.getRequestDispatcher("view/web/register.jsp").forward(req, resp);
			return;
		}

		boolean isSuccess = service.register(username, password);
		if (isSuccess) {
			req.setAttribute("alert", alertMsg);
			resp.sendRedirect("view/web/login.jsp");
		} else {
			alertMsg = "System error!";
			req.setAttribute("alert", alertMsg);
			req.getRequestDispatcher("view/web/register.jsp").forward(req, resp);
		}
	}

}
