package com.interior.community.upload;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class UploadDAO {

	//insert
	public int insert(UploadDTO uploadDTO, Connection con) throws Exception {
		int result = 0;
		String sql ="insert into upload values(qna_seq.nextval,?,?,?)";
		PreparedStatement st = con.prepareStatement(sql);
		
		//st.setInt(1, uploadDTO.getPnum());
		st.setInt(2, uploadDTO.getNum());
		st.setString(3, uploadDTO.getOname());
		st.setString(4, uploadDTO.getFname());
		
		/*
		st.setString(5, uploadDTO.getTitle());
		st.setString(6, uploadDTO.getPlace());
		st.setString(7, uploadDTO.getStyle());
		st.setString(8, uploadDTO.getInfo());
		st.setString(9, uploadDTO.getCategory());
		st.setString(10, uploadDTO.getUrl());
		st.setString(11, uploadDTO.getTag());
		*/
		
		result = st.executeUpdate();
		
		st.close();
		
		return result;
	}
	
	//update
	public int update(UploadDTO uploadDTO, Connection con) throws Exception {
		int result = 0;
		String sql = "";
		PreparedStatement st = con.prepareStatement(sql);
		
		
		
		
		return result;
	}
	
	
	//delete
	public int delete(int pnum, Connection con) throws Exception {
		int result = 0;
		String sql = "delete upload where pnum=?";
		PreparedStatement st = con.prepareStatement(sql);
		
		st.setInt(1, pnum);
		
		result = st.executeUpdate();
		st.close();
		
		return result;
	}
	
	
	//selectList
	public List<UploadDTO> selectList(int num, Connection con) throws Exception {
		ArrayList<UploadDTO> ar = new ArrayList<UploadDTO>();
		String sql = "select * from upload where num=?";
		PreparedStatement st = con.prepareStatement(sql);
		
		//st.setString(1, category);
		st.setInt(1, num);
		
		ResultSet rs = st.executeQuery();
		while(rs.next()) {
			UploadDTO uploadDTO = new UploadDTO();
			
			uploadDTO.setPnum(rs.getInt("pnum"));
			uploadDTO.setNum(rs.getInt("num"));
			uploadDTO.setOname(rs.getString("oname"));
			uploadDTO.setFname(rs.getString("fname"));
			
			/*
			uploadDTO.setTitle(rs.getString("title"));
			uploadDTO.setPlace(rs.getString("place"));
			uploadDTO.setStyle(rs.getString("style"));
			uploadDTO.setInfo(rs.getString("info"));
			uploadDTO.setCategory(rs.getString("category"));
			uploadDTO.setUrl(rs.getString("url"));
			uploadDTO.setTag(rs.getString("tag"));
			*/
		}
		
		rs.close();
		st.close();
		
		return ar;
		
	}
	
	//select
	public UploadDTO selectOne(int num, Connection con)throws Exception {
		UploadDTO uploadDTO = null;
		
		String sql = "select * from upload where num=?";
		PreparedStatement st = con.prepareStatement(sql);
		
		st.setInt(1, num);
		
		ResultSet rs = st.executeQuery();
		
		if(rs.next()) {
			uploadDTO = new UploadDTO();
			uploadDTO.setPnum(rs.getInt("pnum"));
			uploadDTO.setNum(rs.getInt("num"));
			uploadDTO.setOname(rs.getString("oname"));
			uploadDTO.setFname(rs.getString("fname"));
		}
		rs.close();
		st.close();
		con.close();
		
		return uploadDTO;
	}
	
}
