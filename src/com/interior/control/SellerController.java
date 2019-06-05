package com.interior.control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.interior.action.ActionForward;
import com.interior.seller.SellerService;
import com.interior.store.StoreService;

/**
 * Servlet implementation class SellerController
 */
@WebServlet("/SellerController")
public class SellerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	SellerService sellerService=null;
	StoreService storeService=null;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SellerController() {
        super();
        sellerService=new SellerService();
        storeService = new StoreService();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String command=request.getPathInfo();
		ActionForward actionForward=null;
		
		if(command.equals("/sellerJoin")) {
			
			actionForward=sellerService.insert(request, response);
			
		} else if(command.equals("/sellerLogin")||command.equals("/findPw")) {
			
			actionForward=sellerService.login(request, response);
			
		} else if(command.equals("/sellerMain")) {
			
			actionForward = sellerService.list(request, response);
			
		} else if(command.equals("/sellerWrite")) {
			
			actionForward=storeService.insert(request, response);
		}

		
		if (actionForward.isCheck()) {
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
