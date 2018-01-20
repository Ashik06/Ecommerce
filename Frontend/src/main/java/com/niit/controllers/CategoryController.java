package com.niit.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.dao.CategoryDao;
import com.niit.model.Category;

@Controller
public class CategoryController {
	@Autowired
	CategoryDao categoryDao;

	
	@RequestMapping("category")
	public String NewCategory(Model model)	{
		
		model.addAttribute("AddCategoryButtonClicked", true);
		return "category";
		
	}
	
	@RequestMapping("addCategory")
	public String addCategory(@ModelAttribute Category category){
		categoryDao.addCategory(category);
		return "redirect:viewCategory";
	
	}
	@RequestMapping("viewCategory")
	public String viewCategories(Model model){
		
		List<Category> categoryList = categoryDao.list();
		model.addAttribute("categoryList", categoryList);
		model.addAttribute("viewCategoryClicked", true);
		return "viewcategory";
		
	}
	
	}
