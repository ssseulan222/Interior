package com.interior.product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.interior.page.SearchRow;
import com.interior.product.ProductDTO;

public class ProductDAO {

	public int productInsert(ProductDTO productDTO, Connection con) throws Exception{
		String sql="insert into product values(product_seq.nextval,?,?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, productDTO.getName());
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
		st.setString(10, productDTO.getNum());
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
	
	public List<ProductDTO> productSelectList(String category, String sort, String seller, SearchRow searchRow, Connection con) throws Exception{
		List<ProductDTO> ar = new ArrayList<ProductDTO>();
		String sql="select * from (select rownum r, c.* from "
				+ "(select * from product where category=?, seller=? order by ? desc) c) "
				+ "where r between ? and ?";
		PreparedStatement st= con.prepareStatement(sql);
		st.setString(1, category);
		st.setString(2, sort);		// 정렬방식
		st.setString(3, seller);	// 일반 회원 -> 모든 판매자
		st.setInt(4, searchRow.getStartRow());
		st.setInt(5, searchRow.getLastRow());
		
		ResultSet rs=st.executeQuery();
		if(rs.next()) {
			ProductDTO productDTO = new ProductDTO();
			productDTO.setNum(rs.getString("num"));
			productDTO.setName(rs.getString("name"));
			productDTO.setPrice(rs.getString("price"));
			productDTO.setSalePrice(rs.getString("salePrice"));
			productDTO.setCategory(rs.getString("category"));
			productDTO.setSeller(rs.getString("seller"));
			productDTO.setDelivery(rs.getString("delivery"));
			productDTO.setGrade(rs.getInt("grade"));
			productDTO.setCount(rs.getInt("count"));
			productDTO.setRanking(rs.getInt("ranking"));
			productDTO.setHit(rs.getInt("hit"));
			productDTO.setScrap(rs.getInt("scrap"));
			ar.add(productDTO);
		}
		
		return ar;
	}
	
	public ProductDTO productSelectOne(int num, Connection con) throws Exception{
		ProductDTO productDTO = null;
		String sql="select * from product where num=?";
		PreparedStatement st= con.prepareStatement(sql);
		st.setInt(1, num);
		ResultSet rs=st.executeQuery();
		if(rs.next()) {
			productDTO = new ProductDTO();
			productDTO.setNum(rs.getString("num"));
			productDTO.setName(rs.getString("name"));
			productDTO.setPrice(rs.getString("price"));
			productDTO.setSalePrice(rs.getString("salePrice"));
			productDTO.setCategory(rs.getString("category"));
			productDTO.setSeller(rs.getString("seller"));
			productDTO.setDelivery(rs.getString("delivery"));
			productDTO.setGrade(rs.getInt("grade"));
			productDTO.setCount(rs.getInt("count"));
			productDTO.setRanking(rs.getInt("ranking"));
			productDTO.setHit(rs.getInt("hit"));
			productDTO.setScrap(rs.getInt("scrap"));
			//productDTO.setUploadDTO;
		}
		return productDTO;
	}
	
	
	public int getNum(){
		int res=0;
		
		return res;
	}
	
	public int getTotalCount(SearchRow searchRow, Connection con) throws Exception{
		int res=0;
		
		return res;
	}
}
