package com.test.model;

import java.io.Serializable;
import java.sql.Date;

@SuppressWarnings("serial")
public class Cart implements Serializable {
	private String id;
	private Date buyDate;
	public Cart() {
		super();
	}
	public Cart(String id, Date buyDate) {
		super();
		this.id = id;
		this.buyDate = buyDate;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Date getBuyDate() {
		return buyDate;
	}
	public void setBuyDate(Date buyDate) {
		this.buyDate = buyDate;
	}
	
}