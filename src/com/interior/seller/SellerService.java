package com.interior.seller;

import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.interior.action.Action;
import com.interior.action.ActionForward;
import com.interior.store.StoreDAO;
import com.interior.store.StoreDTO;
import com.interior.util.DBConnect;

public class SellerService implements Action{
	
	private StoreDAO storeDAO;
	private SellerDAO sellerDAO;
	
	public SellerService() {
		storeDAO=new StoreDAO();
		sellerDAO = new SellerDAO();
	}
	
	public ActionForward login(HttpServletRequest request, HttpServletResponse response) {
		ActionForward actionForward=new ActionForward();
		SellerDTO sellerDTO = null;
		Connection con = null;
		
		String method=request.getMethod();
		String addr=request.getPathInfo();		
		
		int res=0;
		String msg="";
		String path="";
		boolean check=true;

		if(method.equals("GET")&&addr.equals("/sellerLogin")){ 				//판매자 로그인 창
			path="../WEB-INF/views/seller/sellerLogin.jsp";
			check=true;
		
			
		} else if(method.equals("GET") && addr.equals("/findPw")) {			// 비밀번호 찾기 창
			path="../WEB-INF/views/seller/findPw.jsp";
			check=true;
			
			
		} else if(method.equals("POST") && addr.equals("/sellerLogin")) {	// 로그인 버튼
			try {
				con=DBConnect.getConnect();
				String id=request.getParameter("id");
				String pw=request.getParameter("pw");
				sellerDTO = sellerDAO.login(id, pw, con);
				if(sellerDTO == null) {										// 아이디, 비밀번호가 틀렸을 
					request.setAttribute("msg", "잘못된 아이디입니다.");
					request.setAttribute("path", "./sellerLogin");
					check=true;
					path="../WEB-INF/views/result/result.jsp";
				} else {
					
				}
			} catch (Exception e) {
				// TODO: handle exception
			}
			
			
		} else if(method.equals("POST") && addr.equals("/findPw"))	{		// 비밀번호 찾기 버튼
			
			
		}
		
		actionForward.setPath(path);
		actionForward.setCheck(check);
		return actionForward;
	}
	
	@Override
	public ActionForward insert(HttpServletRequest request, HttpServletResponse response) {
		ActionForward actionForward=new ActionForward();
		SellerDTO sellerDTO = null;
		Connection con = null;
		
		String method=request.getMethod();
		String addr=request.getPathInfo();

		int res=0;
		String path="";
		boolean check=true;
		
		
		if(method.equals("GET")&&addr.equals("/sellerJoin")) {				//판매자 회원가입 창
			path="../WEB-INF/views/seller/sellerJoin.jsp";
			check=true;
		
			
		} else if(method.equals("POST") && addr.equals("/sellerJoin")) {	// 판매자 신청 버튼
			try {
				con=DBConnect.getConnect();
				sellerDTO = new SellerDTO();
				res=sellerDAO.insert(sellerDTO, con);
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		} 
		
		
		actionForward.setPath(path);
		actionForward.setCheck(check);
		return actionForward;
	}


	@Override
	public ActionForward list(HttpServletRequest request, HttpServletResponse response) {
		ActionForward actionForward = new ActionForward();
		String path="../WEB-INF/views/seller/sellerMain.jsp";
		boolean check=true;
		actionForward.setPath(path);
		actionForward.setCheck(check);
		return actionForward;
		
	}

	@Override
	public ActionForward select(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ActionForward update(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ActionForward delete(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
