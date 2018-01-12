package com.niit.controllers;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

import com.niit.model.Product;
import com.niit.services.ProductService;

@Controller
public class ProductController {
	@Autowired
	private ProductService productService;

	@RequestMapping(value = "admin/InsertProduct")
	public String showProduct(Model m) {
		Product product = new Product();
		m.addAttribute(product);
		//m.addAttribute("categoryList", this.getCategories());
		//m.addAttribute("supplierList", this.getSupplieries());
		return "Product";
	}

	@RequestMapping(value = "/all/getallproducts")
	public ModelAndView getAllProducts() {
		List<Product> products = productService.getAllProducts();
		return new ModelAndView("productlist", "productsAttr", products);

	}

	// all/viewproduct/1{id=1}
	@RequestMapping(value = "all/viewproduct/{id}")
	public ModelAndView getProduct(@PathVariable int id) {
		Product product = productService.getProduct(id);
		return new ModelAndView("viewproduct", "product", product);

	}

	@RequestMapping(value = "/admin/deleteproduct/id")
	public String deleteProduct(@PathVariable int id) {
		productService.deleteProduct(id);
		return "redirect:/all/getallproducts";
	}

}
