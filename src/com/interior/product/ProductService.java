package com.interior.product;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.interior.action.ActionForward;

public class ProductService {

	public ActionForward insert(HttpServletRequest request, HttpServletResponse response) {
		ActionForward actionForward=new ActionForward();
		String path="../WEB-INF/views/product/productInsert.jsp";
		boolean check=true;
		actionForward.setCheck(check);
		actionForward.setPath(path);
		return actionForward;		
	}
}
