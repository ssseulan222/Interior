package com.interior.seller;

import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.interior.action.Action;
import com.interior.action.ActionForward;
import com.interior.store.StoreDAO;
import com.interior.store.StoreDTO;
import com.interior.util.DBConnect;

public class SellerService implements Action {

	private StoreDAO storeDAO;
	private SellerDAO sellerDAO;

	public SellerService() {
		storeDAO = new StoreDAO();
		sellerDAO = new SellerDAO();
	}
	
	public ActionForward idCheck(HttpServletRequest request, HttpServletResponse response) {
		ActionForward actionForward=new ActionForward();
		
		int check=0;
		Connection con=null;
		
		try {
			con=DBConnect.getConnect();
			String id=request.getParameter("id");
			check=sellerDAO.idCheck(id, con);			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		request.setAttribute("result", check);
		actionForward.setPath("../WEB-INF/views/seller/idCheck.jsp");
		actionForward.setCheck(true);
		
		return actionForward;
	}

	public ActionForward login(HttpServletRequest request, HttpServletResponse response) {
		ActionForward actionForward = new ActionForward();
		
		Connection con = null;

		String method = request.getMethod();
		String addr = request.getPathInfo();

		int res = 0;
		String msg = "";
		String path = "";
		boolean check = true;

		if (method.equals("GET") && addr.equals("/sellerLogin")) { // 판매자 로그인 창
			path = "../WEB-INF/views/seller/sellerLogin.jsp";
			check = true;

		} else if (method.equals("GET") && addr.equals("/findPw")) { // 비밀번호 찾기 창
			path = "../WEB-INF/views/seller/findPw.jsp";
			check = true;

		} else if (method.equals("POST") && addr.equals("/sellerLogin")) { // 로그인 버튼
			SellerDTO sellerDTO=null;		
			try {
				con = DBConnect.getConnect();
				String id = request.getParameter("id");
				String pw = request.getParameter("pw");
				sellerDTO=sellerDAO.login(id, pw, con);

				if(sellerDTO != null) {			// 로그인 성공
					HttpSession session = request.getSession();
					check = true;
					path = "../WEB-INF/views/index.jsp";
					session.setAttribute("sellerDTO", sellerDTO);
				} else  {
					request.setAttribute("msg", "로그인 실패");
					request.setAttribute("path", "./sellerLogin");
					check = true;
					path = "../WEB-INF/views/result/result.jsp";
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (method.equals("POST") && addr.equals("/findPw")) { // 비밀번호 찾기 버튼
			
		}

		actionForward.setPath(path);
		actionForward.setCheck(check);
		return actionForward;
	}
	
	public ActionForward logout(HttpServletRequest request, HttpServletResponse response) {
		ActionForward actionForward=new ActionForward();
		
		HttpSession session = request.getSession();
		String path="";
		boolean check=false;
		if(session.getAttribute("sellerDTO") != null) {
			session.invalidate();
			path="../index.do";
		}
		
		actionForward.setCheck(check);
		actionForward.setPath(path);
		
		return actionForward;
	}

	@Override
	public ActionForward insert(HttpServletRequest request, HttpServletResponse response) {
		ActionForward actionForward = new ActionForward();
		SellerDTO sellerDTO = null;
		Connection con = null;

		String method = request.getMethod();
		String addr = request.getPathInfo();

		int res = 0;
		String path = "";
		boolean check = true;

		if (method.equals("GET") && addr.equals("/sellerJoin")) { // 판매자 회원가입 창
			path = "../WEB-INF/views/seller/sellerJoin.jsp";
			check = true;

		} else if (method.equals("POST") && addr.equals("/sellerJoin")) { // 판매자 신청 버튼
			try {
				con = DBConnect.getConnect();
				sellerDTO = new SellerDTO();
				sellerDTO.setId(request.getParameter("id"));
				sellerDTO.setPw(request.getParameter("pw"));
				sellerDTO.setCompanyName(request.getParameter("companyName"));
				sellerDTO.setCompanyNum(request.getParameter("companyNum"));
				sellerDTO.setHomepage(request.getParameter("homepage"));
				sellerDTO.setMarketerName(request.getParameter("marketerName"));
				sellerDTO.setPhone(request.getParameter("phone"));
				sellerDTO.setEmail(request.getParameter("email"));
				sellerDTO.setBrandName(request.getParameter("brandName"));
				sellerDTO.setCategory(request.getParameter("category"));
				sellerDTO.setInfo(request.getParameter("info"));
				sellerDTO.setOpenMarket(request.getParameter("openMarket"));

				res = sellerDAO.insert(sellerDTO, con);

				if (res > 0) { // 성공
					request.setAttribute("msg", "회원가입 성공");
					request.setAttribute("path", "../index.do");
					check = true;
					path = "../WEB-INF/views/result/result.jsp";
				} else { // 실패
					request.setAttribute("msg", "회원가입 실패");
					request.setAttribute("path", "./sellerJoin");
					check = true;
					path = "../WEB-INF/views/result/result.jsp";
				}

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
		String path = "../WEB-INF/views/seller/sellerMain.jsp";
		boolean check = true;
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

		ActionForward actionForward = new ActionForward();
		String path="";
		boolean check=true;
		int res=0;
		SellerDTO sellerDTO=null;
		String method=request.getMethod();
		
		// 회원수정 페이지로 이동
		if(method.equals("GET")) {	
			path="../WEB-INF/views/seller/sellerUpdate.jsp";
			
		// 회원 수정 완료 버튼
		} else {
			Connection con=null;
			HttpSession session = request.getSession();
			sellerDTO = (SellerDTO)session.getAttribute("sellerDTO");
			String id=sellerDTO.getId();
			
			try {
				con=DBConnect.getConnect();
				sellerDTO.setId(request.getParameter("id"));
				sellerDTO.setPw(request.getParameter("pw"));
				sellerDTO.setCompanyName(request.getParameter("companyName"));
				sellerDTO.setCompanyNum(request.getParameter("companyNum"));
				sellerDTO.setHomepage(request.getParameter("homepage"));
				sellerDTO.setMarketerName(request.getParameter("marketerName"));
				sellerDTO.setPhone(request.getParameter("phone"));
				sellerDTO.setEmail(request.getParameter("email"));
				sellerDTO.setBrandName(request.getParameter("brandName"));
				sellerDTO.setCategory(request.getParameter("category"));
				sellerDTO.setInfo(request.getParameter("info"));
				sellerDTO.setOpenMarket(request.getParameter("openMarket"));
				res=sellerDAO.update(sellerDTO,id, con);
				if(res>0) {
					//flash message : 3초 떴다가 자동 사라짐//
					check=true;
					path="../WEB-INF/views/seller/sellerMain.jsp";
				} else {
					request.setAttribute("msg", "수정 실패");
					request.setAttribute("path", "../WEB-INF/views/seller/sellerUpdate.jsp");
					check=true;
					path="../WEB-INF/views/result/result.jsp";
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		actionForward.setPath(path);
		actionForward.setCheck(check);
		return actionForward;
	}

	@Override
	public ActionForward delete(HttpServletRequest request, HttpServletResponse response) {
		
		ActionForward actionForward = new ActionForward();
		String path="";
		boolean check=true;
		int res=0;
		SellerDTO sellerDTO=null;
		String method=request.getMethod();
		
		if(method.equals("GET")) {
			path="../WEB-INF/views/seller/sellerDelete.jsp";
		} else {
			Connection con=null;
			HttpSession session = request.getSession();
			sellerDTO = (SellerDTO)session.getAttribute("sellerDTO");
			String id=sellerDTO.getId();
			try {
				con=DBConnect.getConnect();
				res=sellerDAO.delete(id, con);
				if(res>0) {
					session.invalidate();
					request.setAttribute("msg", "탈퇴 성공");
					request.setAttribute("path", "../index.do");
					check=true;
					path="../WEB-INF/views/result/result.jsp";
				} else {
					request.setAttribute("msg", "탈퇴 실패");
					request.setAttribute("path", "../WEB-INF/views/seller/sellerDelete.jsp");
					check=true;
					path="../WEB-INF/views/result/result.jsp";
				}
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
		
		actionForward.setCheck(check);
		actionForward.setPath(path);
		
		return actionForward;
	}

}
