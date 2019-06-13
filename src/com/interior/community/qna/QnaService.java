package com.interior.community.qna;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.interior.community.action.Action;
import com.interior.community.action.ActionForward;
import com.interior.community.page.SearchMakePage;
import com.interior.community.page.SearchPager;
import com.interior.community.page.SearchRow;
import com.interior.community.upload.UploadDAO;
import com.interior.community.upload.UploadDTO;
import com.interior.community.util.DBConnector;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class QnaService implements Action {
	
	private QnaDAO qnaDAO;
	private UploadDAO uploadDAO;
	
	public QnaService() {
		qnaDAO = new QnaDAO();
		uploadDAO = new UploadDAO();
	}

	@Override
	public ActionForward list(HttpServletRequest request, HttpServletResponse response) {
		ActionForward actionForward = new ActionForward();
		int curPage = 1;
		
		try {
			curPage = Integer.parseInt(request.getParameter("curPage"));
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		String kind = request.getParameter("kind");
		String search = request.getParameter("search");
		
		SearchMakePage searchMakePage = new SearchMakePage(curPage, kind, search);
		
		SearchRow searchRow = searchMakePage.makeRow();
/*
		if(kind == null) {
			kind = "title";
		}
		else if(kind.equals("c")) {
			kind = "contents";
		}
		else if(kind.equals("w")) {
			kind = "writer";
		}
		else {
			kind = "title";
		}
		
		if(search == null) {
			search ="";
		}
*/
		
		
		
		int totalCount = 0;
		Connection con = null;
		
		try {
			con = DBConnector.getConnect();
			totalCount = qnaDAO.getTotalCount(searchRow, con);
			List<QnaDTO> ar = qnaDAO.selectList(searchRow, con);
			System.out.println(ar.size());
			request.setAttribute("list", ar);
			request.setAttribute("board", "qna");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		 SearchPager searchPager = searchMakePage.makePage(totalCount);
		 request.setAttribute("pager", searchPager);
		 
		actionForward.setCheck(true);
		actionForward.setPath("../WEB-INF/views/qna/qnaList.jsp");
		
		return actionForward;
	}


	@Override
	public ActionForward select(HttpServletRequest request, HttpServletResponse response) {
		ActionForward actionForward = new ActionForward();
		
		QnaDTO qnaDTO = null;
		List<UploadDTO> ar = null;
		Connection con = null;
		String category = null;
		
		try {
			con = DBConnector.getConnect();
			int num = Integer.parseInt(request.getParameter("num"));
			qnaDTO = qnaDAO.selectOne(num, con);
			ar = uploadDAO.selectList(category, num, con);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		String path = "";
		
		if(qnaDTO != null) {
			request.setAttribute("dto", qnaDTO);
			request.setAttribute("upload", ar);
			path = "../WEB-INF/views/qna/qnaSelect.jsp";
		}
		else {
			request.setAttribute("message", "NO DATA");
			request.setAttribute("path", "./qnaSelect");
			path = "../WEB-INF/views/common/result.jsp";
		}
		actionForward.setCheck(true);
		actionForward.setPath(path);
		return actionForward;
		
		
	}

	@Override
	public ActionForward insert(HttpServletRequest request, HttpServletResponse response) {
		ActionForward actionForward = new ActionForward();
		actionForward.setCheck(true);
		actionForward.setPath("../WEB-INF/views/qna/qnaWrite.jsp");
		String method = request.getMethod();
		System.out.println(method);
		
		if(method.equals("POST")) {
			String saveDirectory = request.getServletContext().getRealPath("upload");
			File file = new File(saveDirectory);
			System.out.println("11111");
			if(!file.exists()) {
				file.mkdirs();
			}
			int maxPostSize = 1024*1024*100;
			Connection con = null;
			
			try {
				System.out.println("22222");
				MultipartRequest multipartRequest = new MultipartRequest(request, saveDirectory, maxPostSize, "UTF-8", new DefaultFileRenamePolicy());
				Enumeration<String> e = multipartRequest.getFileNames();
				ArrayList<UploadDTO> ar = new ArrayList<UploadDTO>();
				while(e.hasMoreElements()) {
					String s = e.nextElement();
					String fname = multipartRequest.getFilesystemName(s);
					String oname = multipartRequest.getOriginalFileName(s);
					UploadDTO uploadDTO = new UploadDTO();
					uploadDTO.setFname(fname);
					uploadDTO.setOname(oname);
					ar.add(uploadDTO);
				}
				QnaDTO qnaDTO = new QnaDTO();
				qnaDTO.setTitle(multipartRequest.getParameter("title"));
				qnaDTO.setWriter(multipartRequest.getParameter("writer"));
				qnaDTO.setContents(multipartRequest.getParameter("contents"));
				
				con = DBConnector.getConnect();
				
				int num = qnaDTO.getNum();
				qnaDTO.setNum(num);
				con.setAutoCommit(false);
				
				
				num = qnaDAO.insert(qnaDTO, con);
				
				for(UploadDTO uploadDTO:ar) {
			 		uploadDTO.setNum(qnaDTO.getNum());
			 		num = uploadDAO.insert(uploadDTO, con);
			 		if(num<1) {
			 			throw new Exception();
			 		}
			 	}
				
			 	con.commit();
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
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
			actionForward.setCheck(false);
			actionForward.setPath("./qnaList");
			
		}//post끝
		return actionForward;			
		
	}

	@Override
	public ActionForward update(HttpServletRequest request, HttpServletResponse response) {
		ActionForward actionForward = new ActionForward();
		actionForward.setCheck(true);
		actionForward.setPath("../WEB-INF/views/qna/qnaUpdate.jsp");
		
		String method = request.getMethod();
		if(method.equals("POST")) {

		}
		else {
			int num = Integer.parseInt(request.getParameter("num"));
			Connection con = null;
			QnaDTO qnaDTO = null;
			List<UploadDTO> ar = null;
			String category = null;
			try {
				con = DBConnector.getConnect();
				qnaDTO = qnaDAO.selectOne(num, con);
				ar = uploadDAO.selectList(category, num, con);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			finally {
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}//finally
			request.setAttribute("dto", qnaDTO);
			request.setAttribute("upload", ar);
		}//GET
		
		return actionForward;
	}

	@Override
	public ActionForward delete(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return null;
	}

}
