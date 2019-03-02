package com.niit.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.dao.CartDAO;
import com.niit.dao.ProductDAO;
import com.niit.dao.UserDetailDAO;
import com.niit.model.CartItem;
import com.niit.model.Product;
import com.niit.model.UserDetail;


@Controller
public class CartController 


{
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	CartDAO cartDAO;
	@Autowired
	UserDetailDAO userDetailDAO;
	
	@RequestMapping("/updateAddress")
	public String updateAddress(@RequestParam("address") String address,Model m, HttpSession session)
	{
		
		String username=(String)session.getAttribute("username");
		
		List<CartItem>listCartItems=cartDAO.listCartItem(username);
		UserDetail userDetail=userDetailDAO.getUser(username);
		userDetail.setAddr(address);
		userDetailDAO.updateUser(userDetail);
		m.addAttribute("listCartItem",listCartItems);
		m.addAttribute("grandTotal", this.calGrandTotalPrice(listCartItems));
		m.addAttribute("addr",userDetail.getAddr());
		
		return "OrderConfirm";
	}
	
	
	
	@RequestMapping("/addToCart/{productId}")
	public String addToCart(@RequestParam("quantity")int quantity,@PathVariable("productId")int productId,Model m, HttpSession session)
	{
		Product product=productDAO.getProduct(productId);
		String username=(String)session.getAttribute("username");
		
		CartItem cartItem=new CartItem();
		cartItem.setProductId(product.getProductId());
		cartItem.setProductName(product.getProductName());
		cartItem.setPrice(product.getPrice());
		cartItem.setStatus("NP");
		cartItem.setQuantity(quantity);
		cartItem.setUsername(username);
		
		cartDAO.addCartItem(cartItem);
		List<CartItem>listCartItems=cartDAO.listCartItem(username);
		m.addAttribute("listCartItem",listCartItems);
		m.addAttribute("grandTotal",this.calGrandTotalPrice(listCartItems));
		
		return "Cart";
	}
	
	@RequestMapping("/deleteCartItem/{cartItemId}")
	public String deleteCartItem(@PathVariable("cartItemId")int cartItemId,Model m, HttpSession session)
	{
		CartItem cartItem=cartDAO.getCartItem(cartItemId);
		cartDAO.deleteCartItem(cartItem);
		String username=(String)session.getAttribute("username");
		List<CartItem>listCartItems=cartDAO.listCartItem(username);
		m.addAttribute("listCartItem",listCartItems);
		m.addAttribute("grandTotal", this.calGrandTotalPrice(listCartItems));
		
		return "Cart";
	}
	

	@RequestMapping("/orderConfirm")
	public String orderConfirm(Model m, HttpSession session)
	{
		
		String username=(String)session.getAttribute("username");
		System.out.println("from oeder confirm"+username);
		List<CartItem>listCartItems=cartDAO.listCartItem(username);
		UserDetail userDetail=userDetailDAO.getUser(username);
		System.out.println("from cart contoller "+userDetail);
		m.addAttribute("listCartItem",listCartItems);
		m.addAttribute("grandTotal", this.calGrandTotalPrice(listCartItems));
		m.addAttribute("addr",userDetail.getAddr());
		
		return "OrderConfirm";
	}


	
	@RequestMapping("/updateCartItem/{cartItemId}")
	public String updateCartItem(@PathVariable("cartItemId")int cartItemId,@RequestParam("quantity")int quantity,Model m, HttpSession session)
	{
		quantity++;
		CartItem cartItem=cartDAO.getCartItem(cartItemId);
		cartItem.setQuantity(quantity);
		cartDAO.updateCartItem(cartItem);
		String username=(String)session.getAttribute("username");
		List<CartItem>listCartItems=cartDAO.listCartItem(username);
		
		m.addAttribute("listCartItem",listCartItems);
		m.addAttribute("grandTotal", this.calGrandTotalPrice(listCartItems));
		
		return "Cart";
	}
	
	
	

	
	public int calGrandTotalPrice(List<CartItem> listCartItems)
	{
		int grandTotal=0;
		int count=0;
		while(count<listCartItems.size())
		{
			CartItem cartItem=listCartItems.get(count);
			grandTotal=grandTotal+(cartItem.getQuantity()*cartItem.getPrice());
			count=count+1;
			
		}
		return grandTotal;
	}
}

