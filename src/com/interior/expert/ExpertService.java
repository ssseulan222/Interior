package com.interior.expert;

import java.sql.Connection;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.interior.action.Action;
import com.interior.action.ActionForward;
import com.interior.page.SearchMakePage;
import com.interior.page.SearchRow;
import com.interior.upload.UploadDAO;
import com.interior.util.DBConnector;

public class ExpertService implements Action{
	private ExpertDAO expertDAO;
	private UploadDAO uploadDAO;
	
	public ExpertService() {
		expertDAO = new ExpertDAO();
		uploadDAO = new UploadDAO();
	}

	@Override
	public ActionForward list(HttpServletRequest request, HttpServletResponse response) {
		ActionForward actionForward = new ActionForward();
		
		int curPage=1;
		
		try {
			curPage = Integer.parseInt(request.getParameter("curPage"));
		}catch (Exception e) {
			// TODO: handle exception
		}
		
		String kind = request.getParameter("kind");
		String search = request.getParameter("search");
		
		SearchMakePage searchMakePage = new SearchMakePage(curPage, kind, search);
		
		SearchRow searchRow = searchMakePage.makeRow();
		
		int totalCount = 0;
		Connection con = null;
		try {
			con = DBConnector.getConnect();
			totalCount = expertDAO.getTotalCount(searchRow, con);
			List<ExpertDTO> ar = expertDAO;
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return actionForward;
	}

	@Override
	public ActionForward select(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ActionForward insert(HttpServletRequest request, HttpServletResponse response) {
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