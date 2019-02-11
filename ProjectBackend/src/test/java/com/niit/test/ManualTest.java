package com.niit.test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.CategoryDAO;
import com.niit.model.Category;

public class ManualTest {

	
	public static void main(String arg[])
	{
		AnnotationConfigApplicationContext context=new  AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		
		CategoryDAO categoryDAO=(CategoryDAO)context.getBean("categoryDAO");
		
		Category category=new Category();
		category.setCategoryName("NokiaMobile ");
		category.setCategoryDesc("All variety of Nokia Mobile");
		//category.setCategoryId(101);
		categoryDAO.addCategory(category);
	}

}
