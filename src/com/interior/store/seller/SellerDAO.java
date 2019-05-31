package com.interior.store.seller;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.interior.store.StoreDTO;

public class SellerDAO {
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
	
}
