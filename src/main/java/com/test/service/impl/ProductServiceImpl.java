package com.test.service.impl;

import java.util.ArrayList;
import java.util.List;
import com.test.dao.IProductDao;
import com.test.dao.impl.ProductDaoImpl;
import com.test.model.Product;
import com.test.service.IProductService;

public class ProductServiceImpl implements IProductService {
	IProductDao productDao = new ProductDaoImpl();

	@Override
	public void insert(Product product) {
		productDao.insert(product);

	}

	@Override
	public void edit(Product newProduct) {
		Product oldProduct = productDao.get(newProduct.getId());
		
		
		oldProduct.setName(newProduct.getName());
		oldProduct.setPrice(newProduct.getPrice());
		oldProduct.setCategory(newProduct.getCategory());
		oldProduct.setDes(newProduct.getDes());
		oldProduct.setImage(newProduct.getImage());

		productDao.edit(oldProduct);

	}

	@Override
	public void delete(int id) {
		productDao.delete(id);

	}

	@Override
	public Product get(int id) {
		return productDao.get(id);
	}

	@Override
	public List<Product> getAll() {
		return productDao.getAll();
	}

	@Override
	public List<Product> search(String product) {
		return productDao.search(product);
	}

	@Override
	public List<Product> seachByCategory(int cate_id) {
		return productDao.seachByCategory(cate_id);
	}
	
	@Override
	public List<Product> getAllreversed() {
		List<Product> tmp = new ArrayList<Product>();
		List<Product> org = productDao.getAll();
		for(int i = org.size() - 1; i >= 0; i-- ) tmp.add(org.get(i));
		return tmp;
	}

	@Override
	public List<Product> seachByName(String productName) {
		return productDao.seachByName(productName);
	}

	public static void main(String[] args) {
		IProductService productService = new ProductServiceImpl();
		List<Product> productList = productService.getAll();
		for(Product i : productList) {
			System.out.println(i);
		}
	}

}