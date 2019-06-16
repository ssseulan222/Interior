package com.interior.store;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.interior.action.ActionForward;

public class StoreService {

	public ActionForward storeMain (HttpServletRequest request, HttpServletResponse response) {
		ActionForward actionForward=new ActionForward();
		String path="";
		boolean check=true;
		
		path="../WEB-INF/views/store/storeMain.jsp";
				
				
		actionForward.setPath(path);
		actionForward.setCheck(check);
		return actionForward;
	}
}
