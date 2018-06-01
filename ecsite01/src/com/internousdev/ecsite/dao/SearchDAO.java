package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.internousdev.ecsite.dto.SearchDTO;
import com.internousdev.ecsite.util.DBConnector;


public class SearchDAO {

	private DBConnector db =new DBConnector();
	private Connection con =db.getConnection();
	private ArrayList<SearchDTO> searchDTOList = new ArrayList<SearchDTO>();

	/**
	 * すべての商品を表示
	 */

	public ArrayList<SearchDTO> allItemInfo(){
		String sql  ="SELECT * FROM item_info_transaction";
		try{
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while(rs.next()){
				SearchDTO searchDTO =new SearchDTO();
				searchDTO.setId(rs.getInt("id"));
				searchDTO.setItemName(rs.getString("item_name"));
				searchDTO.setItemPrice(rs.getInt("item_price"));
				searchDTO.setItemStock(rs.getInt("item_stock"));
				searchDTO.setItemCategory(rs.getInt("item_category"));
				searchDTO.setImageFilePath(rs.getString("image_file_path"));
				searchDTO.setInsertDate(rs.getDate("insert_date"));
				searchDTO.setUpdateDate(rs.getDate("update_date"));
				searchDTOList.add(searchDTO);

			}
		}catch(SQLException e){
			e.printStackTrace();
		}catch(Exception e){
			e.printStackTrace();
		}
		return searchDTOList;
	}

	/**
	 * カテゴリのみで検索
	 */

	public ArrayList<SearchDTO> ByItemCategory(int itemCategory){
		DBConnector db = new DBConnector();
		Connection con = db.getConnection();
		ArrayList<SearchDTO> searchDTOList = new ArrayList<SearchDTO>();
		String sql = "SELECT*FROM item_info_transaction WHERE item_category=?";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, itemCategory);
			ResultSet rs = ps.executeQuery();

			while(rs.next()){
				SearchDTO searchDTO = new SearchDTO();
				searchDTO.setId(rs.getInt("id"));
				searchDTO.setItemName(rs.getString("item_name"));
				searchDTO.setItemPrice(rs.getInt("item_price"));
				searchDTO.setItemStock(rs.getInt("item_stock"));
				searchDTO.setItemCategory(rs.getInt("item_category"));
				searchDTO.setImageFilePath(rs.getString("image_file_path"));
				searchDTO.setInsertDate(rs.getDate("insert_date"));
				searchDTO.setUpdateDate(rs.getDate("update_date"));
				searchDTOList.add(searchDTO);

			}
		}catch(SQLException e){
			e.printStackTrace();
		}catch(Exception e){
			e.printStackTrace();
		}
		return searchDTOList;
			}

	}



