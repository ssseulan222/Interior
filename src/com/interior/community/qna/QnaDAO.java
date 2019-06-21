package com.interior.community.qna;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.interior.community.page.SearchRow;
import com.interior.community.upload.UploadDTO;
import com.interior.community.util.DBConnector;
public class QnaDAO {

	//insert(QnaDTO qnaDTO, Connection con): int
	public int insert(QnaDTO qnaDTO, Connection con) throws Exception {
		int result = 0;
		String sql = "insert into qna values(qna_seq.nextval,?,?,?,sysdate,0,?)";
		PreparedStatement st = con.prepareStatement(sql);
		
		//st.setInt(1, qnaDTO.getNum());
		st.setString(1, qnaDTO.getTitle());
		st.setString(2, qnaDTO.getContents());
		st.setString(3, qnaDTO.getWriter());
		//st.setInt(5, qnaDTO.getHit());
		st.setString(4, qnaDTO.getTag());
		//st.setInt(6, qnaDTO.getRef());
		//st.setInt(7, qnaDTO.getStep());
		//st.setInt(8, qnaDTO.getDepth());
		
		result = st.executeUpdate();
		st.close();
		
		return result;
	}
	
	
	//update(QnaDTO qnaDTO, Connection con): int
	public int update(QnaDTO qnaDTO, Connection con) throws Exception {
		int result = 0;
		String sql = "update qna set title=?, contents=? where num=?";
		PreparedStatement st = con.prepareStatement(sql);
		
		st.setString(1, qnaDTO.getTitle());
		st.setString(2, qnaDTO.getContents());
		st.setInt(3, qnaDTO.getNum());
		
		result = st.executeUpdate();
		st.close();
		
		
		return result;
	}

	
	
	//delete (int num, Connection con) : int
	public int delete(int num, Connection con) throws Exception {
		int result = 0;
		String sql = "delete qna where num=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setInt(1, num);
		result = st.executeUpdate();
		st.close();
		//con.close();
		
		return result;
	}

	
	
	//selectList(SearchRow searchRow, Connection con) : List<QnaDTO>
	public List<QnaDTO> selectList(SearchRow searchRow, Connection con) throws Exception {
		ArrayList<QnaDTO> ar = new ArrayList<QnaDTO>();
		
		/*
		String sql="select * from "
				+ "(select rownum R, N.* from "
				+ "(select num, title, contents, writer, reg_date, hit, tag from notice where "+searchRow.getSearch().getKind()+ " like ? order by num desc) N) "
				+ "where R between ? and ?";		
		*/
		String sql = "select * from "
				+ "(select rownum R, Q.* from "
				+ "(select * from qna where " + searchRow.getSearch().getKind()+ " like ? order by num desc) Q) "
				+ "where R between ? and ?";
		
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, "%"+searchRow.getSearch().getSearch()+"%");
		st.setInt(2, searchRow.getStartRow());
		st.setInt(3, searchRow.getLastRow());
		ResultSet rs = st.executeQuery();
		
		while(rs.next()) {
			QnaDTO qnaDTO = new QnaDTO();
			
			qnaDTO.setNum(rs.getInt("num"));
			qnaDTO.setTitle(rs.getString("title"));
			qnaDTO.setContents(rs.getString("contents"));
			qnaDTO.setWriter(rs.getString("writer"));
			qnaDTO.setReg_date(rs.getDate("reg_date"));
			qnaDTO.setHit(rs.getInt("hit"));
			qnaDTO.setTag(rs.getString("tag"));
			ar.add(qnaDTO);
		}
		rs.close();
		st.close();
		
		
		return ar;
	}
	
	//selectOne(int num. Connection con) : QnaDTO
	public QnaDTO selectOne(int num, Connection con) throws Exception {
		QnaDTO qnaDTO = null;
		String sql = "select * from qna where num=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setInt(1, num);
		ResultSet rs = st.executeQuery();
		
		if(rs.next()) {
			qnaDTO = new QnaDTO();
			
			qnaDTO.setNum(rs.getInt("num"));
			qnaDTO.setTitle(rs.getString("title"));
			qnaDTO.setContents(rs.getString("contents"));
			qnaDTO.setWriter(rs.getString("writer"));
			qnaDTO.setReg_date(rs.getDate("reg_date"));
			qnaDTO.setHit(rs.getInt("hit"));
			qnaDTO.setTag(rs.getString("tag"));
			
			//UploadDTO uploadDTO = new UploadDTO();
			//uploadDTO.setFname(rs.getString("fname"));
			//uploadDTO.setOname(rs.getString("oname"));
			//uploadDTO.setNum(rs.getInt("num"));
			//uploadDTO.setPnum(rs.getInt("pnum"));
			
		}
		rs.close();
		st.close();
		
		return qnaDTO;
	}

	
	//getNum() : int
	public int getNum() throws Exception {
		int result = 0;
		Connection con = DBConnector.getConnect();
		String sql = "select qna_seq.nextval from dual";
		PreparedStatement st = con.prepareStatement(sql);
		ResultSet rs = st.executeQuery();
		rs.next();
		result = rs.getInt(1);
		DBConnector.disConnect(rs, st, con);
		
		
		return result;
	
	}

	
	//getTotalCount(SearchRow searchRow, Connection con) : int
	public int getTotalCount(SearchRow searchRow, Connection con) throws Exception {
		int result = 0;
		String sql = "select count(num) from qna where " + searchRow.getSearch().getKind() + " like ?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, "%"+searchRow.getSearch().getSearch()+"%");
		ResultSet rs = st.executeQuery();
		rs.next();
		result = rs.getInt(1);
		rs.close();
		st.close();
		
		return result;
	}

}
