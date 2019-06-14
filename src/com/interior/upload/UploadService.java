package com.interior.upload;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.interior.action.ActionForward;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


public class UploadService {

	public ActionForward insert(HttpServletRequest request, HttpServletResponse response) {
		
		ActionForward actionForward = new ActionForward();
		String saveDirectory = request.getServletContext().getRealPath("/upload/");
		
		File file = new File(saveDirectory);
		if (!file.exists()) {
			file.mkdirs();
		}
		int maxPostSize = 10 * 1024 * 1024;
		String result="";
		try {
			MultipartRequest multipartRequest = new MultipartRequest(request, saveDirectory, maxPostSize, "UTF-8", new DefaultFileRenamePolicy());
			String callback = multipartRequest.getParameter("callback");
			String callback_func=multipartRequest.getParameter("callback_func");
			String oname=multipartRequest.getOriginalFileName("file");
			String fname = multipartRequest.getFilesystemName("file");
			
			
			// 1.절대경로
			String path = request.getContextPath();
			
			// 2.최종결과물
			result = "&bNewLine=true&sFileURL="+path+"/upload/"+fname;
			
			// 3.
			result = callback + "?callback_func=" + callback_func+result;
			
			actionForward.setCheck(false);
			actionForward.setPath(result);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return actionForward;
	}
}
