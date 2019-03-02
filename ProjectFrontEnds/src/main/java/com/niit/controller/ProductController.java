package com.niit.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.LinkedHashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.niit.dao.CategoryDAO;
import com.niit.dao.ProductDAO;
import com.niit.model.Category;
import com.niit.model.Product;


@Controller
public class ProductController {
	
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@RequestMapping("/product")
	public String showProduct(Model m)
	{
		Product product=new Product();
		m.addAttribute(product);
		
		m.addAttribute("categoryList",this.getCategoryList(categoryDAO.listCategories()));
		m.addAttribute("productList", productDAO.listProducts());
		
		return "Product";
	}
	
	@RequestMapping("/totalProductDisplay/{productId}")
	public String showTotalProductDisplay(@PathVariable("productId")int productId,Model m)
	{
		Product product1=productDAO.getProduct(productId);
		
      m.addAttribute("product",product1);
		
		return "TotalProductDisplay";
	}
	
	
	@RequestMapping("/productDisplay")
	public String showProductDisplay(Model m)
	{
		
      m.addAttribute("productList", productDAO.listProducts());
		
		return "ProductDisplay";
	}
	

	

	
	
	@RequestMapping(value="/InsertProduct",method=RequestMethod.POST)
	public String insertProduct(@ModelAttribute("product")Product product,@RequestParam("pimage")MultipartFile productImage,Model m)
	{
		
		productDAO.addProduct(product);
		
		
		
		//Adding Product Image
				String path="D://DT NEW WORKSPACE//ProjectFrontEnds//src//main//webapp//resources//images//";
				path=path+String.valueOf(product.getProductId()+".jpg");
				File imageFile=new File(path);
				
				if(!productImage.isEmpty())
				{
					try
					{
						byte[] buffer=productImage.getBytes();
						FileOutputStream fos=new FileOutputStream(imageFile);
						BufferedOutputStream bs=new BufferedOutputStream(fos);
						bs.write(buffer);
						bs.close();
					}
					catch(Exception e)
					{
						System.out.println("Exception Arised:"+e);
					}
				}
				else
				{
					System.out.println("Error Occured:");
					m.addAttribute("Error","Error Occured during the image uplodaing");
				}
				//Ending 

				

		Product product1 =new Product();
		m.addAttribute(product1);
	
		
		m.addAttribute("categoryList",this.getCategoryList(categoryDAO.listCategories()));
		m.addAttribute("productList", productDAO.listProducts());
		
	    return "Product";
	}
	
	@RequestMapping(value="/deleteProduct/{productId}")
	public String deleteProduct(@PathVariable("productId")int productId,Model m)
	{
		Product product1=productDAO.getProduct(productId);
		productDAO.deleteProduct(product1);
		
		Product product =new Product();
		m.addAttribute(product);
		
		m.addAttribute("categoryList",this.getCategoryList(categoryDAO.listCategories()));
		m.addAttribute("productList", productDAO.listProducts());
		
		return "Product";
	}
	
	@RequestMapping(value="/editProduct/{productId}")
	public String editProduct(@PathVariable("productId")int productId,Model m)
	{
		Product product1=productDAO.getProduct(productId);
		productDAO.deleteProduct(product1);
		
		Product product =new Product();
		m.addAttribute(product);
		
		m.addAttribute("categoryList",this.getCategoryList(categoryDAO.listCategories()));
		m.addAttribute("productList", productDAO.listProducts());
		
		return "Product";
	}

	public LinkedHashMap<Integer,String>getCategoryList(List<Category> categoryList)
	{
		LinkedHashMap<Integer,String>listCategory=new LinkedHashMap<Integer,String>();
		for(Category category:categoryList)
		{
			listCategory.put(category.getCategoryId(),category.getCategoryName());
			System.out.println(category.getCategoryId()+category.getCategoryName());
		}
		return listCategory;
	}
}
