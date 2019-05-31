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
		String sql ="insert into upload values(?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement st = con.prepareStatement(sql);
		
		st.setString(1, uploadDTO.getOname());
		st.setString(2, uploadDTO.getFname());
		st.setInt(3, uploadDTO.getNum());
		st.setInt(4, uploadDTO.getPnum());
		st.setString(5, uploadDTO.getTitle());
		st.setString(6, uploadDTO.getPlace());
		st.setString(7, uploadDTO.getStyle());
		st.setString(8, uploadDTO.getInfo());
		st.setString(9, uploadDTO.getCategory());
		st.setString(10, uploadDTO.getUrl());
		st.setString(11, uploadDTO.getTag());
		
		result = st.executeUpdate();
		
		st.close();
		
		return result;
	}
	
	//update
	public int update(UploadDTO uploadDTO, Connection con) throws Exception {
		int result = 0;
		
		
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
	public List<UploadDTO> selectList(String category, int num, Connection con) throws Exception {
		ArrayList<UploadDTO> ar = new ArrayList<UploadDTO>();
		String sql = "select * from upload where category=?, num=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, category);
		st.setInt(2, num);
		ResultSet rs = st.executeQuery();
		while(rs.next()) {
			UploadDTO uploadDTO = new UploadDTO();
			
			
		}
		
		
		return ar;
	}
}
