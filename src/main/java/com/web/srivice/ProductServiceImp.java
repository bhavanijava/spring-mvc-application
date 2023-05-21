package com.web.srivice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.model.Product;
import com.web.repository.ProductRepo;
@Service
public class ProductServiceImp implements ProductService {
	@Autowired
	private ProductRepo repo;

	@Override
	public Integer saveProduct(Product product) {
			
		Double discount=(product.getCost()*0.1);
		

		Double gstAmount=product.getCost()*(Double.parseDouble(product.getGst())/100);
		Double totAmt=product.getCost()+gstAmount-discount;
		
		product.setCost(totAmt);
		
		product=repo.save(product);
		
		
		
		return product.getId();
	}

	@Override
	public List<Product> getAllProducts() {
		
		return repo.findAll();
	}

	@Override
	public Product getProductById(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteProduct(int poductId) {
		repo.deleteById(poductId);

	}

}
