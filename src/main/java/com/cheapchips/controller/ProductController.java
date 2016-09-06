package com.cheapchips.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cheapchips.dao.ProductDao;
import com.cheapchips.model.Product;
import com.google.gson.Gson;

@Controller
public class ProductController {
   @Autowired
	ProductDao dao;
   
   @RequestMapping("/Product")
   public String showProduct(Model m)
   {
	   Gson gson=new Gson();
	   
	  List<Product> list=dao.addProduct(); 
	  String s=gson.toJson(list);
	  m.addAttribute("proddata",s);
	  return "showProduct";
   }
}
