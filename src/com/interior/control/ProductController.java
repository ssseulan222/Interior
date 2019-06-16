package com.interior.control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.interior.action.ActionForward;
import com.interior.product.ProductService;

/**
 * Servlet implementation class ProductController
 */
@WebServlet("/ProductController")
public class ProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ProductService productService=null;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductController() {
        super();
        productService=new ProductService();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String command=request.getPathInfo();
		ActionForward actionForward = null;
		if(command.equals("/productInsert")) {
			actionForward=productService.productInsert(request, response);
		
		} else if(command.equals("/productUpdate")) {
			actionForward=productService.productUpdate(request, response);
		
		} else if(command.equals("/productDelete")) {
			actionForward=productService.productUpdate(request, response);
		
		} else if(command.equals("/productSelectList")) {
			actionForward=productService.productUpdate(request, response);
		
		} else if(command.equals("/productSelectOne")) {
			actionForward=productService.productUpdate(request, response);
		
		} else if(command.equals("/productOrder")) {
			actionForward=productService.productUpdate(request, response);
		
		} else if(command.equals("/productBasket")) {
			actionForward=productService.productUpdate(request, response);
		
		} else if(command.equals("/productScrap")) {
			actionForward=productService.productUpdate(request, response);
		
		} else if(command.equals("/productShare")) {
			actionForward=productService.productUpdate(request, response);
		
		}
		
		if(actionForward.isCheck()) {
			RequestDispatcher view = request.getRequestDispatcher(actionForward.getPath());
			view.forward(request, response);
		} else {
			response.sendRedirect(actionForward.getPath());
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
