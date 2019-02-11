/*package com.niit.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.SupplierDAO;
import com.niit.model.Supplier;

public class SupplierDAOUnitTestCases {

static SupplierDAO supplierDAO;
	
	@BeforeClass
	
	public static void executeFirst() {
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		
		supplierDAO=(SupplierDAO)context.getBean("supplierDAO");
		
	}
	

	@Test
	public void addSupplierUnitTest() {


		  Supplier supplier=new Supplier();
		  supplier.setSupplierName("XiomiMobile");
		  supplier.setSupplierDesc("All Xiomi Smart phone Mobile");
		  
		  assertTrue("Problem in adding the Supplier", supplierDAO.addSupplier(supplier));
	}
	
	@Ignore
	@Test
	public void updateSupplierUnitTest() {
		Supplier supplier=supplierDAO.getSupplier(1);
		supplier.setSupplierDesc("All Samsung Smart phone Mobiles");
		
		assertTrue("Problem in Updating the Supplier", supplierDAO.updateSupplier(supplier));
	}
	
	@Ignore
	@Test
	public void  deleteSupplierUnitTest() {
		Supplier supplier=supplierDAO.getSupplier(2);
		supplier.setSupplierDesc("All Samsung Smart phone Mobiles");
		
		assertTrue("Problem in Deleting the Supplier", supplierDAO.deleteSupplier(supplier));
	}
	
	@Test
	public void listSuppliersUnitTest()
	{
		List<Supplier>listSuppliers= supplierDAO.listSuppliers();
		
		assertTrue("Problem in Listing Supplier:",listSuppliers.size()>0);
		
		for(Supplier supplier:listSuppliers)
		{
			System.out.print(supplier.getSupplierId()+"\t");
			System.out.print(supplier.getSupplierName()+"\t");
			System.out.println(supplier.getSupplierDesc());
		}
	}
}*/

	
	
	

