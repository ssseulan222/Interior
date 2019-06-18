package com.interior.upload;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.interior.product.ProductDTO;
import com.interior.upload.UploadDTO;
import com.interior.util.DBConnect;

public class UploadDAO {

	public int insert(UploadDTO uploadDTO, Connection con) throws Exception {
		
		
		String sql="insert into upload values(upload_seq.nextval,?,?,?)";
		PreparedStatement st=con.prepareStatement(sql);
		st.setInt(1, uploadDTO.getNum());
		st.setString(2, uploadDTO.getOname());
		st.setString(3, uploadDTO.getFname());
		int res=st.executeUpdate();
		st.close();
		return res;
		
	}
	
	public UploadDTO selectOne(int num,Connection con) throws Exception {
		UploadDTO uploadDTO = null;
		String sql="select * from upload where num=?";
		PreparedStatement st=con.prepareStatement(sql);
		st.setInt(1, num);
		ResultSet rs=st.executeQuery();
		if(rs.next()) {
			uploadDTO=new UploadDTO();
			uploadDTO.setPnum(rs.getInt("pnum"));
			uploadDTO.setNum(rs.getInt("num"));
			uploadDTO.setFname(rs.getString("fname"));
			uploadDTO.setOname(rs.getString("oname"));
		}
		DBConnect.disConnect(rs, st, con);
		return uploadDTO;
	}
	
	public List<UploadDTO> selectList(int num, Connection con) throws Exception{
		ArrayList<UploadDTO> ar = new ArrayList<UploadDTO>();
		String sql = "select * from upload where num=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setInt(1, num);
		ResultSet rs = st.executeQuery();
		while(rs.next()) {
			UploadDTO uploadDTO = new UploadDTO();
			uploadDTO.setPnum(rs.getInt("pnum"));
			uploadDTO.setNum(rs.getInt("num"));
			uploadDTO.setOname(rs.getString("oname"));
			uploadDTO.setFname(rs.getString("fname"));
			ar.add(uploadDTO);
		}
		rs.close();
		st.close();
		return ar;
	}

	public void update() throws Exception {
		
	}
	
	public int delete(int pnum,Connection con) throws Exception {
		int res=0;
		String sql="delete upload where pnum=?";
		PreparedStatement st= con.prepareStatement(sql);
		st.setInt(1, pnum);
		res=st.executeUpdate();
		st.close();
		return res;
	}

}
