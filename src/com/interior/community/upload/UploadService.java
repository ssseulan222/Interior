
package com.interior.community.upload;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.interior.community.CommunityDTO;
import com.interior.community.action.Action;
import com.interior.community.action.ActionForward;
import com.interior.community.qna.QnaDAO;
import com.interior.community.qna.QnaDTO;
import com.interior.community.util.DBConnector;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.sun.glass.ui.Application;

public class UploadService implements Action {
	
	private UploadDAO uploadDAO;
	private QnaDAO qnaDAO;
	
	public UploadService() {
		uploadDAO = new UploadDAO();
		qnaDAO = new QnaDAO();
	}

	@Override
	public ActionForward list(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ActionForward select(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ActionForward insert(HttpServletRequest request, HttpServletResponse response) {
		
		ActionForward actionForward = new ActionForward();
		actionForward.setCheck(true);
		actionForward.setPath("../WEB-INF/views/qna/qnaWrite.jsp");
		
		
		String method = request.getMethod();
		//System.out.println("method : " + method);
		
		//String fileName = request.getParameter("file");
        //System.out.println(fileName);
		
		if(method.equals("POST")) {
			String saveDirectory = request.getServletContext().getRealPath("/upload");
			//System.out.println("saveDirectory : " + saveDirectory);
			File f = new File(saveDirectory);
			if(!f.exists()) {
				f.mkdirs();
			}
			int maxPostSize = 1024*1024*100;
			Connection con = null;
			
			try {
				MultipartRequest multipartRequest = new MultipartRequest(request, saveDirectory, maxPostSize, "UTF-8", new DefaultFileRenamePolicy());
				Enumeration<String> e = multipartRequest.getFileNames();
				ArrayList<UploadDTO> ar = new ArrayList<UploadDTO>();
				
				while(e.hasMoreElements()) {
					String file = e.nextElement();
					String fname = multipartRequest.getFilesystemName(file);
					String oname = multipartRequest.getOriginalFileName(file);
					
					UploadDTO uploadDTO = new UploadDTO();
					uploadDTO.setFname(fname);
					uploadDTO.setOname(oname);
					ar.add(uploadDTO);
				}
				//CommunityDTO communityDTO = new CommunityDTO();
				//System.out.println("temp : " + (multipartRequest.getParameter("temp")));
				con = DBConnector.getConnect();
				QnaDTO qnaDTO = new QnaDTO();
				
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
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ActionForward delete(HttpServletRequest request, HttpServletResponse response) {
		ActionForward actionForward = new ActionForward();
		int result = 0;
		Connection con = null;
		
		try {
			con = DBConnector.getConnect();
			int pnum = Integer.parseInt(request.getParameter("pnum"));
			result = uploadDAO.delete(pnum, con);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("result", result);
		actionForward.setCheck(true);
		actionForward.setPath("../WEB-INF/views/common/result2.jsp");
		
		return actionForward;
	}

}
