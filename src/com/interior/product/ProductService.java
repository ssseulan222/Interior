package com.interior.product;

import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.interior.action.ActionForward;
import com.interior.util.DBConnect;

public class ProductService {
	
	ProductDAO productDAO = null;
	
	public ProductService() {
		productDAO=new ProductDAO();
	}

	public ActionForward productInsert(HttpServletRequest request, HttpServletResponse response) {
		ActionForward actionForward=new ActionForward();
		String method=request.getMethod();
		String path="";
		boolean check=true;
		ProductDTO productDTO = null;
		int res=0;
		
		
		if(method.equals("POST")) {	// 상품등록완료
			
			Connection con = null;
			productDTO = new ProductDTO();
			try {
				con=DBConnect.getConnect();
				con.setAutoCommit(false);
				res=productDAO.productInsert(productDTO, con);
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
				request.setAttribute("path", "./productInsert");
				check = true;
				path = "../WEB-INF/views/result/result.jsp";
			}
			
		} else { // 상품 등록 페이지로
			path="../WEB-INF/views/product/productInsert.jsp";
			check=true;
		}
		actionForward.setPath(path);
		actionForward.setCheck(check);

		return actionForward;
	}
	
	public ActionForward productUpdate(HttpServletRequest request, HttpServletResponse response) {
		ActionForward actionForward = new ActionForward();
		
		return actionForward;
	}
	public ActionForward productDelete(HttpServletRequest request, HttpServletResponse response) {
		ActionForward actionForward = new ActionForward();
		
		return actionForward;
	}
	public ActionForward productSelectList(HttpServletRequest request, HttpServletResponse response) {
		ActionForward actionForward = new ActionForward();
		
		return actionForward;
	}
	public ActionForward productSelectOne(HttpServletRequest request, HttpServletResponse response) {
		ActionForward actionForward = new ActionForward();
		
		return actionForward;
	}
	public ActionForward productOrder(HttpServletRequest request, HttpServletResponse response) {
		ActionForward actionForward = new ActionForward();
		
		return actionForward;
	}
	public ActionForward productBasket(HttpServletRequest request, HttpServletResponse response) {
		ActionForward actionForward = new ActionForward();
		
		return actionForward;
	}
	public ActionForward productScrap(HttpServletRequest request, HttpServletResponse response) {
		ActionForward actionForward = new ActionForward();
		
		return actionForward;
	}
	public ActionForward productShare(HttpServletRequest request, HttpServletResponse response) {
		ActionForward actionForward = new ActionForward();
		
		return actionForward;
	}
}
