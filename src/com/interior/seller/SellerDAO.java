package com.interior.seller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.interior.store.StoreDTO;

public class SellerDAO {
	
	public int insert(SellerDTO sellerDTO, Connection con) throws Exception{
		String sql="insert into seller values(?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, sellerDTO.getCompanyName());
		st.setString(2, sellerDTO.getCompanyNum());
		st.setString(3, sellerDTO.getHomepage());
		st.setString(4, sellerDTO.getMarketerName());
		st.setString(5, sellerDTO.getPhone());
		st.setString(6, sellerDTO.getEmail());
		st.setString(7, sellerDTO.getBrandName());
		st.setString(8, sellerDTO.getCategory());
		st.setString(9, sellerDTO.getInfo());
		st.setString(10, sellerDTO.getOpenMarket());
		
		int res=st.executeUpdate();
		return res;
	}
	
	public int update(SellerDTO sellerDTO, Connection con) throws Exception{
		String sql="update seller set homepage=?,marketerName=?,phone=?,"
				+ "email=?,brandName=?,category=?,info=?,openMarket=? where companyNum=?";
		
		PreparedStatement st= con.prepareStatement(sql);
		st.setString(1, sellerDTO.getHomepage());
		st.setString(2, sellerDTO.getMarketerName());
		st.setString(3, sellerDTO.getPhone());
		st.setString(4, sellerDTO.getEmail());
		st.setString(5, sellerDTO.getBrandName());
		st.setString(6, sellerDTO.getCategory());
		st.setString(7, sellerDTO.getInfo());
		st.setString(8, sellerDTO.getOpenMarket());
		st.setString(9, sellerDTO.getCompanyNum());
		
		int res=st.executeUpdate();
		
		return res;
	}

	public int delete(int num, Connection con) throws Exception{
		int res=0;
		String sql="delete seller where num=?";
		PreparedStatement st=con.prepareStatement(sql);
		st.setInt(1, num);
		res=st.executeUpdate();
		return res;
	}
	
	public SellerDTO select(int num, Connection con) throws Exception{
		String sql="select * from seller where num=?";
		PreparedStatement st=con.prepareStatement(sql);
		st.setInt(1, num);
		ResultSet rs=st.executeQuery();
		SellerDTO sellerDTO =null;
		if(rs.next()) {
			sellerDTO= new SellerDTO();
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
	
}
