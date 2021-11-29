package com.test.controller.admin;


import java.io.IOException;
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
@WebServlet(urlPatterns = { "/edit-product" })
public class EditProduct extends HttpServlet {
	IProductService productService = new ProductServiceImpl();
	ICategoryService categoryService = new CategoryServiceImpl();

	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		Product product = new Product();
		
		String cid = req.getParameter("cate");
		String pId = req.getParameter("pId");
		String name = req.getParameter("name");
		String price = req.getParameter("price");
		String des = req.getParameter("des");
		String image = req.getParameter("image");
		
		
		product.setCategory(categoryService.get(Integer.parseInt(cid)));
		product.setId(Integer.parseInt(pId));
		product.setDes(des);
		product.setImage(image);
		product.setName(name);
		product.setPrice(Long.parseLong(price));
		
		productService.edit(product);
		resp.sendRedirect("/test/admin-home");
		

	}
}
