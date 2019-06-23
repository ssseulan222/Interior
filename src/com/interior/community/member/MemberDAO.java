package com.interior.community.member;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.interior.community.util.DBConnector;


public class MemberDAO {
	 private static MemberDAO instance;
	    // 싱글톤 패턴
	    public static MemberDAO getInstance(){
	        if(instance==null)
	            instance=new MemberDAO();
	        return instance;
	    }
	
	//memberLogin
	public int memberLogin(String email, String pw, Connection con)throws Exception{
		String sql="select pw from member where email=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, email);
		ResultSet rs = st.executeQuery();
		int result =0;
		if(rs.next()) {
			if(rs.getString(1).equals(pw)) {
				//이메일과 패스워드일치
				result=1;
				
			}else {
				//이메일과 패스워드 불일치
				result=0;
			}
		}else {
			//해당 아이디없음
			result = -1;
		}
		return result;
	}
	public MemberDTO memberLoginData(MemberDTO memberDTO, Connection con, String email)throws Exception{
		MemberDTO m = null;
		String sql = "select * from member where email=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, email);
		ResultSet rs = st.executeQuery();
		if(rs.next()) {
			m = new MemberDTO();
			m.setEmail(rs.getString("email"));
			m.setPw(rs.getString("pw"));
			m.setNickname(rs.getString("nickname"));
			m.setAge(rs.getInt("age"));
			m.setPoint(rs.getInt("point"));
			m.setCoupon(rs.getInt("coupon"));
			m.setGrade(rs.getInt("grade"));
			m.setReg_date(rs.getDate("reg_date"));
			m.setGender(rs.getString("gender"));
			m.setHomepage(rs.getString("homepage"));
			m.setContents(rs.getString("contents"));
		}
		
		return m;
	}
	
	
	//email 확인
	public int emailCheck(String email, Connection con)throws Exception{
		String sql ="select email from member where email=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, email);
		ResultSet rs = st.executeQuery();
		int result =0;
		if(rs.next()) {
			result=1;
		}
		rs.close();
		st.close();
		return result;
	}
	
	
	
	
	
	//nickname 확인
	public int nicknameCheck(String nickname, Connection con)throws Exception{
		String sql ="select nickname from member where nickname=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, nickname);
		ResultSet rs = st.executeQuery();
		 int result =0; //해당아이디 없음
		if(rs.next()) {		
			 result=1; //해당아이디 있음
		}
		rs.close();
		st.close();
		return result;
	}
	
	//회원탈퇴
	public int delete(String nickname, Connection con)throws Exception{
		int result =0;
		String sql = "delete member where nickname = ?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, nickname);
		result = st.executeUpdate();
		st.close();
		return result;
	}
	
	
	//회원 마이페이지
	
	//회원수정
	public int update(MemberDTO memberDTO, Connection con)throws Exception{
		int result =0;
		String sql = "update member set homepage=?, gender=?, reg_date=?, contents=? where nickname=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, memberDTO.getHomepage());
		st.setString(2, memberDTO.getGender());
		st.setDate(3, memberDTO.getReg_date());
		st.setString(4, memberDTO.getContents());
		st.setString(5, memberDTO.getNickname());
		result = st.executeUpdate();
		st.close();
		return result;
	}
	
	//비밀번호 수정
	public MemberDTO update_pw(String nickname, Connection con)throws Exception{
		MemberDTO memberDTO =null;
		String sql = "update member set pw=? where nickname=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, memberDTO.getPw());
		st.setString(2, memberDTO.getNickname());
		st.close();
		return memberDTO;
		
	}
	
	public int memberDelete(String email, Connection con) throws Exception{
		int result=0;
		String sql="delete member where email=?";
		PreparedStatement st=con.prepareStatement(sql);
		st.setString(1, email);
		
		result=st.executeUpdate();
		return result;
	}
	
	
	
	//회원가입
	public int insert(MemberDTO memberDTO, Connection con)throws Exception{
		int result=0;
		String sql ="insert into member (num, email, pw, nickname, point, coupon, reg_date) values(num_seq.nextval, ?, ?, ?,0,0,sysdate)";
		PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, memberDTO.getEmail());
			st.setString(2, memberDTO.getPw());
			st.setString(3, memberDTO.getNickname());
		result = st.executeUpdate();
		System.out.println("dd");
		st.close();
		return result;
	}
	
	
}
