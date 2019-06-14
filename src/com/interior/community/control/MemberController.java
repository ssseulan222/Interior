package com.interior.community.control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.interior.community.action.ActionForward;
import com.interior.community.member.MemberService;


/**
 * Servlet implementation class membercontrol
 */
@WebServlet("/membercontrol")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private MemberService memberService;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberController() {
        super();
        memberService = new MemberService();
        // TODO Auto-generated constructor stub
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String command = request.getPathInfo();
		ActionForward actionForward = new ActionForward();
		if(command.equals("/memberJoinlist")) {
			System.out.println("22222");
			actionForward = memberService.list(request, response);
			
		}else if(command.equals("/memberJoin")) {
			actionForward = memberService.insert(request, response);
		}else if(command.equals("/memberDelete")) {
			actionForward = memberService.delete(request, response);
		}else if(command.equals("/memberUpdate")) {
			actionForward = memberService.update(request, response);
		}else if(command.equals("/memberLogin")) {
			actionForward = memberService.memberLogin(request, response);
		}else if(command.equals("/membernicknameCheck")) {
			actionForward = memberService.nicknameCheck(request, response);
		}else if(command.equals("/memberemailCheck")) {
			actionForward = memberService.emailCheck(request, response);
		}else if(command.equals("/memberLoginlist")) {
			actionForward = memberService.Loginlist(request, response);
		}else if(command.equals("/memberLoginData")) {
			actionForward = memberService.memberLoginData(request, response);
		}else if(command.equals("/memberMyHome")) {
			actionForward = memberService.memberMyHome(request, response);
		}else if(command.equals("/memberMyShopping")) {
			actionForward = memberService.memberMyShopping(response, request);
		}else if(command.equals("/memberMyReview")) {
			actionForward = memberService.memberMyReview(response, request);
		}else if(command.equals("/memberMyProfilePhoto")) {
			actionForward = memberService.memberMyProfilePhoto(request, response);			
		}else if(command.equals("/memberHousewarming")) {
			actionForward = memberService.memberHousewarming(request, response);
		}else if(command.equals("/memberQuestions")) {
			actionForward = memberService.memberQuestions(request, response);
		}
		
		
		if(actionForward.isCheck()) {
			RequestDispatcher view = request.getRequestDispatcher(actionForward.getPath());
			view.forward(request, response);
		}else {
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
