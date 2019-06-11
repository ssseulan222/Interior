package com.interior.seller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.interior.store.StoreDTO;

public class SellerDAO {
	
	public int insert(SellerDTO sellerDTO, Connection con) throws Exception{
		String sql="insert into seller values(?,?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, sellerDTO.getId());
		st.setString(2, sellerDTO.getPw());
		st.setString(3, sellerDTO.getCompanyName());
		st.setString(4, sellerDTO.getCompanyNum());
		st.setString(5, sellerDTO.getHomepage());
		st.setString(6, sellerDTO.getMarketerName());
		st.setString(7, sellerDTO.getPhone());
		st.setString(8, sellerDTO.getEmail());
		st.setString(9, sellerDTO.getBrandName());
		st.setString(10, sellerDTO.getCategory());
		st.setString(11, sellerDTO.getInfo());
		st.setString(12, sellerDTO.getOpenMarket());
		
		int res=st.executeUpdate();
		return res;
	}
	
	public int update(SellerDTO sellerDTO, Connection con) throws Exception{
		String sql="update seller set id=?,pw=?,homepage=?,marketerName=?,phone=?,"
				+ "email=?,brandName=?,category=?,info=?,openMarket=? where companyNum=?";
		
		PreparedStatement st= con.prepareStatement(sql);
		st.setString(1, sellerDTO.getId());
		st.setString(2, sellerDTO.getPw());
		st.setString(3, sellerDTO.getCompanyName());
		st.setString(4, sellerDTO.getCompanyNum());
		st.setString(5, sellerDTO.getHomepage());
		st.setString(6, sellerDTO.getMarketerName());
		st.setString(7, sellerDTO.getPhone());
		st.setString(8, sellerDTO.getEmail());
		st.setString(9, sellerDTO.getBrandName());
		st.setString(10, sellerDTO.getCategory());
		st.setString(11, sellerDTO.getInfo());
		st.setString(12, sellerDTO.getOpenMarket());
		int res=st.executeUpdate();
		
		return res;
	}

	public int delete(String id, Connection con) throws Exception{
		int res=0;
		String sql="delete seller where id=?";
		PreparedStatement st=con.prepareStatement(sql);
		st.setString(1, id);
		
		res=st.executeUpdate();
		return res;
	}
	
	public SellerDTO select(String id, Connection con) throws Exception{
		String sql="select * from seller where id=?";
		PreparedStatement st=con.prepareStatement(sql);
		st.setString(1, id);
		ResultSet rs=st.executeQuery();
		SellerDTO sellerDTO =null;
		if(rs.next()) {
			sellerDTO= new SellerDTO();
			sellerDTO.setId(rs.getString("id"));
			sellerDTO.setPw(rs.getString("pw"));
			sellerDTO.setCompanyName(rs.getString("companyName"));
			sellerDTO.setCompanyNum(rs.getString("companyNum"));
			sellerDTO.setHomepage(rs.getString("hompage"));
			sellerDTO.setMarketerName(rs.getString("marketerName"));
			sellerDTO.setPhone(rs.getString("phone"));
			sellerDTO.setEmail(rs.getString("email"));
			sellerDTO.setBrandName(rs.getString("brandName"));
			sellerDTO.setCategory(rs.getString("category"));
			sellerDTO.setInfo(rs.getString("info"));
			sellerDTO.setOpenMarket(rs.getString("openMarket"));
		}
		return sellerDTO;
	}
	
	
	public SellerDTO login(String id, String pw, Connection con) throws Exception{
		
		String sql="select * from seller where id=? and pw=?";
		PreparedStatement st= con.prepareStatement(sql);
		st.setString(1,id);
		st.setString(2,pw);
		
		ResultSet rs = st.executeQuery();
		SellerDTO sellerDTO=null;
		if(rs.next()) {
			sellerDTO= new SellerDTO();			
			sellerDTO.setId(rs.getString("id"));
			sellerDTO.setPw(rs.getString("pw"));
			sellerDTO.setCompanyName(rs.getString("companyName"));
			sellerDTO.setCompanyNum(rs.getString("companyNum"));
			sellerDTO.setHomepage(rs.getString("homepage"));		
			sellerDTO.setMarketerName(rs.getString("marketerName"));
			sellerDTO.setPhone(rs.getString("phone"));
			sellerDTO.setEmail(rs.getString("email"));
			sellerDTO.setBrandName(rs.getString("brandName"));
			sellerDTO.setCategory(rs.getString("category"));
			sellerDTO.setInfo(rs.getString("info"));
			sellerDTO.setOpenMarket(rs.getString("openMarket"));
		}
		return sellerDTO;	
	}
	
	
}
