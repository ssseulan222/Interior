package com.interior.control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.authenticator.SpnegoAuthenticator.AcceptAction;

import com.interior.action.ActionForward;
import com.interior.store.StoreService;

/**
 * Servlet implementation class StoreController
 */
@WebServlet("/StoreController")
public class StoreController extends HttpServlet {
	private static final long serialVersionUID = 1L;
     StoreService storeService=null;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StoreController() {
        super();
        storeService = new StoreService();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String command = request.getPathInfo();
		ActionForward actionForward=null;
		if(command.equals("/storeMain")) {
			actionForward=storeService.storeMain(request, response);

		} else if(command.equals("/storeCategory")) {
			actionForward=storeService.storeCategory(request, response);
		
		} else if(command.equals("/storeRanking")) {
			actionForward=storeService.storeRanking(request, response);

		} else if(command.equals("/storeSelect")) {
			actionForward=storeService.storeSelect(request, response);
			
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
