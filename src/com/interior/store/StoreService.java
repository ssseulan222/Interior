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
		
		Connection con;
		List<ProductDTO> ar = new ArrayList<ProductDTO>();
		try {
			con = DBConnect.getConnect();
			SearchRow searchRow = new SearchRow();
			searchRow.setStartRow(1);
			searchRow.setLastRow(20);
			ar=productDAO.productAllList(searchRow,con);
			
			request.setAttribute("allProductAr", ar);
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
		System.out.println("cat11 : "+category);
		Search search = new Search();
		search.setCategory(category);
		search.setColumn("category");
		System.out.println("cat2222 : " +search.getCategory());
		
		SearchRow searchRow = new SearchRow();
		searchRow.setStartRow(1);
		searchRow.setLastRow(40);
		
		int page = 0;
		Connection con;

		try {
			con = DBConnect.getConnect();
			ar=productDAO.productCatList(category, searchRow, con);
			request.setAttribute("allProductAr", ar);
			request.setAttribute("category", search.getCategory());
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		path = "../WEB-INF/views/store/storeCategory.jsp?category=" + category;

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

	
}
