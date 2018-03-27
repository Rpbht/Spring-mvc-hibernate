package com.cignex.rahul;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class DemoController {

	@Autowired
	private CustomerService customerService;

	@RequestMapping("/customerList")
	public String listCustomers(Model model) {

		List<Customer> customerList = customerService.getCustomer();
		model.addAttribute("customerList", customerList);

		return "list-customer";
	}

	@RequestMapping("/AddCustomer")
	public String AddCustomer(Model model) {
		
		Customer customer = new Customer();
		model.addAttribute("customers",customer);
		
		return "AddCustomer";
	}

	@PostMapping("/AddData")
	public String AddData(@ModelAttribute("customers") Customer customer) {
		customerService.saveCustomer(customer);
		return "redirect:/customerList";
	}

	
	@GetMapping("EditData")
	// @RequestMapping(path="/DeleteData", method=RequestMethod.GET)
	public String editCustomers(@RequestParam("id") int id, Model model) {
		
		Customer customer = customerService.getCustomer(id);
		
		model.addAttribute("customers",customer);
		
		System.out.println("edit: " + id);
		return "AddCustomer";
	}
	
	
	@GetMapping("DeleteData")
	// @RequestMapping(path="/DeleteData", method=RequestMethod.GET)
	public String deleteCustomers(@RequestParam("id") int id) {
		System.out.println("delete: " + id);
		Customer customer = customerService.deleteCustomer(id);
		return "redirect:/customerList";
	}

}
