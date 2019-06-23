package com.interior.community.control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.interior.community.action.ActionForward;
import com.interior.community.homeparty.HomepartyService;
import com.interior.community.upload.UploadService;

/**
 * Servlet implementation class HomepartyController
 */
					//집들이페이지 컨트롤러

@WebServlet("/HomepartyController")
public class HomepartyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HomepartyService homepartyService;
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomepartyController() {
        super();
        homepartyService = new HomepartyService();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String command = request.getPathInfo();
		ActionForward actionForward = new ActionForward();
		if(command.equals("/homeparty")) {
			actionForward = homepartyService.list(request, response);
		}else if(command.equals("/homepartyWrite")) {
			actionForward = homepartyService.insert(request, response);
		}
		
		
		
		
		
		if(actionForward.isCheck()) {
			RequestDispatcher view = request.getRequestDispatcher(actionForward.getPath());
			view.forward(request, response);
		}
		else {
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
