package com.interior.store;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import com.interior.page.SearchRow;

public class StoreDAO {
	
	public List<StoreDTO> selectList(SearchRow searchRow, Connection con) throws Exception{
		List<StoreDTO> ar =null;
		
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
