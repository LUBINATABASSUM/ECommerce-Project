package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.dao.SupplierDAO;
import com.niit.model.Supplier;


	

	@Controller
	public class SupplierController 
	{
		@Autowired
		SupplierDAO supplierDAO;

		@RequestMapping("/supplier")
		public String showSupplier(Model m)
		{
			List<Supplier> listSuppliers=supplierDAO.listSuppliers();
			//We are sending listSuppliers data to JSP Page using model object
			m.addAttribute("supplierList", listSuppliers);
			
			return "Supplier";
		}
		
		@RequestMapping(value="/InsertSupplier",method=RequestMethod.POST)
		public String saveSupplierDetail(@RequestParam("supplierName")String supplierName,@RequestParam("supplierDesc") String supplierDesc,Model m)
		{
			Supplier supplier=new Supplier();
			supplier.setSupplierName(supplierName);
			supplier.setSupplierDesc(supplierDesc);
			supplierDAO.addSupplier(supplier);
			
			List<Supplier> listSuppliers=supplierDAO.listSuppliers();
			m.addAttribute("supplierList", listSuppliers);
			
			return "Supplier";
		}
		
		@RequestMapping(value="/deleteSupplier/{supplierId}")
		public String deleteSupplier(@PathVariable("supplierId")int supplierId,Model m)
		{
			Supplier supplier=supplierDAO.getSupplier(supplierId);
			supplierDAO.deleteSupplier(supplier);
			
			List<Supplier> listSuppliers=supplierDAO.listSuppliers();
			m.addAttribute("supplierList", listSuppliers);
			
			return "Supplier";
		}
		
		@RequestMapping(value="/editSupplier/{supplierId}")
		public String editSupplier(@PathVariable("supplierId")int supplierId,Model m)
		{
			Supplier supplier=supplierDAO.getSupplier(supplierId);
		     m.addAttribute("supplier",supplier);
		     return "UpdateSupplier";
		}
		
		@RequestMapping(value="/updateSupplier",method=RequestMethod.POST)
		public String updateSupplierDetail(@RequestParam("supplierId")int supplierId,@RequestParam("supplierName")String supplierName,@RequestParam("supplierDesc") String supplierDesc,Model m)
		{
			Supplier supplier=new Supplier();
			supplier.setSupplierName(supplierName);
			supplier.setSupplierDesc(supplierDesc);
			supplierDAO.addSupplier(supplier);
			
			List<Supplier> listSuppliers=supplierDAO.listSuppliers();
			m.addAttribute("supplierList", listSuppliers);
			
			return "Supplier";
		}
		
		
	}




