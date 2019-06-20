package com.interior.expert;

import java.io.File;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.interior.action.Action;
import com.interior.action.ActionForward;
import com.interior.expert.upload.UploadDAO;
import com.interior.expert.upload.UploadDTO;
import com.interior.page.SearchMakePage;
import com.interior.page.SearchPager;
import com.interior.page.SearchRow;
import com.interior.util.DBConnect;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;



public class ExpertService1 implements Action{
	private ExpertDAO expertDAO;
	private UploadDAO uploadDAO;

	public ExpertService1() {
		expertDAO = new ExpertDAO();
		uploadDAO = new UploadDAO();
	}

	@Override
	public ActionForward list(HttpServletRequest request, HttpServletResponse response) {
		ActionForward actionForward = new ActionForward();
System.out.println("dd");
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
			con = DBConnect.getConnect();
			totalCount = expertDAO.getTotalCount(searchRow, con);
			List<ExpertDTO> ar = expertDAO.selectList(searchRow, con);
			System.out.println(ar.size());
			request.setAttribute("list", ar);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
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
		actionForward.setPath("");

		return actionForward;
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
		actionForward.setPath("../WEB-INF/view/expert/ExpertJoin.jsp");

		String method = request.getMethod();
		
		if(method.equals("POST")) {
			String saveDirectory = request.getServletContext().getRealPath("upload");
			System.out.println(saveDirectory);
			File f = new File(saveDirectory);
			if (!f.exists()) {
				f.mkdirs();
			}
			int maxPostSize = 1024*1024*100;
			Connection con = null;
			try {
				MultipartRequest multipartRequest = new MultipartRequest(request, saveDirectory, maxPostSize, "UTF-8", new DefaultFileRenamePolicy());
				Enumeration<String> e = multipartRequest.getFileNames();
				ArrayList<UploadDTO> ar = new ArrayList<UploadDTO>();
				while (e.hasMoreElements()) {
					String s = e.nextElement();
					System.out.println(s);
					String fname = multipartRequest.getFilesystemName(s);
					String oname = multipartRequest.getOriginalFileName(s);
					System.out.println(fname);
					UploadDTO uploadDTO = new UploadDTO();
					uploadDTO.setFname(fname);
					uploadDTO.setOname(oname);
					ar.add(uploadDTO);
				}
				ExpertDTO expertDTO = new ExpertDTO();
				expertDTO.setName(multipartRequest.getParameter("name"));
				expertDTO.setContract(multipartRequest.getParameter("contract"));
				expertDTO.setPro(multipartRequest.getParameter("pro"));
				expertDTO.setSpace_type(multipartRequest.getParameter("space_type"));
				expertDTO.setA_s(multipartRequest.getParameter("a_s"));
				expertDTO.setCareer(multipartRequest.getParameter("career"));
				expertDTO.setPay(multipartRequest.getParameter("pay"));
				expertDTO.setDeposit(multipartRequest.getParameter("deposit"));
				expertDTO.setTag(multipartRequest.getParameter("tag"));
				expertDTO.setLocation(multipartRequest.getParameter("location"));
				expertDTO.setPresent(multipartRequest.getParameter("present"));
				expertDTO.setHomepage(multipartRequest.getParameter("homepage"));
				expertDTO.setEmail(multipartRequest.getParameter("email"));
				expertDTO.setPassword(multipartRequest.getParameter("password"));
				expertDTO.setPhone(multipartRequest.getParameter("phone"));
				expertDTO.setR_name(multipartRequest.getParameter("r_name"));
				expertDTO.setR_phone(multipartRequest.getParameter("r_phone"));
				expertDTO.setAddress(multipartRequest.getParameter("address"));
				expertDTO.setR_check(multipartRequest.getParameter("r_check"));
				expertDTO.setRoute(multipartRequest.getParameter("route"));
				expertDTO.setC_check(Integer.parseInt(multipartRequest.getParameter("c_check")));				
				
				con = DBConnect.getConnect();

				int num = expertDAO.getNum();
				expertDTO.setNum(num);
				con.setAutoCommit(false);

				num = expertDAO.insert(expertDTO, con);
				
				for(UploadDTO uploadDTO : ar) {
					uploadDTO.setNum(expertDTO.getNum());
					num = uploadDAO.insert(uploadDTO, con);
					System.out.println(num);
					if(num<1) {
						throw new Exception();
					}
				}

				con.commit();

			} catch (Exception e) {
				e.printStackTrace();
				// TODO: handle exception
				try {
					con.rollback();
				} catch (Exception e2) {
					// TODO: handle exception
					e2.printStackTrace();
				}
			}finally {
				try {
					con.setAutoCommit(true);
					con.close();
				} catch (Exception e3) {
					// TODO: handle exception
					e3.printStackTrace();
				}
			}
			actionForward.setCheck(false);
			actionForward.setPath("../Main.do");
		}

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