package com.interior.community.member;

import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sound.midi.Soundbank;

import com.interior.community.action.Action;
import com.interior.community.action.ActionForward;
import com.interior.community.util.DBConnector;
import com.sun.accessibility.internal.resources.accessibility;

public class MemberService implements Action {
	private MemberDAO memberDAO;
	
	public MemberService() {
		memberDAO = new MemberDAO();
	}

	public ActionForward memberQuestions(HttpServletRequest request, HttpServletResponse response) {
		ActionForward actionForward = new ActionForward();
		actionForward.setCheck(true);
		actionForward.setPath("../WEB-INF/views/member/memberQuestions.jsp");
		return actionForward;
	}
	
	
	public ActionForward memberHousewarming(HttpServletRequest request, HttpServletResponse response) {
		ActionForward actionForward = new ActionForward();
		actionForward.setCheck(true);
		actionForward.setPath("../WEB-INF/views/member/memberHousewarming.jsp");
		return actionForward;
				
	}
	
	public ActionForward memberMyProfilePhoto(HttpServletRequest request, HttpServletResponse response) {
		ActionForward actionForward = new ActionForward();
		actionForward.setCheck(true);
		actionForward.setPath("../WEB-INF/views/member/memberMyProfilePhoto.jsp");
		return actionForward;
	}
	
	
	public ActionForward memberMyReview(HttpServletResponse response, HttpServletRequest request) {
		ActionForward actionForward = new ActionForward();
		actionForward.setCheck(true);
		actionForward.setPath("../WEB-INF/views/member/memberMyReview.jsp");
		return actionForward;
	}
	
	public ActionForward memberMyShopping(HttpServletResponse response, HttpServletRequest request) {
		ActionForward actionForward = new ActionForward();
		actionForward.setCheck(true);
		actionForward.setPath("../WEB-INF/views/member/memberMyShopping.jsp");
		return actionForward;
	}
	
	
	public ActionForward memberMyHome(HttpServletRequest request, HttpServletResponse response) {
		ActionForward actionForward = new ActionForward();
		actionForward.setCheck(true);
		actionForward.setPath("../WEB-INF/views/member/memberMyHome.jsp");
		return actionForward;
	}
	
	public ActionForward memberLoginData(HttpServletRequest request, HttpServletResponse response) {
		ActionForward actionForward = new ActionForward();
		actionForward.setCheck(true);
		
		actionForward.setPath("../index.do");
		return actionForward;
	}
	
	
	public ActionForward Loginlist(HttpServletRequest request, HttpServletResponse response) {
		ActionForward actionForward = new ActionForward();
		actionForward.setCheck(true);
		System.out.println("로그인");
		actionForward.setPath("../WEB-INF/views/member/memberLoginlist.jsp");
		return actionForward;
	}
	
	
	public ActionForward memberLogin(HttpServletRequest request, HttpServletResponse response) {
		ActionForward actionForward = new ActionForward();
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		HttpSession session = request.getSession(true);
		MemberDTO memberDTO = new MemberDTO();
		Connection con ;
		MemberDTO m = null;
		int result =0;
		try {
			con = DBConnector.getConnect();
			m = memberDAO.memberLoginData(memberDTO, con, email);
			result = memberDAO.memberLogin(email, pw, con);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(result==0) {
			session.setAttribute("login", result);
			actionForward.setCheck(true);
			actionForward.setPath("../WEB-INF/views/common/Loginresult.jsp");
		}else if(result==1) {
			session.setAttribute("LoginDate", m);
			session.setAttribute("login", result);
			actionForward.setCheck(true);
			actionForward.setPath("../WEB-INF/views/common/Loginresult.jsp");
		}else if(result==-1) {
			session.setAttribute("login", result);
			actionForward.setCheck(true);
			actionForward.setPath("../WEB-INF/views/common/Loginresult.jsp");
		}
		request.setAttribute("result", result);
		return actionForward;
	}
	
	public ActionForward emailCheck(HttpServletRequest request, HttpServletResponse response) {
		ActionForward actionForward = new ActionForward();
		Connection con;
		String email = request.getParameter("email");
		System.out.println(email);
		int result =0;
		try {
			con = DBConnector.getConnect();
			result = memberDAO.emailCheck(email, con);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(result);
		if(result==0) {
			actionForward.setCheck(true);
			actionForward.setPath("../WEB-INF/views/common/emailresult.jsp");
		}else if (result==1) {
			actionForward.setCheck(true);
			actionForward.setPath("../WEB-INF/views/common/emailresult.jsp");
		}
		request.setAttribute("result", result);
		return actionForward;
	}
	public ActionForward nicknameCheck(HttpServletRequest request, HttpServletResponse response) {
		ActionForward actionForward = new ActionForward();
		Connection con;
		
		String nickname = request.getParameter("nickname");
		int result =0;
		try {
			con = DBConnector.getConnect();
			result =memberDAO.nicknameCheck(nickname, con);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(result==0) {
			actionForward.setCheck(true);
			actionForward.setPath("../WEB-INF/views/common/nicknameresult.jsp");
		}else if (result==1) {
			actionForward.setCheck(true);
			actionForward.setPath("../WEB-INF/views/common/nicknameresult.jsp");
		}
		request.setAttribute("result", result);
		return actionForward;
	}
	
	@Override
	public ActionForward list(HttpServletRequest request, HttpServletResponse response) {
		ActionForward actionForward = new ActionForward();
		
		actionForward.setCheck(true);
		System.out.println("a");
		actionForward.setPath("../WEB-INF/views/member/memberJoinlist.jsp");
		return actionForward;
	}

	@Override
	public ActionForward select(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public ActionForward insert(HttpServletRequest request, HttpServletResponse response) {
		ActionForward actionForward = new ActionForward();
		MemberDTO memberDTO = new MemberDTO();
		
		MemberService memberService = new MemberService();
		Connection con = null;
		String nickname = request.getParameter("nickname");
		String email = request.getParameter("email_first")+'@'+request.getParameter("email_last");
		memberDTO.setEmail(email);
		memberDTO.setPw(request.getParameter("pw"));
		memberDTO.setNickname(request.getParameter("nickname"));
		int result = 0;
		System.out.println("email : "+email);
		System.out.println("nickname : "+nickname);
		try {
			con = DBConnector.getConnect();
			result = memberDAO.insert(memberDTO, con);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(result);
		request.setAttribute("result", result);
		if(result==0) {
			actionForward.setCheck(true);
			actionForward.setPath("./memberJoinlist");
		}else {
			actionForward.setCheck(true);
			actionForward.setPath("../index.do");
		}
		return actionForward;
	}

	@Override
	public ActionForward update(HttpServletRequest request, HttpServletResponse response) {
		ActionForward actionForward = new ActionForward();
		actionForward.setCheck(true);
		actionForward.setPath("../WEB-INF/views/member/memberUpdate.jsp");
		return actionForward;
	}

	@Override
	public ActionForward delete(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return null;
	}

}
