package com.interior.product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sound.sampled.Port;

import com.interior.page.Search;
import com.interior.page.SearchRow;
import com.interior.product.ProductDTO;
import com.interior.prosub.ProLiveDTO;
import com.interior.upload.UploadDTO;

public class ProductDAO {

	public int productUpdate(ProductDTO productDTO, Connection con) throws Exception {
		String sql = "update product set name=?,price=?,saleCheck=?,saleRate=?,"
				+ "salPrice=?,category=?,stock=?,seller=?,delivery=? where num=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, productDTO.getName());
		st.setString(2, productDTO.getPrice());
		st.setString(4, productDTO.getSaleRate());
		st.setString(5, productDTO.getSalePrice());
		st.setString(6, productDTO.getCategory());
		st.setString(8, productDTO.getSeller());
		st.setString(9, productDTO.getDelivery());
		st.setInt(10, productDTO.getNum());
		int res = st.executeUpdate();
		return res;
	}

	public int productDelete(int num, Connection con) throws Exception {
		String sql = "delete product where num=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setInt(1, num);
		int res = st.executeUpdate();
		return res;
	}

	public List<ProductDTO> productList(String category, String sort, String seller, SearchRow searchRow,
			Connection con) throws Exception {
		List<ProductDTO> ar = new ArrayList<ProductDTO>();
		String sql = "select * from " + "(select rownum r, c.* from "
				+ "(select * from product where seller=?, category=?"
				+ "order by ? desc) c) where r between ? and ?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, seller);
		st.setString(2, category);
		st.setString(3, sort);
		st.setInt(4, searchRow.getStartRow());
		st.setInt(5, searchRow.getLastRow());

		ResultSet rs = st.executeQuery();
		while (rs.next()) {
			ProductDTO productDTO = new ProductDTO();
			UploadDTO uploadDTO = new UploadDTO();
			productDTO.setNum(rs.getInt("num"));
			productDTO.setName(rs.getString("name"));
			productDTO.setPrice(rs.getString("price"));
			productDTO.setSalePrice(rs.getString("salePrice"));
			productDTO.setCategory(rs.getString("category"));
			productDTO.setSeller(rs.getString("seller"));
			productDTO.setDelivery(rs.getString("delivery"));
			uploadDTO.setPnum(rs.getInt("pnum"));
			uploadDTO.setNum(rs.getInt("num"));
			uploadDTO.setFname(rs.getString("fname"));
			uploadDTO.setOname(rs.getString("oname"));
			productDTO.setUploadDTO(uploadDTO);
			ar.add(productDTO);
		}

		return ar;
	}

	public int getTotalCount(SearchRow searchRow, Connection con) throws Exception {
		int res = 0;

		return res;
	}

	/* ------------ 끝 ----------------------- */

	/* 상품 상세보기 : productSelect */
	public ProductDTO productSelectOne(int num, Connection con) throws Exception {

		String sql = "select * from product join upload using(num) where num=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setInt(1, num);
		ResultSet rs = st.executeQuery();
		ProductDTO productDTO = null;
		if (rs.next()) {
			productDTO = new ProductDTO();
			UploadDTO uploadDTO = new UploadDTO();
			productDTO.setNum(rs.getInt("num"));
			productDTO.setSeller(rs.getString("seller"));
			productDTO.setBrandName(rs.getString("brandName"));
			productDTO.setName(rs.getString("name"));
			productDTO.setCategory(rs.getString("category"));
			productDTO.setPrice(rs.getString("price"));
			productDTO.setSaleRate(rs.getString("saleRate"));
			productDTO.setSalePrice(rs.getString("salePrice"));
			productDTO.setPoint(rs.getString("point"));
			productDTO.setDelivery(rs.getString("delivery"));
			productDTO.setDeliveryFee(rs.getString("deliveryFee"));
			productDTO.setDeliveryDiff(rs.getString("deliveryDiff"));
			productDTO.setDeliveryLocal(rs.getString("deliveryLocal"));
			uploadDTO.setPnum(rs.getInt("pnum"));
			uploadDTO.setNum(rs.getInt("num"));
			uploadDTO.setFname(rs.getString("fname"));
			uploadDTO.setOname(rs.getString("oname"));
			productDTO.setUploadDTO(uploadDTO);
		}
		return productDTO;
	}

	public List<ProductDTO> productCatList(String sort2, SearchRow searchRow, Connection con)
			throws Exception {
		System.out.println("기준 : "+sort2);
		List<ProductDTO> ar = new ArrayList<ProductDTO>();
		String sql ="select * from (select rownum r, c.* from "
				+ "(select * from product join upload using(num) where category=?) c "
				+ "order by r desc) where rownum between ? and ? order by r desc";
		PreparedStatement st = con.prepareStatement(sql);
	
		st.setString(1, sort2);
		st.setInt(2, searchRow.getStartRow());
		st.setInt(3, searchRow.getLastRow());
		/*
		 * st.setString(4, search.getSort()); System.out.println("dao list : "
		 * +search.getSort());
		 */

		ResultSet rs = st.executeQuery();
		while (rs.next()) {
			ProductDTO productDTO = new ProductDTO();
			UploadDTO uploadDTO = new UploadDTO();
			productDTO.setNum(rs.getInt("num"));
			productDTO.setSeller(rs.getString("seller"));
			productDTO.setBrandName(rs.getString("brandName"));
			productDTO.setInfo(rs.getString("info"));

			productDTO.setName(rs.getString("name"));
			productDTO.setCategory(rs.getString("category"));
			productDTO.setPrice(rs.getString("price"));
			productDTO.setSaleRate(rs.getString("saleRate"));
			productDTO.setSalePrice(rs.getString("salePrice"));
			productDTO.setPoint(rs.getString("point"));
			productDTO.setDelivery(rs.getString("delivery"));
			productDTO.setDeliveryLocal(rs.getString("deliveryLocal"));
			productDTO.setDeliveryDiff(rs.getString("deliveryDiff"));
			productDTO.setDeliveryFee(rs.getString("deliveryFee"));
			productDTO.setReturnFee(rs.getString("returnFee"));
			productDTO.setExchangeFee(rs.getString("exchangeFee"));
			productDTO.setSendPlace(rs.getString("sendPlace"));

			uploadDTO.setPnum(rs.getInt("pnum"));
			uploadDTO.setNum(rs.getInt("num"));
			uploadDTO.setFname(rs.getString("fname"));
			uploadDTO.setOname(rs.getString("oname"));
			productDTO.setUploadDTO(uploadDTO);

			ar.add(productDTO);
		}

		return ar;
	}
	
	/* storeCategory, sellerMain */
	public List<ProductDTO> productSellerList(String sort2, SearchRow searchRow, Connection con)
			throws Exception {
		System.out.println("기준 : "+sort2);
		List<ProductDTO> ar = new ArrayList<ProductDTO>();
		String sql ="select * from (select rownum r, c.* from "
				+ "(select * from product join upload using(num) where seller=?) c "
				+ "order by r desc) where rownum between ? and ? order by r desc";
		PreparedStatement st = con.prepareStatement(sql);
	
		st.setString(1, sort2);
		st.setInt(2, searchRow.getStartRow());
		st.setInt(3, searchRow.getLastRow());
		/*
		 * st.setString(4, search.getSort()); System.out.println("dao list : "
		 * +search.getSort());
		 */

		ResultSet rs = st.executeQuery();
		while (rs.next()) {
			ProductDTO productDTO = new ProductDTO();
			UploadDTO uploadDTO = new UploadDTO();
			productDTO.setNum(rs.getInt("num"));
			productDTO.setSeller(rs.getString("seller"));
			productDTO.setBrandName(rs.getString("brandName"));
			productDTO.setInfo(rs.getString("info"));

			productDTO.setName(rs.getString("name"));
			productDTO.setCategory(rs.getString("category"));
			productDTO.setPrice(rs.getString("price"));
			productDTO.setSaleRate(rs.getString("saleRate"));
			productDTO.setSalePrice(rs.getString("salePrice"));
			productDTO.setPoint(rs.getString("point"));
			productDTO.setDelivery(rs.getString("delivery"));
			productDTO.setDeliveryLocal(rs.getString("deliveryLocal"));
			productDTO.setDeliveryDiff(rs.getString("deliveryDiff"));
			productDTO.setDeliveryFee(rs.getString("deliveryFee"));
			productDTO.setReturnFee(rs.getString("returnFee"));
			productDTO.setExchangeFee(rs.getString("exchangeFee"));
			productDTO.setSendPlace(rs.getString("sendPlace"));

			uploadDTO.setPnum(rs.getInt("pnum"));
			uploadDTO.setNum(rs.getInt("num"));
			uploadDTO.setFname(rs.getString("fname"));
			uploadDTO.setOname(rs.getString("oname"));
			productDTO.setUploadDTO(uploadDTO);

			ar.add(productDTO);
		}

		return ar;
	}

	/* 카테고리,판매자 상관없이 모든 상품들 : storeMain */
	/* SearchRow searchRow, */
	public List<ProductDTO> productAllList(SearchRow searchRow, Connection con) throws Exception {
		List<ProductDTO> ar = new ArrayList<ProductDTO>();
		String sql = "select * from (select rownum r, c.* from "
				+ "(select * from product join upload using(num)) c "
				+ "order by r desc) where rownum between ? and ? order by r desc";
		PreparedStatement st = con.prepareStatement(sql);

		st.setInt(1, searchRow.getStartRow());
		st.setInt(2, searchRow.getLastRow());

		ResultSet rs = st.executeQuery();
		while (rs.next()) {
			ProductDTO productDTO = new ProductDTO();
			UploadDTO uploadDTO = new UploadDTO();
			productDTO.setNum(rs.getInt("num"));
			productDTO.setBrandName(rs.getString("brandName"));
			productDTO.setName(rs.getString("name"));
			productDTO.setPrice(rs.getString("price"));
			productDTO.setSaleRate(rs.getString("saleRate"));
			productDTO.setSalePrice(rs.getString("salePrice"));
			productDTO.setCategory(rs.getString("category"));
			productDTO.setSeller(rs.getString("seller"));
			productDTO.setDeliveryFee(rs.getString("deliveryFee"));
			uploadDTO.setPnum(rs.getInt("pnum"));
			uploadDTO.setNum(rs.getInt("num"));
			uploadDTO.setFname(rs.getString("fname"));
			uploadDTO.setOname(rs.getString("oname"));
			productDTO.setInfo(rs.getString("info"));
			productDTO.setUploadDTO(uploadDTO);

			ar.add(productDTO);
		}

		return ar;
	}

	/* 상품등록 */
	public int productInsert(ProductDTO productDTO, Connection con) throws Exception {
		String sql = "insert into product values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement st = con.prepareStatement(sql);
		st.setInt(1, productDTO.getNum());
		st.setString(2, productDTO.getSeller());
		st.setString(3, productDTO.getBrandName());
		st.setString(4, productDTO.getName());
		st.setString(5, productDTO.getCategory());
		st.setString(6, productDTO.getPrice());
		st.setString(7, productDTO.getSaleRate());
		st.setString(8, productDTO.getSalePrice());
		st.setString(9, productDTO.getPoint());
		st.setString(10, productDTO.getDelivery());
		st.setString(11, productDTO.getDeliveryLocal());
		st.setString(12, productDTO.getDeliveryDiff());
		st.setString(13, productDTO.getDeliveryFee());
		st.setString(14, productDTO.getReturnFee());
		st.setString(15, productDTO.getExchangeFee());
		st.setString(16, productDTO.getSendPlace());
		st.setString(17, productDTO.getInfo());

		int res = st.executeUpdate();
		return res;
	}

	/* 사진 파일의 num을 받기 위해 시퀀의 nextval 받아서 productDTO의 num이랑 uploadDTO의 num에 사용 */
	public int getNum(Connection con) throws SQLException {
		int result = 0;
		String sql = "select product_seq.nextval from dual";
		PreparedStatement st = con.prepareStatement(sql);
		ResultSet rs = st.executeQuery();

		if (rs.next()) {
			result = rs.getInt(1);
		}

		rs.close();
		st.close();
		return result;
	}

}
