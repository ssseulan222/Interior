package com.interior.seller;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.directory.SearchResult;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.interior.action.Action;
import com.interior.action.ActionForward;
import com.interior.page.Search;
import com.interior.page.SearchRow;
import com.interior.product.ProductDAO;
import com.interior.product.ProductDTO;
import com.interior.upload.UploadDAO;
import com.interior.upload.UploadDTO;
import com.interior.util.DBConnect;

public class SellerService {

	private SellerDAO sellerDAO = null;
	private ProductDAO productDAO = null;
	private UploadDAO uploadDAO = null;

	public SellerService() {
		sellerDAO = new SellerDAO();
		productDAO = new ProductDAO();
		uploadDAO=new UploadDAO();
	}

	public ActionForward sellerMain(HttpServletRequest request, HttpServletResponse response) {
		ActionForward actionForward = new ActionForward();
		String path="";
		boolean check = true;
		Connection con=null;
		HttpSession session = request.getSession();
		SellerDTO sellerDTO = (SellerDTO) session.getAttribute("sellerDTO");
		
		
		// 판매자 로그인 세션 없을 때
		if(sellerDTO == null) {
			request.setAttribute("msg", "로그인 세션이 만료되었습니다. 다시 로그인 해주세요");
			request.setAttribute("path", "../seller/sellerLogin");
			check = true;
			path = "../WEB-INF/views/result/result.jsp";

		// 판매자 로그인 세션 유지 될 때
		} else {
			
			// 판매자의 제품리스트 뿌리기 : productservice,dao 의 list 결과 ar를 setAttribute ar로 해서 jsp에서 뿌리기.
			List<ProductDTO> ar = null;
			
			int num=0;
			Search search = new Search();
			
			search.setCategory(request.getParameter("category"));
			String category=search.getCategory();
			
			search.setSort(request.getParameter("search"));
			String sort=search.getSort();
			
			SearchRow searchRow = new SearchRow();
			searchRow.setStartRow(1);
			searchRow.setLastRow(8);
			String seller = sellerDTO.getCompanyName();
			
			try {
				
				con=DBConnect.getConnect();
				ar = productDAO.productList(search, seller, searchRow, con);
				System.out.println("search sort : "+search.getSort());
				
				request.setAttribute("ar", ar);	// sellerMain.jsp에서 ${requestScope.ar}로 받기
		
				check=true;
				path= "../WEB-INF/views/seller/sellerMain.jsp";

			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}
		
		actionForward.setPath(path);
		actionForward.setCheck(check);
		return actionForward;
	}


	public ActionForward sellerJoin(HttpServletRequest request, HttpServletResponse response) {
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
				sellerDTO.setAddress(request.getParameter("address"));

				res = sellerDAO.sellerJoin(sellerDTO, con);

				if (res > 0) { // 성공
					request.setAttribute("msg", "회원가입 성공");
					request.setAttribute("path", "./sellerLogin");
					// request.setAttribute("method", "POST");
					// request.setAttribute("DTO", sellerDTO);
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

	public ActionForward sellerIdCheck(HttpServletRequest request, HttpServletResponse response) {
		ActionForward actionForward = new ActionForward();

		int check = 0;
		Connection con = null;

		try {
			con = DBConnect.getConnect();
			String id = request.getParameter("id");
			check = sellerDAO.sellerIdCheck(id, con);
		} catch (Exception e) {
			// TODO: handle exception
		}

		request.setAttribute("result", check);
		actionForward.setPath("../WEB-INF/views/seller/sellerIdCheck.jsp");
		actionForward.setCheck(true);

		return actionForward;
	}

	public ActionForward sellerLogin(HttpServletRequest request, HttpServletResponse response) {
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

		} else if (method.equals("POST") && addr.equals("/sellerLogin")) { // 로그인 버튼
			SellerDTO sellerDTO = null;
			try {
				con = DBConnect.getConnect();
				String id = request.getParameter("id");
				String pw = request.getParameter("pw");
				sellerDTO = sellerDAO.sellerLogin(id, pw, con);

				if (sellerDTO != null) { // 로그인 성공
					HttpSession session = request.getSession();
					check = true;
					path = "../WEB-INF/views/index.jsp";
					session.setAttribute("sellerDTO", sellerDTO);
				} else {
					request.setAttribute("msg", "로그인 실패");
					request.setAttribute("path", "./sellerLogin");
					check = true;
					path = "../WEB-INF/views/result/result.jsp";
				}

			} catch (Exception e) {
				e.printStackTrace();
			}

		}

		actionForward.setPath(path);
		actionForward.setCheck(check);
		return actionForward;
	}

	public ActionForward sellerFindPw(HttpServletRequest request, HttpServletResponse response) {
		ActionForward actionForward = new ActionForward();
		return actionForward;
	}

	public ActionForward sellerUpdate(HttpServletRequest request, HttpServletResponse response) {

		ActionForward actionForward = new ActionForward();
		String path = "";
		boolean check = true;
		int res = 0;
		SellerDTO sellerDTO = null;
		String method = request.getMethod();
		HttpSession session = request.getSession();
		sellerDTO = (SellerDTO) session.getAttribute("sellerDTO");
		if (sellerDTO != null) {

		// 회원수정 페이지로 이동
		if (method.equals("GET")) {
			path = "../WEB-INF/views/seller/sellerUpdate.jsp";

			// 회원 수정 완료 버튼
		} else {
			Connection con = null;
			String id = sellerDTO.getId();

			try {
				con = DBConnect.getConnect();
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
				sellerDTO.setAddress(request.getParameter("address"));
				res = sellerDAO.sellerUpdate(sellerDTO, id, con);
				if (res > 0) {
					// flash message : 3초 떴다가 자동 사라짐//
					check = true;
					path = "../WEB-INF/views/seller/sellerMain.jsp";
				} else {
					request.setAttribute("msg", "수정 실패");
					request.setAttribute("path", "../WEB-INF/views/seller/sellerUpdate.jsp");
					check = true;
					path = "../WEB-INF/views/result/result.jsp";
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		} else {
			check = false;
			path = "../WEB-INF/views/index.do";
		}

		actionForward.setPath(path);
		actionForward.setCheck(check);
		return actionForward;
	}

	public ActionForward sellerDelete(HttpServletRequest request, HttpServletResponse response) {

		ActionForward actionForward = new ActionForward();
		String path = "";
		boolean check = true;
		int res = 0;
		SellerDTO sellerDTO = null;
		String method = request.getMethod();
		HttpSession session = request.getSession();
		sellerDTO = (SellerDTO) session.getAttribute("sellerDTO");
		if (sellerDTO != null) {

			if (method.equals("GET")) {
				path = "../WEB-INF/views/seller/sellerDelete.jsp";
			} else {
				Connection con = null;
				String id = sellerDTO.getId();

				try {
					con = DBConnect.getConnect();
					res = sellerDAO.sellerDelete(id, con);
					if (res > 0) {
						session.invalidate();
						request.setAttribute("msg", "탈퇴 성공");
						request.setAttribute("path", "../index.do");
						check = true;
						path = "../WEB-INF/views/result/result.jsp";
					} else {
						request.setAttribute("msg", "탈퇴 실패");
						request.setAttribute("path", "../WEB-INF/views/seller/sellerDelete.jsp");
						check = true;
						path = "../WEB-INF/views/result/result.jsp";
					}
				} catch (Exception e) {
					// TODO: handle exception
				}

			}
		} else {
			check = false;
			path = "../WEB-INF/views/index.do";
		}

		actionForward.setCheck(check);
		actionForward.setPath(path);

		return actionForward;
	}

	public ActionForward sellerLogout(HttpServletRequest request, HttpServletResponse response) {
		ActionForward actionForward = new ActionForward();

		HttpSession session = request.getSession();
		String path = "";
		boolean check = false;
		if (session.getAttribute("sellerDTO") != null) {
			session.invalidate();
			path = "../index.do";
		}

		actionForward.setCheck(check);
		actionForward.setPath(path);

		return actionForward;
	}

	public ActionForward sellerSelect(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return null;
	}


}
