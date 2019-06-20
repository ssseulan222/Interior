package com.interior.community.homeparty;

import java.sql.Connection;
import java.sql.PreparedStatement;


public class HomepartyDAO {
	public int insert(HomepartyDTO homepartyDTO, Connection con)throws Exception{
		int result=0;
		String sql ="insert into homeparty (num, title, place, floor, work, workexpert, field, family, "
				+ "style,term,money,color,wallcolor,floorcolor,detail,location,copywrite) " + 
				"values(homeparty_seq.nextval,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, homepartyDTO.getTitle());
		st.setString(2, homepartyDTO.getPlace());
		st.setString(3, homepartyDTO.getFloor());
		st.setString(4, homepartyDTO.getWork());
		st.setString(5, homepartyDTO.getWorkexpert());
		st.setString(6, homepartyDTO.getField());
		st.setString(7, homepartyDTO.getFamily());
		st.setString(8, homepartyDTO.getStyle());
		st.setString(9, homepartyDTO.getTerm());
		st.setInt(10, homepartyDTO.getMoney());
		st.setString(11, homepartyDTO.getColor());
		st.setString(12, homepartyDTO.getWallcolor());
		st.setString(13, homepartyDTO.getFloorcolor());
		st.setString(14, homepartyDTO.getDetail());
		st.setString(15, homepartyDTO.getLocation());
		st.setString(16, homepartyDTO.getCopywrite());
		result = st.executeUpdate();
		st.close();
		return result;
	}
}
