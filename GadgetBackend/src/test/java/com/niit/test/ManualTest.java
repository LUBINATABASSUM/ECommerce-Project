package com.niit.test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecomm.dao.CategoryDAO;
import com.ecomm.model.Category;

public class ManualTest {
	
	public static void main(String arg[])
	{
		AnnotationConfigApplicationContext context=new  AnnotationConfigApplicationContext();
		context.scan("com.ecomm");
		context.refresh();
		
		CategoryDAO categoryDAO=(CategoryDAO)context.getBean("categoryDAO");
		
		Category category=new Category();
		category.setCategoryName("NokiaMobile");
		category.setCategoryDesc("All variety of Nokia Mobile");
		//category.setCategoryId(101);
		categoryDAO.addCategory(category);
	}

}
