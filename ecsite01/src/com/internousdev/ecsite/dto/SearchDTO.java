package com.internousdev.ecsite.dto;
import java.util.Date;

public class SearchDTO {

	private int id;
	private String itemName;
	private int itemPrice;
	private int itemStock;
	private int itemCategory;
	private String imageFilePath;
	private Date insertDate;
	private Date updateDate;

	public int getId(){
		return id;
	}
	public void setId(int id){
		this.id=id;
	}
	public String getItemName(){
		return itemName;
	}
	public void setItemName(String itemName){
		this.itemName=itemName;
	}

	public int getItemPrice(){
		return itemPrice;
	}
	public void setItemPrice(int itemPrice){
		this.itemPrice=itemPrice;
	}

	public int getItemStock(){
		return itemStock;
	}
	public void setItemStock(int itemStock){
		this.itemStock=itemStock;
	}

	public int getItemCategory(){
		return itemCategory;
	}
	public void setItemCategory(int
			itemCategory){
		this.itemCategory=itemCategory;
	}

	public String getImageFilePath(){
		return imageFilePath;
	}
	public void setImageFilePath(String imageFilePath){
		this.imageFilePath=imageFilePath;
	}

	public Date getInsertDate(){
		return insertDate;
	}
	public void setInsertDate(Date insertDate){
		this.insertDate=insertDate;
	}

	public Date getUpdateDate(){
		return updateDate;
	}
	public void setUpdateDate(Date updateDate){
		this.updateDate=updateDate;
	}




}
