package com.niit.services;

import java.util.List;

import com.niit.model.Product;
public interface ProductService {
List<Product> getAllProducts();
Product getProduct(int id);
void deleteProduct(int id);
}


