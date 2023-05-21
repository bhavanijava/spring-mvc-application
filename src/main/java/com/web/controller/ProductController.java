package com.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.web.model.Product;
import com.web.srivice.ProductService;

@Controller
public class ProductController {
	
	@Autowired
	private ProductService service;
	
	@RequestMapping("/")
	public String home() {
		return "home";
	}

	@RequestMapping("/regform")
	public String productReg() {

		return "productreg";

	}
	
	@RequestMapping(value="/saveproduct", method=RequestMethod.POST)
	public String prodRegister(@ModelAttribute Product product, Model model) {
		Integer id =service.saveProduct(product);
		
		model.addAttribute("message", "product '" + id + "' Created ");
		
		model.addAttribute("Product " + new Product());
		
		return "productreg";


	}
	
	@RequestMapping("/viewall")
	public String viewAll(Model model) {
		
		
		model.addAttribute("productList",service.getAllProducts());

		return "viewproducts";
	}
	
	@GetMapping("/deleteproduct/{id}")
	public String deleteProduct(@PathVariable int id) {
		service.deleteProduct(id);
		return "redirect:/viewall";
		
	}
	
	
	

}
