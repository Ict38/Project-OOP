package com.test.controller.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.test.model.User;
import com.test.service.UserService;
import com.test.service.impl.UserServiceImpl;

@SuppressWarnings("serial")
@WebServlet(urlPatterns = "/login")
public class LoginController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession(false);
		if (session != null && session.getAttribute("account") != null) {
			resp.sendRedirect(req.getContextPath()+ "/home");
			return;
		}
		req.getRequestDispatcher("view/client/view/login.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		  	String username = req.getParameter("username");
	        String password = req.getParameter("password");
	      
	        String alertMsg="Vui lòng đăng nhập";
	        
	        if(username.isEmpty() || password.isEmpty()){
	            alertMsg = "Tên đăng nhập và mật khẩu không thể để trống!";
	            req.setAttribute("alert", alertMsg);
	            req.getRequestDispatcher("/view/web/login.jsp").forward(req, resp);
	            System.out.print("empty");
	            return;
	        }
	      
	        UserService service = new UserServiceImpl();
	        
	        User user = service.login(username, password);
	        
	        
	        if(user!=null){
	            HttpSession session = req.getSession(true);
	            session.setAttribute("account", user);
	            if( user.getRoleId() == 1) resp.sendRedirect("/test/admin-home");
	            else resp.sendRedirect("/test/home");
	            
	        }else{
	            alertMsg = "Tên Đăng Nhập và Mật khẩu không đúng";
	            System.out.print("wrong");
	            req.setAttribute("alert", alertMsg);
	            req.getRequestDispatcher("/view/web/login.jsp").forward(req, resp);
	        }
	    }
	    
	}


