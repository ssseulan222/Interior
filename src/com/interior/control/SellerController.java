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

/**
 * Servlet implementation class SellerController
 */
@WebServlet("/SellerController")
public class SellerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	SellerService sellerService=null;

       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SellerController() {
        super();
        sellerService=new SellerService();
 
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String command=request.getPathInfo();
		ActionForward actionForward=null;

		if(command.equals("/sellerJoin")) {
			actionForward=sellerService.sellerJoin(request, response);
			
		} else if(command.equals("/sellerIdCheck")) {
			actionForward=sellerService.sellerIdCheck(request, response);
			
		} else if(command.equals("/sellerLogin")) {
			
			actionForward=sellerService.sellerLogin(request, response);
		
		} else if(command.equals("/sellerFindPW")){
			
			actionForward=sellerService.sellerFindPw(request, response);
		
		} else if(command.equals("/sellerUpdate")) {
			
			actionForward=sellerService.sellerUpdate(request, response);
			
		} else if(command.equals("/sellerDelete")) {
			
			actionForward = sellerService.sellerDelete(request, response);
			
		} else if(command.equals("/sellerLogout")) {
			
			actionForward=sellerService.sellerLogout(request, response);
		
		} else if(command.equals("/sellerMain")) {
			actionForward=sellerService.sellerMain(request, response);				
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
