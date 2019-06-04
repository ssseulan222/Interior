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
	
	@Override
	public ActionForward insert(HttpServletRequest request, HttpServletResponse response) {
		ActionForward actionForward=new ActionForward();
		SellerDTO sellerDTO = null;
		int res=0;
		Connection con = null;
		
		String path="";
		boolean check=true;
		String method=request.getMethod();
		System.out.println(method);
		
		if(method.equals("GET")) {	//판매자 회원가입 폼으로 이동
			path="../WEB-INF/views/seller/sellerJoin.jsp";
			check=true;
		} else {	// 판매자 신청 완료
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
