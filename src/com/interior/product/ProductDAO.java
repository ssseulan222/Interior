package com.interior.product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.interior.page.SearchRow;
import com.interior.product.ProductDTO;
import com.interior.prosub.ProLiveDTO;

public class ProductDAO {
	

	public int productInsert(ProductDTO productDTO, Connection con) throws Exception{
		String sql="insert into product values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement st = con.prepareStatement(sql);
		st.setInt(1, productDTO.getNum());
		st.setString(2, productDTO.getSeller());
		st.setString(3, productDTO.getName());
		st.setString(4, productDTO.getCategory());
		st.setString(5, productDTO.getPrice());
		st.setString(6, productDTO.getSaleRate());
		st.setString(7, productDTO.getSalePrice());
		st.setString(8, productDTO.getLowestPrice());
		st.setString(9, productDTO.getPoint());
		st.setString(10, productDTO.getDelivery());
		st.setString(11, productDTO.getDeliveryLocal());
		st.setString(12, productDTO.getDeliveryDiff());
		st.setString(13, productDTO.getFreeDeliv());
		st.setString(14, productDTO.getDeliveryFee());
		st.setString(15, productDTO.getReturnFee());
		st.setString(16, productDTO.getExchangeFee());
		st.setString(17, productDTO.getSendPlace());
		
		int res=st.executeUpdate();
		return res;
	}

	public int productUpdate(ProductDTO productDTO,Connection con) throws Exception{
		String sql="update product set name=?,price=?,saleCheck=?,saleRate=?,"
				+ "salPrice=?,category=?,stock=?,seller=?,delivery=? where num=?";
		PreparedStatement st= con.prepareStatement(sql);
		st.setString(1, productDTO.getName());
		st.setString(2, productDTO.getPrice());
		st.setString(4, productDTO.getSaleRate());
		st.setString(5, productDTO.getSalePrice());
		st.setString(6, productDTO.getCategory());
		st.setString(8, productDTO.getSeller());
		st.setString(9, productDTO.getDelivery());
		st.setInt(10, productDTO.getNum());
		int res=st.executeUpdate();
		return res;
	}
	
	public int productDelete(int num, Connection con) throws Exception{
		String sql="delete product where num=?";
		PreparedStatement st= con.prepareStatement(sql);
		st.setInt(1, num);
		int res=st.executeUpdate();
		return res;
	}
	
	public List<ProductDTO> productList(String category, String sort, String seller, SearchRow searchRow, Connection con) throws Exception{
		List<ProductDTO> ar = new ArrayList<ProductDTO>();
		String sql="select * from (select rownum r, c.* from "
				+ "(select * from product where category=?, seller=? order by ? desc) c) "
				+ "where r between ? and ?";
		PreparedStatement st= con.prepareStatement(sql);
		st.setString(1, category);
		st.setString(2, seller);
		st.setString(3, sort);
		st.setInt(4, searchRow.getStartRow());
		st.setInt(5, searchRow.getLastRow());
		
		ResultSet rs=st.executeQuery();
		if(rs.next()) {
			ProductDTO productDTO = new ProductDTO();
			productDTO.setNum(rs.getInt("num"));
			productDTO.setName(rs.getString("name"));
			productDTO.setPrice(rs.getString("price"));
			productDTO.setSalePrice(rs.getString("salePrice"));
			productDTO.setCategory(rs.getString("category"));
			productDTO.setSeller(rs.getString("seller"));
			productDTO.setDelivery(rs.getString("delivery"));
			
			ar.add(productDTO);
		}
		
		return ar;
	}
	
	public ProductDTO productSelectOne(int num, Connection con) throws Exception{
		ProductDTO productDTO = null;
		ProLiveDTO proLiveDTO = null;
		String sql="select * from product where num=?";
		PreparedStatement st= con.prepareStatement(sql);
		st.setInt(1, num);
		ResultSet rs=st.executeQuery();
		if(rs.next()) {
			productDTO = new ProductDTO();
			proLiveDTO = new ProLiveDTO();
			productDTO.setNum(rs.getInt("num"));
			productDTO.setName(rs.getString("name"));
			productDTO.setPrice(rs.getString("price"));
			productDTO.setSalePrice(rs.getString("salePrice"));
			productDTO.setCategory(rs.getString("category"));
			productDTO.setSeller(rs.getString("seller"));
			productDTO.setDelivery(rs.getString("delivery"));
			proLiveDTO.setNum(rs.getInt("num"));
			proLiveDTO.setHit(rs.getInt("hit"));
			proLiveDTO.setScrap(rs.getInt("scrap"));
			proLiveDTO.setShared(rs.getInt("shared"));
			proLiveDTO.setStock(rs.getInt("stock"));
			
			//productDTO.setUploadDTO;
		}
		return productDTO;
	}
	
	
	public int getNum(Connection con) throws SQLException{
		int result=0;
		String sql ="select product_seq.nextval from dual";
		PreparedStatement st =con.prepareStatement(sql);
		ResultSet rs = st.executeQuery();
	
		if(rs.next()) {
			result=rs.getInt(1);
		}
	
		rs.close();
		st.close();
		return result;
	}
	
	public int getTotalCount(SearchRow searchRow, Connection con) throws Exception{
		int res=0;
		
		return res;
	}
}
