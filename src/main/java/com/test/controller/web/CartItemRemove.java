package com.test.controller.web;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.test.model.CartItem;

@SuppressWarnings("serial")
@WebServlet(urlPatterns = { "/cartx" }) 
public class CartItemRemove extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession httpSession = req.getSession();
		Object obj = httpSession.getAttribute("cart");
		String pId = req.getParameter("pId");
		if (obj != null) {
			@SuppressWarnings("unchecked")
			Map<Integer, CartItem> map = (Map<Integer, CartItem>) obj;
			map.remove(Integer.parseInt(pId));
			httpSession.setAttribute("cart", map);
		}
		resp.sendRedirect(req.getContextPath() + "/cart");
	}
}