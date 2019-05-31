package com.interior.store;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

import com.interior.page.SearchRow;

public class StoreDAO {
	
	public List<StoreDTO> selectList(SearchRow searchRow, Connection con) throws Exception{
		List<StoreDTO> ar =null;
		
		return ar;
	}
	
	public StoreDTO selectOne(int num, Connection con) throws Exception{
		StoreDTO storeDTO = null;
		
		return storeDTO;
	}
	
	public int insert(StoreDTO storeDTO, Connection con) throws Exception{
		int res=0;
		String sql="insert into product values(product_seq.nextval,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement st=con.prepareStatement(sql);
		st.setString(1, storeDTO.getName());
		st.setInt(2, storeDTO.getPrice());
		st.setBoolean(3,storeDTO.isSaleCheck());
		st.setInt(4,storeDTO.getSaleRate());
		st.setInt(5,storeDTO.getSalePrice());
		st.setString(6, storeDTO.getCategory());
		st.setString(7, storeDTO.getSeller());
		st.setInt(8, storeDTO.getDelivery());
		st.setInt(9, storeDTO.getGrade());
		st.setInt(10, storeDTO.getCount());
		st.setInt(11, storeDTO.getRanking());
		st.setInt(12, storeDTO.getHit());
		st.setInt(13,storeDTO.getScrap());
		
		return res;
	}
	
	public int update(StoreDTO storeDTO, Connection con) throws Exception{
		int res=0;
		
		return res;
	}

	public int delete(int num, Connection con) throws Exception{
		int res=0;
		
		return res;
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
