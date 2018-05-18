package com.internousdev.ecsite.action;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.UserCreateConfirmDAO;
import com.opensymphony.xwork2.ActionSupport;

public class UserCreateConfirmAction extends ActionSupport implements SessionAware {
	private String loginUserId;
	private String checkLoginId;
	private String loginPassword;
	private String checkPassword;
	private String userName;
	private String userAddress;
	private String sex;
	private String tell;
	public Map<String,Object> session;
	private String errorMessage;

	public String execute(){
		String result =SUCCESS;

		if(!(loginUserId.equals(""))
				&& !(loginPassword.equals(""))
				&& !(userName.equals(""))
				&& !(userAddress.equals(""))
				&& !(tell.equals(""))){

			if(loginUserId.equals(checkLoginId) && loginPassword.equals(checkPassword)){

				UserCreateConfirmDAO userCreateConfirmDAO = new UserCreateConfirmDAO();
				boolean checkId = userCreateConfirmDAO.getUserInfo(loginUserId, loginPassword);


				if(checkId){
					session.put("loginUserId",loginUserId);
					session.put("loginPassword",loginPassword);
					session.put("userName",userName);
					session.put("userAddress", userAddress);
					session.put("sex", sex);
					session.put("tell", tell);
				}else{
					setErrorMessage("同じIDまたはパスワードが存在します。");
					result=ERROR;
				}

			}else{
				setErrorMessage("ID又はパスワードが違います。");
				result = ERROR;


			}


		}else{
			setErrorMessage("未入力の項目があります。");
			result =ERROR;
		}
		return result;


	}

	public String getLoginUserId(){
		return loginUserId;
	}
	public void setLoginUserId(String loginUserId){
		this.loginUserId=loginUserId;
	}

	public String getCheckLoginId(){
		return checkLoginId;
	}
	public void setCheckLoginId(String checkLoginId){
		this.checkLoginId=checkLoginId;
	}

	public String getLoginPassword(){
		return loginPassword;
	}
	public void setLoginPassword(String loginPassword){
		this.loginPassword=loginPassword;
	}

	public String getCheckPassword(){
		return checkPassword;
	}
	public void setCheckPassword(String checkPassword){
		this.checkPassword=checkPassword;
	}

	public String getUserName(){
		return userName;
	}
	public void setUserName(String userName){
		this.userName=userName;
	}

	public String getUserAddress(){
		return userAddress;
	}
	public void setUserAddress(String userAddress){
		this.userAddress=userAddress;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getTell() {
		return tell;
	}

	public void setTell(String tell) {
		this.tell = tell;
	}

	public Map<String,Object> getSession(){
		return session;
		}



	@Override
	public void setSession(Map<String,Object>session){
		this.session=session;
	}
	public String getErrorMessage(){
		return errorMessage;
	}
	public void setErrorMessage(String errorMessage){
		this.errorMessage=errorMessage;
	}



}
