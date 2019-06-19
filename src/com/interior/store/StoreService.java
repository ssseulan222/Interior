package com.interior.store;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.interior.action.ActionForward;
import com.interior.page.Search;
import com.interior.page.SearchRow;
import com.interior.product.ProductDAO;
import com.interior.product.ProductDTO;
import com.interior.util.DBConnect;

public class StoreService {

	private ProductDAO productDAO = null;

	public StoreService() {
		productDAO = new ProductDAO();
	}

	public ActionForward storeMain(HttpServletRequest request, HttpServletResponse response) { // == 리스트
		ActionForward actionForward = new ActionForward();
		String path = "";
		boolean check = true;

		List<ProductDTO> ar = new ArrayList<ProductDTO>();

		int page = 0;
		int num = 0;

		Search search = new Search();
		search.setCategory(request.getParameter("category"));
		String category = search.getCategory();
		System.out.println(category);

		search.setSort(request.getParameter("sort"));
		String sort = search.getSort();
		
		search.setSeller(request.getParameter("seller"));
		String seller=search.getSeller();

		SearchRow searchRow = new SearchRow();
		searchRow.setStartRow(0);
		searchRow.setLastRow(5);

		Connection con;

		try {
			con = DBConnect.getConnect();
			ar = productDAO.productAllList(con);
			System.out.println("ar size : "+ar.size());

			// 판매자의 제품리스트 뿌리기 : productservice,dao 의 list 결과 ar를 setAttribute ar로 해서 jsp에서
			// 뿌리기.

			request.setAttribute("ar", ar); // sellerMain.jsp에서 ${requestScope.ar}로 받기


		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		path = "../WEB-INF/views/store/storeMain.jsp";
		

		actionForward.setPath(path);
		actionForward.setCheck(check);
		return actionForward;
	}

	public ActionForward storeCategory(HttpServletRequest request, HttpServletResponse response) {
		ActionForward actionForward = new ActionForward();
		String path = "";
		boolean check = true;

		List<ProductDTO> ar = new ArrayList<ProductDTO>();
		String category = request.getParameter("category");
		String sort = request.getParameter("sort");
		String seller = request.getParameter("seller");
		SearchRow searchRow = new SearchRow();
		int page = 0;
		Connection con;

		try {
			con = DBConnect.getConnect();
			//ar = productDAO.productAllList(category, sort, seller, searchRow, con);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		path = "../WEB-INF/views/store/storeCategory.jsp?category=" + category + "&sort=" + sort + "&pageNum" + page;

		actionForward.setPath(path);
		actionForward.setCheck(check);
		return actionForward;
	}

	public ActionForward storeRanking(HttpServletRequest request, HttpServletResponse response) {
		ActionForward actionForward = new ActionForward();
		String path = "";
		boolean check = true;

		path = "../WEB-INF/views/store/storeRanking.jsp";

		actionForward.setPath(path);
		actionForward.setCheck(check);
		return actionForward;
	}

	public ActionForward storeSelect(HttpServletRequest request, HttpServletResponse response) {
		ActionForward actionForward = new ActionForward();
		String path = "";
		boolean check = true;

		path = "../WEB-INF/views/store/storeSelect.jsp";

		actionForward.setPath(path);
		actionForward.setCheck(check);
		return actionForward;
	}
}
