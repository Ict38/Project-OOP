package com.test.controller.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.model.Category;
import com.test.model.Product;
import com.test.service.ICategoryService;
import com.test.service.IProductService;
import com.test.service.impl.CategoryServiceImpl;
import com.test.service.impl.ProductServiceImpl;

@SuppressWarnings("serial")
@WebServlet(urlPatterns = { "/home" })
public class HomeController extends HttpServlet {
	IProductService productService = new ProductServiceImpl();
	ICategoryService cateService = new CategoryServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Product> productList = productService.getAll();
		req.setAttribute("pList", productList);
		List<Category> categories = cateService.getAll();
		req.setAttribute("categories", categories);
		RequestDispatcher dispatcher = req.getRequestDispatcher("view/web/home.jsp");
		dispatcher.forward(req, resp);
	}
}