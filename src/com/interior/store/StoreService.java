package com.interior.store;

import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.interior.action.Action;
import com.interior.action.ActionForward;
import com.interior.util.DBConnect;

public class StoreService implements Action{
	
	private StoreDAO storeDAO;
	private StoreDTO storeDTO;
	
	public StoreService() {
		storeDAO = new StoreDAO();
		storeDTO = new StoreDTO();
	}
	
	@Override
	public ActionForward list(HttpServletRequest request, HttpServletResponse response) {
		ActionForward actionForward = new ActionForward();
		
		String path = "../WEB-INF/views/store/storeMain.jsp";
		boolean check = true;
		
		actionForward.setCheck(check);
		actionForward.setPath(path);
		return actionForward;
	}

	@Override
	public ActionForward select(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ActionForward insert(HttpServletRequest request, HttpServletResponse response) {
		ActionForward actionForward=new ActionForward();
		String method=request.getMethod();
		String path="";
		boolean check=true;
		StoreDTO storeDTO = null;
		int res=0;
		if(method.equals("POST")) {	// 상품등록완료
			
			Connection con = null;
			storeDTO = new StoreDTO();
			try {
				con=DBConnect.getConnect();
				con.setAutoCommit(false);
				res=storeDAO.insert(storeDTO, con);
				if(res<1) {
					throw new Exception();
				}
				con.commit();
			} catch (Exception e) {
				res=0;
				try {
					con.rollback();
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				e.printStackTrace();
			}finally {
				try {
					con.setAutoCommit(true);
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

			}
			if (res > 0) { // 성공
				check = true;
				path = "./sellerMain";
			} else { // 실패
				request.setAttribute("msg", "상품 등록 실패");
				request.setAttribute("path", "./sellerMain");
				check = true;
				path = "../WEB-INF/views/result/result.jsp";
			}
			
		} else { // 상품 등록 폼
			path="../WEB-INF/views/seller/sellerWrite.jsp";
			check=true;
		}
		actionForward.setPath(path);
		actionForward.setCheck(check);

		return actionForward;
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
