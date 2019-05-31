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
	
	
	
	public int getNum(){
		int res=0;
		
		return res;
	}
	
	public int getTotalCount(SearchRow searchRow, Connection con) throws Exception{
		int res=0;
		
		return res;
	}


}
