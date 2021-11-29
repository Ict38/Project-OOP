package com.test.controller.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.test.model.Category;
import com.test.model.Product;
import com.test.model.User;
import com.test.service.ICategoryService;
import com.test.service.IProductService;
import com.test.service.impl.CategoryServiceImpl;
import com.test.service.impl.ProductServiceImpl;
@SuppressWarnings("serial")
@WebServlet(urlPatterns="/product-search")
public class ProductSearchController extends HttpServlet {
	IProductService productService=new ProductServiceImpl();
	ICategoryService cateService = new CategoryServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name=req.getParameter("name");
		List<Product> productSeachByName =productService.seachByName(name);
		req.setAttribute("productSeachByName", productSeachByName);
		HttpSession session = req.getSession();
		List<Category> categories = cateService.getAll();
		req.setAttribute("categories", categories);
		Object user = session.getAttribute("account");
		User u = (User) user;
		if( u == null) req.getRequestDispatcher("view/web/productSBN.jsp").forward(req, resp);	
		else
		if(u.getRoleId() == 2) {
			req.getRequestDispatcher("view/web/productSBN.jsp").forward(req, resp);	
			
		}
		else req.getRequestDispatcher("view/admin/productSBN.jsp").forward(req, resp);	
	}
}