package Productcrudapp.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import Productcrudapp.dao.ProductDoa;
import Productcrudapp.model.Product;

@Controller
public class MainController {

	@Autowired
	private ProductDoa productDoa;

	@RequestMapping("/")
	public String showView(Model model) {

		List<Product> allProducts = productDoa.getAllProduct();
		model.addAttribute("product", allProducts);
		return "index";
	}

//show product-form

	@RequestMapping("/add-product")
	public String formView(Model model) {
		model.addAttribute("title", "Add-product");
		return "Add_product_form";
	}

// handle add product form
	@RequestMapping(value = "/handle-product", method = RequestMethod.POST)
	public RedirectView handleForm(@ModelAttribute("product") Product product, HttpServletRequest request) {


		RedirectView redirectView = new RedirectView();
		/*
		 * es ka use hum back jane k liye karti hai request.getContextPath()+"/";
		 */
		redirectView.setUrl(request.getContextPath() + "/");
		this.productDoa.saveProduct(product);
		return redirectView;
	}

	// Delete product

	@RequestMapping("/delete/{productId}")
	public RedirectView deleteHandler(@PathVariable("productId") int productId, HttpServletRequest request) {
		this.productDoa.deleteProduct(productId);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/");

		return redirectView;
	}

	@RequestMapping("/update/{productId}")
	public String updateHandler(@PathVariable("productId") int id, Model model) {
		// yaha par humne data get kiya hai or product m store kiya hai
		// ab es data ko model throw form m send karna hai
		Product product = this.productDoa.getProduct(id);
		model.addAttribute("product", product);
		return "update_form";
	}

}
