package com.niit.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;


import com.ecomm.dao.ProductDAO;

import com.ecomm.model.Product;

public class ProductDAOUnitTestCases {
	
	

static ProductDAO productDAO;
	
	@BeforeClass
	 public static void executeFirst() {
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("com.ecomm");
		context.refresh();
		
		productDAO=(ProductDAO)context.getBean("productDAO");
		
	}
	
	@Test
	public void addProductUnitTest() {


		  Product product=new Product();
		  product.setProductName("XiomiMobile");
		  product.setProductDesc("All Xiomi Smart phone Mobile");
		 
		  
		  assertTrue("Problem in adding the Product", productDAO.addProduct(product));
	}
	
	@Ignore
	@Test
	public void updateProductUnitTest() {
		Product product=productDAO.getProduct(1);
		product.setProductDesc("All Samsung Smart phone Mobiles");
		
		assertTrue("Problem in Updating the Product", productDAO.updateProduct(product));
	}
	
	@Ignore
	@Test
	public void deleteProductUnitTest() {
		Product product=productDAO.getProduct(2);
		assertTrue("Problem in Deleting the Product:" ,productDAO.deleteProduct(product));
	}
	

	@Test
	public void listProductsUnitTest()
	{
		List<Product> listProducts=productDAO.listProducts();
		
		assertTrue("Problem in Listing Product:",listProducts.size()>0);
		
		for(Product product:listProducts)
		{
			System.out.print(product.getProductId()+"\t");
			System.out.print(product.getProductName()+"\t");
			System.out.println(product.getProductDesc());
			
		}
		
}
}
