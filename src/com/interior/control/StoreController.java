package com.interior.control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.interior.action.ActionForward;
import com.interior.store.StoreService;

/**
 * Servlet implementation class StoreController
 */
@WebServlet("/StoreController")
public class StoreController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       StoreService storeService;
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
		String command=request.getPathInfo();
		ActionForward actionForward = null;
		System.out.println(command);
		if(command.equals("/storeMain")) {
			RequestDispatcher view = request.getRequestDispatcher("../WEB-INF/views/store/storeMain.jsp");
			view.forward(request, response);
		} else if(command.equals("/storeCategory")) {
			RequestDispatcher view = request.getRequestDispatcher("../WEB-INF/views/store/storeCategory.jsp");
			view.forward(request, response);
		} else if(command.equals("/storeLanking")) {
			RequestDispatcher view = request.getRequestDispatcher("../WEB-INF/views/store/storeLanking.jsp");
			view.forward(request, response);
		} else if(command.equals("/storeInsert")) {
			actionForward=storeService.insert(request, response);
		}
	
		if(actionForward.isCheck()) {
			RequestDispatcher view = request.getRequestDispatcher(actionForward.getPath());
			view.forward(request, response);
		}
		else {
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