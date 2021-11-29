package com.test.controller.admin;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.model.Product;
import com.test.service.ICategoryService;
import com.test.service.IProductService;
import com.test.service.impl.CategoryServiceImpl;
import com.test.service.impl.ProductServiceImpl;

@SuppressWarnings("serial")
@WebServlet(urlPatterns = { "/add-product" })
public class AddProduct extends HttpServlet {
	IProductService productService = new ProductServiceImpl();
	ICategoryService cateService = new CategoryServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/admin/add.jsp");
		dispatcher.forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Product product = new Product();
		String alert = "";
		String cid = req.getParameter("cate");
		String name = req.getParameter("name");
		String price = req.getParameter("price");
		String des = req.getParameter("des");
		String image = req.getParameter("image");
		
		if(cid == "" || name == "" || price == "" || des == "" || image == "") {
				alert = "Vui lòng nhập đủ";
				req.setAttribute("alert", alert);
				req.getRequestDispatcher("/add").forward(req, resp);
		}else {
		product.setCategory(cateService.get(Integer.parseInt(cid)));
		product.setDes(des);
		product.setImage(image);
		product.setName(name);
		product.setPrice(Long.parseLong(price));
		productService.insert(product);
		resp.sendRedirect("/test/admin-home");
		
		}
	}
}