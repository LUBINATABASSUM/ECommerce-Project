package com.niit.test;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecomm.dao.UserDetailDAO;

import com.ecomm.model.UserDetail;



public class UserDetailDAOUnitTestCases {
	
	
static UserDetailDAO userDetailDAO;
	
	@BeforeClass
	 public static void executeFirst() {
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("com.ecomm");
		context.refresh();
		
		userDetailDAO=(UserDetailDAO)context.getBean("userDetailDAO");
		
	}

	@Test
	public void registeruserUnitTest() {


		  UserDetail userDetail=new UserDetail();
		  userDetail.setUsername("Mohina");
		  userDetail.setPassowrd("Success");
		 
		  
		  assertTrue("Problem in registering the UserDetail", userDetailDAO.registerUser(userDetail));
	}
	
	
	@Ignore
	@Test
	public void updateUserDetailUnitTest() {
		UserDetail userDetail=userDetailDAO.getUser("Harish");
		userDetail.setPassowrd("Reserved");
		
		assertTrue("Problem in Updating the UserDetail", userDetailDAO.updateUser(userDetail));
	}
	
	@Ignore
	@Test
	public void deleteUserDetailUnitTest() {
		UserDetail userDetail=userDetailDAO.getUser("Mahesh");
		assertTrue("Problem in Deleting the UserDetail:" ,userDetailDAO.deleteUser(userDetail));
	}
}
