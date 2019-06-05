package com.interior.community.control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.interior.community.action.ActionForward;
import com.interior.community.upload.UploadService;

/**
 * Servlet implementation class HomepartyController
 */
@WebServlet("/HomepartyController")
public class HomepartyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UploadService uploadService;
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomepartyController() {
        super();
        uploadService = new UploadService();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String command = request.getPathInfo();
		ActionForward actionForward = new ActionForward();
		
		if(command.equals("/homepartyWrite")) {
			actionForward.setCheck(true);
			actionForward.setPath("../WEB-INF/views/homeparty/homepartyWrite.jsp");
		}
		else if(command.equals("/homeparty")) {
			actionForward.setCheck(true);
			actionForward.setPath("../WEB-INF/views/homeparty/homeparty.jsp");
			
		}
		if(actionForward.isCheck()) {
			RequestDispatcher view = request.getRequestDispatcher(actionForward.getPath());
			view.forward(request, response);
		}else {
			response.sendRedirect(actionForward.getPath());
		}
		
//		RequestDispatcher view = request.getRequestDispatcher("./WEB-INF/views/homeparty/homepartyWrite.jsp");
//		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
