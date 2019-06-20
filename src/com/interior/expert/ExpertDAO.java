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
			expertDTO.setCareer(rs.getString("career"));
			expertDTO.setA_s(rs.getString("a_s"));
			expertDTO.setTag(rs.getString("tag"));
			expertDTO.setInfo(rs.getString("info"));
		}
		
		rs.close();
		st.close();
		
		return expertDTO;
	}
	
	public int insert(ExpertDTO expertDTO, Connection con) throws Exception{
		int result = 0;
		
		String sql = "insert into expert values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,null, null)";
		
		PreparedStatement st = con.prepareStatement(sql);
		st.setInt(1, expertDTO.getNum());
		st.setString(2, expertDTO.getName());
		st.setString(3, expertDTO.getContract());
		st.setString(4, expertDTO.getPro());
		st.setString(5, expertDTO.getSpace_type());
		st.setString(6, expertDTO.getA_s());
		st.setString(7, expertDTO.getCareer());
		st.setString(8, expertDTO.getPay());
		st.setString(9, expertDTO.getDeposit());
		st.setString(10, expertDTO.getTag());
		st.setString(11, expertDTO.getLocation());
		st.setString(12, expertDTO.getPresent());
		st.setString(13, expertDTO.getHomepage());
		st.setString(14, expertDTO.getEmail());
		st.setString(15, expertDTO.getPassword());
		st.setString(16, expertDTO.getPhone());
		st.setString(17, expertDTO.getR_name());
		st.setString(18, expertDTO.getR_phone());
		st.setString(19, expertDTO.getAddress());
		st.setString(20, expertDTO.getR_check());
		st.setString(21, expertDTO.getRoute());
		st.setInt(22, expertDTO.getC_check());
		
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
	
	public int idCheck(String email, Connection con)throws Exception{
		String sql ="select id from expert where email=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, email);
		ResultSet rs = st.executeQuery();
		int check=1;
		if(rs.next()) {
			check=0;
		}
		rs.close();
		st.close();
		return check;
	}
	
	public ExpertDTO expertLogin(String id, String pw, Connection con)throws Exception{
		ExpertDTO expertDTO = null;
		
		String sql = "select * from expert where email=? and password=?";
		
		return expertDTO;
	}
	
}
