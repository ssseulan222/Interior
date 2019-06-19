package com.interior.product;

import java.io.File;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.interior.action.ActionForward;
import com.interior.page.SearchRow;
import com.interior.seller.SellerDTO;
import com.interior.upload.UploadDAO;
import com.interior.upload.UploadDTO;
import com.interior.util.DBConnect;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class ProductService {

	ProductDAO productDAO = null;
	UploadDAO uploadDAO = null;

	public ProductService() {
		productDAO = new ProductDAO();
		uploadDAO = new UploadDAO();
	}
	
	public ActionForward productSelectList(HttpServletRequest request, HttpServletResponse response) {
		ActionForward actionForward = new ActionForward();
		String path="";
		boolean check=true;
		Connection con;
		try {
			con = DBConnect.getConnect();
			List<ProductDTO> ar = new ArrayList<ProductDTO>();
			String category=request.getParameter("category");
			String sort=request.getParameter("sort");
			String seller=request.getParameter("seller");
			SearchRow searchRow=new SearchRow();
			searchRow.setStartRow(0);
			searchRow.setLastRow(5);
			ar = productDAO.productList(category, sort, seller, searchRow, con);
			
			HttpSession session=request.getSession();
			session.setAttribute("ar", ar);
			
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		actionForward.setCheck(check);
		actionForward.setPath(path);
		return actionForward;
	}


	public ActionForward productInsert(HttpServletRequest request, HttpServletResponse response) {
		ActionForward actionForward = new ActionForward();
		String path = "";
		boolean check = true;
		HttpSession session = request.getSession();
		SellerDTO sellerDTO = (SellerDTO) session.getAttribute("sellerDTO");
		String method = request.getMethod();
		int res = 0;

		/* 로그인 세션이 만료 되면 로그인 창으로 이동 */
		if (sellerDTO == null) {
			request.setAttribute("msg", "로그인 세션이 만료되었습니다. 다시 로그인 해주세요");
			request.setAttribute("path", "../seller/sellerLogin");
			check = true;
			path = "../WEB-INF/views/result/result.jsp";

			/* 로그인 세션 유지 되면 계속 진행 */
		} else {

			/* GET 방식 : 상품등록 화면으로 이동 */
			if (method.equals("GET")) {
				check = true;
				path = "../WEB-INF/views/product/productInsert.jsp";

				/* POST 방식 : '상품등록'버튼 눌렀을 때 등록 진행 */
			} else {

				Connection con = null;

				try {
					con = DBConnect.getConnect();

					/* 'productUpload' 파일에 저장 */

					// 'productUpload의 진짜 경로에 저장
					String saveDirectory = request.getServletContext().getRealPath("productUpload");
					System.out.println(saveDirectory);

					// 'productUpload' 파일이 없으면 새로 만들기
					File f = new File(saveDirectory);
					if (!f.exists()) {
						f.mkdirs();
					}

					/* 파일의 최대 크기 : 10MB */
					int maxPostSize = 1024 * 1024 * 10;

					MultipartRequest multipartRequest = new MultipartRequest(request, saveDirectory, maxPostSize,
							"UTF-8", new DefaultFileRenamePolicy());

					/* Enumeration : 각의 객체들을 한순간에 하나씩 처리할 수 있는 메소드를 제공하는 켈렉션 */
					// String 형태의 파일 이름들을 하나씩 처리
					Enumeration<String> e = multipartRequest.getFileNames();

					ArrayList<UploadDTO> ar = new ArrayList<UploadDTO>();

					int num = productDAO.getNum(con);

					while (e.hasMoreElements()) {
						String fileName = e.nextElement();
						UploadDTO uploadDTO = new UploadDTO();
						String fname = multipartRequest.getFilesystemName(fileName); // 시스템에 저장된 파일 이름
						String oname = multipartRequest.getOriginalFileName(fileName); // 사용자가 저장할 때의 파일 이름
						uploadDTO.setFname(fname);
						uploadDTO.setOname(oname);
						uploadDTO.setNum(num);
						ar.add(uploadDTO);
					}
					

					ProductDTO productDTO = new ProductDTO();
					productDTO.setNum(num);
					productDTO.setSeller(multipartRequest.getParameter("seller"));
					productDTO.setName(multipartRequest.getParameter("name"));
					productDTO.setCategory(multipartRequest.getParameter("category"));
					productDTO.setPrice(multipartRequest.getParameter("price"));
					productDTO.setSaleRate(multipartRequest.getParameter("saleRate"));
					productDTO.setSalePrice(multipartRequest.getParameter("salePrice"));
					productDTO.setLowestPrice(multipartRequest.getParameter("lowestPrice"));
					productDTO.setPoint(multipartRequest.getParameter("point"));
					productDTO.setDelivery(multipartRequest.getParameter("delivery"));
					productDTO.setDeliveryLocal(multipartRequest.getParameter("deliveryLocal"));
					productDTO.setDeliveryDiff(multipartRequest.getParameter("deliveryDiff"));
					productDTO.setFreeDeliv(multipartRequest.getParameter("freeDeliv"));
					productDTO.setDeliveryFee(multipartRequest.getParameter("deliveryFee"));
					productDTO.setReturnFee(multipartRequest.getParameter("returnFee"));
					productDTO.setExchangeFee(multipartRequest.getParameter("exchangeFee"));
					productDTO.setSendPlace(multipartRequest.getParameter("sendPlace"));
					res = productDAO.productInsert(productDTO, con);

					if (res < 1) {
						throw new Exception();
					}

					for (UploadDTO u : ar) {
						res = uploadDAO.insert(u, con);
						if (res < 1) {
							throw new Exception();
						}
					}

					con.commit();

				} catch (Exception e) {
					e.printStackTrace();
					try {
						con.rollback();
					} catch (Exception e2) {
						e2.printStackTrace();
					}
				} finally {
					try {
						con.setAutoCommit(true);
						con.close();
					} catch (Exception e2) {
						e2.printStackTrace();
					}
				}
				
				if (res > 0) { // 성공
					request.setAttribute("msg", "상품 등록 성공");
					request.setAttribute("path", "../seller/sellerMain");
					check = true;
					path = "../WEB-INF/views/result/result.jsp";
				} else { // 실패
					request.setAttribute("msg", "상품 등록 실패");
					request.setAttribute("path", "./productInsert");
					check = true;
					path = "../WEB-INF/views/result/result.jsp";
				}

			}
		}
		
		actionForward.setCheck(check);
		actionForward.setPath(path);
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
