package com.interior.community.homeparty;

import java.io.UnsupportedEncodingException;
import java.sql.Connection;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sound.midi.Soundbank;

import com.interior.community.action.Action;
import com.interior.community.action.ActionForward;
import com.interior.community.util.DBConnector;
import com.sun.accessibility.internal.resources.accessibility;


public class HomepartyService implements Action {
	private HomepartyDAO homepartyDAO;
	public HomepartyService() {
		// TODO Auto-generated constructor stub
		homepartyDAO = new HomepartyDAO();
	}
	
	public ActionForward homepartyWritelist(HttpServletRequest request, HttpServletResponse response) {
		ActionForward actionForward = new ActionForward();
		actionForward.setCheck(true);
		actionForward.setPath("../WEB-INF/views/homeparty/homepartyWritelist.jsp");
		return actionForward;
	}
	@Override
	public ActionForward list(HttpServletRequest request, HttpServletResponse response) {
		ActionForward actionForward = new ActionForward();
		actionForward.setCheck(true);
		actionForward.setPath("../WEB-INF/views/homeparty/homeparty.jsp");
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
		String method = request.getMethod();
		
		if(method.equals("GET")) {
			Connection con = null;
			HomepartyDTO homepartyDTO = new HomepartyDTO();
			
			String title = request.getParameter("hometitle");
			String place = request.getParameter("place");
			String floor = request.getParameter("floor");
			String work = request.getParameter("work");
			String field = request.getParameter("field");
			String family = request.getParameter("family");
			String style = request.getParameter("style");
			String weekmonth = request.getParameter("weekmonth");
			String weekmonthmonth = null;
			if(weekmonth.equals("1")) {
				weekmonthmonth = "개월";
			}else if(weekmonth.equals("0")) {
				weekmonthmonth = "주";
			}
			String [] colorcolor = request.getParameterValues("color");
			String color ="";
			for(int i=0; i<colorcolor.length;i++) {
				color = color + colorcolor[i];
			}
			//System.out.println(color);
			String weekmonthnumber = request.getParameter("weekmonthnumber");
			String term = weekmonthnumber + weekmonthmonth;
			int money = Integer.parseInt(request.getParameter("money"));
			homepartyDTO.setTitle(title);
			homepartyDTO.setPlace(place);
			homepartyDTO.setFloor(floor);
			homepartyDTO.setWork(work);
			homepartyDTO.setField(field);
			homepartyDTO.setFamily(family);
			homepartyDTO.setStyle(style);
			homepartyDTO.setTerm(term);
			homepartyDTO.setMoney(money);
			
			int result = 0;
			try {
				con = DBConnector.getConnect();
				result = homepartyDAO.insert(homepartyDTO, con);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			//System.out.println("22");
			//System.out.println(result);
			request.setAttribute("result", result);
			if(result==0) {
				actionForward.setPath("../WEB-INF/views/homeparty/homepartyWritelist.jsp");
			}else if(result==1){
				actionForward.setPath("../WEB-INF/views/homeparty/homeparty.jsp");
			}
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
