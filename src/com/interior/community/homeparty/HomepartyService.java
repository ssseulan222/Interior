package com.interior.community.homeparty;

import java.io.File;
import java.io.IOException;
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
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


public class HomepartyService implements Action {
	private HomepartyDAO homepartyDAO;
	public HomepartyService() {
		// TODO Auto-generated constructor stub
		homepartyDAO = new HomepartyDAO();
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
		actionForward.setPath("../WEB-INF/views/homeparty/homepartyWrite.jsp");
		String method = request.getMethod();
		System.out.println(method);
		
		if(method.equals("POST")) {
			Connection con = null;
			HomepartyDTO homepartyDTO = new HomepartyDTO();
			MultipartRequest multipartRequest = null;
			int maxPostSize = 100*1024*1024;
			String saveDirectory = request.getServletContext().getRealPath("upload");
			
			File file = new File(saveDirectory);
			try {
				multipartRequest = new MultipartRequest(request, saveDirectory, maxPostSize, "UTF-8", new DefaultFileRenamePolicy());
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			String title = multipartRequest.getParameter("hometitle");
			System.out.println("title"+title);
			String place = multipartRequest.getParameter("place");
			String floor = multipartRequest.getParameter("floor");
			String work = multipartRequest.getParameter("work");
			String field = multipartRequest.getParameter("field");
			String family = multipartRequest.getParameter("family");
			String style = multipartRequest.getParameter("style");
			String weekmonth = multipartRequest.getParameter("weekmonth");
			String weekmonthmonth = null;
			if(weekmonth.equals("1")) {
				weekmonthmonth = "개월";
			}else if(weekmonth.equals("0")) {
				weekmonthmonth = "주";
			}
			String [] colorcolor = multipartRequest.getParameterValues("color");
			String color ="";
			for(int i=0; i<colorcolor.length;i++) {
				color = color + colorcolor[i];
			}
			System.out.println(color);
			String weekmonthnumber = multipartRequest.getParameter("weekmonthnumber");
			String term = weekmonthnumber + weekmonthmonth;
			int money = Integer.parseInt(multipartRequest.getParameter("money"));
			String wallcolor = multipartRequest.getParameter("wallcolor");
			String floorcolor = multipartRequest.getParameter("floorcolor");
			String detail = multipartRequest.getParameter("detail");
			String location_first = multipartRequest.getParameter("location_first");
			/*
			 * String location_last = request.getParameter("location_last"); 
			 * String location = location_first + " " + location_last;
			 */
			String location = location_first;
			System.out.println("location"+location);
			System.out.println("floorcolor"+floorcolor);
			System.out.println("wallcolor"+wallcolor);
			homepartyDTO.setTitle(title);
			homepartyDTO.setPlace(place);
			homepartyDTO.setFloor(floor);
			homepartyDTO.setWork(work);
			homepartyDTO.setField(field);
			homepartyDTO.setFamily(family);
			homepartyDTO.setStyle(style);
			homepartyDTO.setTerm(term);
			homepartyDTO.setMoney(money);
			homepartyDTO.setColor(color);
			homepartyDTO.setWallcolor(wallcolor);
			homepartyDTO.setFloorcolor(floorcolor);
			homepartyDTO.setDetail(detail);
			homepartyDTO.setLocation(location);
			
			
			int result = 0;
			try {
				con = DBConnector.getConnect();
				result = homepartyDAO.insert(homepartyDTO, con);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println("22");
			System.out.println(result);
			request.setAttribute("result", result);
			if(result==0) {
				actionForward.setPath("../WEB-INF/views/homeparty/homepartyWrite.jsp");
			}else if(result==1){
				actionForward.setPath("../index.do");
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
