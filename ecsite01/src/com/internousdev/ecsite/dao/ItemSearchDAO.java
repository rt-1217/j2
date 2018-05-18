package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.internousdev.ecsite.dto.BuyItemDTO;
import com.internousdev.ecsite.util.DBConnector;



public class ItemSearchDAO {
	private DBConnector dbConnector  =new DBConnector();
	private Connection connection = dbConnector.getConnection();
	private List<BuyItemDTO> seachList = new ArrayList<BuyItemDTO>();

	public List<BuyItemDTO> getItemInfo(String seachWord){
		String sql = "SELECT * FROM item_info_transaction";

		try{
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			ResultSet resultSet = preparedStatement.executeQuery();

			while(resultSet.next()){
				String itemName=resultSet.getString("item_name");
				String itemPrice=resultSet.getString("item_price");

				if(itemName.matches(".*" + seachWord + ".*") || itemPrice.matches(".*" + seachWord + ".*" )){
					BuyItemDTO dto = new BuyItemDTO();
					dto.setId(resultSet.getInt("id"));
					dto.setItemName(itemName);
					dto.setItemPrice(itemPrice);
					dto.setItem_stock(resultSet.getInt("item_stock"));
					seachList.add(dto);

				}
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return seachList;
	}
	public List<BuyItemDTO> getBuyItemDTO(){
		return seachList;
	}



}