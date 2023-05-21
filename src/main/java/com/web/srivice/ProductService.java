package com.web.srivice;

import java.util.List;

import com.web.model.Product;

public interface ProductService {
	
	public Integer saveProduct(Product p);
	
	public List<Product> getAllProducts();
	public Product getProductById(Integer id);
	public void deleteProduct(int poductId);
}
