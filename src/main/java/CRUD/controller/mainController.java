package CRUD.controller;

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

import CRUD.dao.ProductDao;
import CRUD.model.Product;

@Controller
public class mainController {

	@Autowired
	private ProductDao productDao;
	
	@RequestMapping("/")
	public String Test(Model model) {
		
		List<Product> products = productDao.getallProducts();
		model.addAttribute("product", products);
		
		return "index";
	}
	
	// Add product form
	@RequestMapping("/add-product")
	public String addProduct(Model m) {
		
		// this title key will match with that in base.jsp wala title where if value is provided to that title explicitly then that value will be displayed
		m.addAttribute("title", "Add Product page");
		
		return "add_product_form";
	}
	
	
	// handle added product
	
	@RequestMapping(value = "/handle-product", method = RequestMethod.POST)
	public RedirectView handleProduct(@ModelAttribute Product product, HttpServletRequest request) {
		
		RedirectView redirectView = new RedirectView();
		this.productDao.createProduct(product);
		System.out.println(product);
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView;
	}
	
	
	// delete handler
	
	@RequestMapping("/delete-product/{productId}")
	public RedirectView deleteProduct( @PathVariable("productId") int productId,HttpServletRequest request) {
		
		this.productDao.deleteProduct(productId);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView;
	}
	
	
	// update handler
	
	@RequestMapping("/update-product/{productId}")
	public String updateProduct(@PathVariable("productId") int pid,Model model) {
		
		Product product = this.productDao.getProduct(pid);
		model.addAttribute("product", product);
		return "update_form";
	}
	
	
}
