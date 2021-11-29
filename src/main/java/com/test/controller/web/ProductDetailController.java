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
@WebServlet(urlPatterns="/product/detail")
public class ProductDetailController extends HttpServlet {
	IProductService productService = new ProductServiceImpl();
	ICategoryService categoryService = new CategoryServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		Product product = productService.get(Integer.parseInt(id));
		List<Category> categories = categoryService.getAll();
		int cid = product.getCategory().getId();
		List<Product> related = productService.seachByCategory(cid);
		req.setAttribute("categories", categories);
		req.setAttribute("product", product);
		req.setAttribute("relate", related);
		HttpSession session = req.getSession();
		Object user = session.getAttribute("account");
		User u = (User) user;
		if( u == null) req.getRequestDispatcher("/view/web/product-detail.jsp").forward(req, resp);	
		else
		if(u.getRoleId() == 2) {
			System.out.println("--------------------------------------------------------");
			req.getRequestDispatcher("/view/web/product-detail.jsp").forward(req, resp);	
			
		}
		else req.getRequestDispatcher("/view/admin/product-detail.jsp").forward(req, resp);	
	}

}
