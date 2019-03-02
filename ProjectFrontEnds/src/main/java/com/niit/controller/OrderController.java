package com.niit.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.dao.CartDAO;
import com.niit.dao.OrderDAO;
import com.niit.model.CartItem;
import com.niit.model.OrderDetail;

@Controller

public class OrderController {
	
	@Autowired
	CartDAO cartDAO;
	
	@Autowired
	OrderDAO orderDAO;
	
	@RequestMapping(value="/cart")
	public String ShowCartItem(Model m, HttpSession session)
	{
		
		
		String username=(String)session.getAttribute("username");
		List<CartItem>listCartItems=cartDAO.listCartItem(username);
		m.addAttribute("listCartItem",listCartItems);
		m.addAttribute("grandTotal", this.calGrandTotalPrice(listCartItems));
		
		return "Cart";
	}
	
	
	
	@RequestMapping("/payment")
	public String showPaymentPage(Model m, HttpSession session)
	{
		String username=(String)session.getAttribute("username");
		List<CartItem>listCartItems=cartDAO.listCartItem(username);
		m.addAttribute("grandTotal", this.calGrandTotalPrice(listCartItems));
		
		return "Payment";
	}
	

	@RequestMapping(value="/receipt",method=RequestMethod.POST)
	public String showReceipt(@RequestParam("pmode")String pmode,Model m, HttpSession session)
	{
		String username=(String)session.getAttribute("username");
		List<CartItem>listCartItems=cartDAO.listCartItem(username);
		
		OrderDetail order=new OrderDetail();
		order.setUsername(username);
		order.setOrderDate(new java.util.Date());
		order.setPmode(pmode);
		order.setTotalAmount(this.calGrandTotalPrice(listCartItems));
		orderDAO.saveOrder(order);
		int orderId =order.getOrderId();
		System.out.println(orderId);
		orderDAO.updateCartItem(username, order.getOrderId());
		//m.addAttribute("orderData",orderId);
	     session.setAttribute("order", orderId);
		m.addAttribute("listCartItem", listCartItems);
		m.addAttribute("grandTotal", this.calGrandTotalPrice(listCartItems));
		
		return "Receipt";
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
