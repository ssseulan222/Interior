package com.interior.expert;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.interior.page.SearchRow;
import com.interior.util.DBConnector;

public class ExpertDAO {
	
	public int getNum() throws Exception{
		int result = 0;
		
		Connection con = DBConnector.getConnect();
		
		String sql = "select expert_seq.nextval from dual";
		
		PreparedStatement st = con.prepareStatement(sql);
		
		ResultSet rs = st.executeQuery();
		
		rs.next();
		
		result = rs.getInt(1);
		
		rs.close();
		st.close();
		con.close();
		
		return result;
	}
	
	public int getTotalCount(SearchRow searchRow, Connection con) throws Exception{
		int result = 0;
		
		String sql = "select count(num) from expert_main where " + searchRow.getSearch().getKind() + " like ?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, "%"+searchRow.getSearch().getSearch()+"%");
		ResultSet rs = st.executeQuery();
		rs.next();
		result = rs.getInt(1);
		rs.close();
		st.close();
		
		return result;
	}
	
	public List<ExpertDTO> selectList(SearchRow searchRow, Connection con) throws Exception{
		List<ExpertDTO> ar = new ArrayList<ExpertDTO>();
		
		
		
		return ar;
	}
	
}
