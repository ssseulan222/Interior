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
		
		String sql = "select * from "
				+ "(select rownum R, Q.* from "
				+ "(select * from expert where " + searchRow.getSearch().getKind()+" like ? order by num desc) Q) "
				+ "where R between ? and ?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, "%"+searchRow.getSearch()+"%");
		st.setInt(2, searchRow.getStartRow());
		st.setInt(3, searchRow.getLastRow());
		
		ResultSet rs = st.executeQuery();
		
		while(rs.next()) {
			ExpertDTO expertDTO = new ExpertDTO();
			expertDTO.setNum(rs.getInt("num"));
			expertDTO.setName(rs.getString("name"));
			expertDTO.setInfo(rs.getString("info"));
		}
		
		rs.close();
		st.close();
		
		return ar;
	}
	
	public ExpertDTO selectOne(int num, Connection con) throws Exception{
		ExpertDTO expertDTO = null;
		
		String sql = "select * from expert where num=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setInt(1, num);
		ResultSet rs = st.executeQuery();
		
		if(rs.next()) {
			expertDTO = new ExpertDTO();
			expertDTO.setNum(rs.getInt("num"));
			expertDTO.setName(rs.getString("name"));
			expertDTO.setConfirm(rs.getInt("confirm"));
			expertDTO.setPro(rs.getString("pro"));
			expertDTO.setLocation(rs.getString("location"));
			expertDTO.setAddress(rs.getString("address"));
			expertDTO.setCareer(rs.getInt("career"));
			expertDTO.setA_s(rs.getInt("a_s"));
			expertDTO.setTag(rs.getString("tag"));
			expertDTO.setInfo(rs.getString("info"));
		}
		
		rs.close();
		st.close();
		
		return expertDTO;
	}
	
	public int insert(ExpertDTO expertDTO, Connection con) throws Exception{
		int result = 0;
		
		String sql = "insert into expert values (exqert_seq.nextval, ?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, expertDTO.getName());
		st.setString(2, expertDTO.getContract());
		st.setString(3, expertDTO.getPro());
		st.setString(4, expertDTO.getSpace_type());
		st.setInt(5, expertDTO.getA_s());
		st.setInt(6, expertDTO.getCareer());
		st.setInt(7, expertDTO.getPay());
		st.setInt(8, expertDTO.getDeposit());
		st.setString(9, expertDTO.getTag());
		st.setString(10, expertDTO.getLocation());
		st.setString(11, expertDTO.getPresent());
		st.setString(12, expertDTO.getHomepage());
		st.setString(13, expertDTO.getEmail());
		st.setString(14, expertDTO.getPassword());
		st.setString(15, expertDTO.getPhone());
		st.setString(16, expertDTO.getR_name());
		st.setString(17, expertDTO.getR_phone());
		st.setString(18, expertDTO.getAddress());
		st.setString(19, expertDTO.getR_check());
		st.setString(20, expertDTO.getRoute());
		st.setInt(21, expertDTO.getC_check());
		
		result = st.executeUpdate();
		
		st.close();
		
		return result;
	}
	
	public int update(ExpertDTO expertDTO, Connection con) throws Exception{
		int result = 0;
		
		return result;
	}
	
	public int delete(int num, Connection con) throws Exception{
		int result = 0;
		
		return result;
	}
	
}
