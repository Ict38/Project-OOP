package com.test.service.impl;

import java.util.List;
import com.test.dao.CartDao;
import com.test.dao.impl.CartDaoImpl;
import com.test.model.Cart;
import com.test.service.CartService;
public class CartServiceImpl implements CartService {
	CartDao cartDao = new CartDaoImpl();

	

	@Override
	public void insert(Cart cart) {
		cartDao.insert(cart);

	}

	@Override
	public List<Cart> getAll() {
		return cartDao.getAll();
	}

	@Override
	public Cart get(int id) {
		return cartDao.get(id);
	}

	@Override
	public void edit(Cart newCart) {
		Cart oldCart = cartDao.get(newCart.getId());
		oldCart.setBuyDate(newCart.getBuyDate());
		
		
		cartDao.edit(oldCart);

	}

	@Override
	public void delete(int id) {
		cartDao.delete(id);
	}
}
