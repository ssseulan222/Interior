package com.interior.store;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.interior.page.SearchRow;

public class StoreDAO {

	public int insert(StoreDTO storeDTO, Connection con) throws Exception{
		int res=0;
		String sql="insert into product values(product_seq.nextval,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement st=con.prepareStatement(sql);
		st.setString(1, storeDTO.getName());
		st.setInt(2, storeDTO.getPrice());
		st.setBoolean(3,storeDTO.isSaleCheck());
		st.setInt(4,storeDTO.getSaleRate());
		st.setInt(5,storeDTO.getSalePrice());
		st.setString(6, storeDTO.getCategory());
		st.setInt(7, storeDTO.getStock());
		st.setString(8, storeDTO.getSeller());
		st.setInt(9, storeDTO.getDelivery());
		st.setInt(10, storeDTO.getGrade());
		st.setInt(11, storeDTO.getCount());
		st.setInt(12, storeDTO.getRanking());
		st.setInt(13, storeDTO.getHit());
		st.setInt(14,storeDTO.getScrap());
		
		return res;
	}
	
	public int update(StoreDTO storeDTO,Connection con) throws Exception{
		String sql="update store set name=?,price=?,saleCheck=?,saleRate=?,"
				+ "salPrice=?,category=?,stock=?,seller=?,delivery=? where num=?";
		PreparedStatement st= con.prepareStatement(sql);
		st.setString(1, storeDTO.getName());
		st.setInt(2, storeDTO.getPrice());
		st.setBoolean(3, storeDTO.isSaleCheck());
		st.setInt(4, storeDTO.getSaleRate());
		st.setInt(5, storeDTO.getSalePrice());
		st.setString(6, storeDTO.getCategory());
		st.setInt(7, storeDTO.getStock());
		st.setString(8, storeDTO.getSeller());
		st.setInt(9, storeDTO.getDelivery());
		st.setInt(10, storeDTO.getNum());
		int res=st.executeUpdate();
		return res;
	}
	
	public int delete(int num, Connection con) throws Exception{
		String sql="delete store where num=?";
		PreparedStatement st= con.prepareStatement(sql);
		st.setInt(1, num);
		int res=st.executeUpdate();
		return res;
	}
	
	public List<StoreDTO> selectList(String category, String sort, String seller, SearchRow searchRow, Connection con) throws Exception{
		List<StoreDTO> ar = new ArrayList<StoreDTO>();
		String sql="select * from (select rownum r, c.* from "
				+ "(select * from store where category=?, seller=? order by ? desc) c) "
				+ "where r between ? and ?";
		PreparedStatement st= con.prepareStatement(sql);
		st.setString(1, category);
		st.setString(2, sort);		// 정렬방식
		st.setString(3, seller);	// 일반 회원 -> 모든 판매자
		st.setInt(4, searchRow.getStartRow());
		st.setInt(5, searchRow.getLastRow());
		
		ResultSet rs=st.executeQuery();
		if(rs.next()) {
			StoreDTO storeDTO = new StoreDTO();
			storeDTO.setNum(rs.getInt("num"));
			storeDTO.setName(rs.getString("name"));
			storeDTO.setPrice(rs.getInt("price"));
			storeDTO.setSaleCheck(rs.getBoolean("saleCheck"));
			storeDTO.setSaleRate(rs.getInt("saleRate"));
			storeDTO.setSalePrice(rs.getInt("salePrice"));
			storeDTO.setCategory(rs.getString("category"));
			storeDTO.setStock(rs.getInt("stock"));
			storeDTO.setSeller(rs.getString("seller"));
			storeDTO.setDelivery(rs.getInt("delivery"));
			storeDTO.setGrade(rs.getInt("grade"));
			storeDTO.setCount(rs.getInt("count"));
			storeDTO.setRanking(rs.getInt("ranking"));
			storeDTO.setHit(rs.getInt("hit"));
			storeDTO.setScrap(rs.getInt("scrap"));
			ar.add(storeDTO);
		}
		
		return ar;
	}
	
	public StoreDTO selectOne(int num, Connection con) throws Exception{
		StoreDTO storeDTO = null;
		String sql="select * from product where num=?";
		PreparedStatement st= con.prepareStatement(sql);
		st.setInt(1, num);
		ResultSet rs=st.executeQuery();
		if(rs.next()) {
			storeDTO=new StoreDTO();
			storeDTO.setNum(rs.getInt("num"));
			storeDTO.setName(rs.getString("name"));
			storeDTO.setPrice(rs.getInt("price"));
			storeDTO.setSaleCheck(rs.getBoolean("saleCheck"));
			storeDTO.setSaleRate(rs.getInt("saleRate"));
			storeDTO.setSalePrice(rs.getInt("salePrice"));
			storeDTO.setCategory(rs.getString("category"));
			storeDTO.setStock(rs.getInt("stock"));
			storeDTO.setSeller(rs.getString("seller"));
			storeDTO.setDelivery(rs.getInt("delivery"));
			storeDTO.setGrade(rs.getInt("grade"));
			storeDTO.setCount(rs.getInt("count"));
			storeDTO.setRanking(rs.getInt("ranking"));
			storeDTO.setHit(rs.getInt("hit"));
			storeDTO.setScrap(rs.getInt("scrap"));
			//storeDTO.setUploadDTO;
		}
		return storeDTO;
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
