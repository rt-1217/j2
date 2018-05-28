package com.internousdev.ecsite.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.UserCreateConfirmDAO;
import com.internousdev.ecsite.dto.LoginDTO;
import com.opensymphony.xwork2.ActionSupport;

public class UserUpdateAction extends ActionSupport implements SessionAware {

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
	private LoginDTO loginDTO = new LoginDTO();

	private UserCreateConfirmDAO userCreateConfirmDAO = new UserCreateConfirmDAO();

	public String execute(){
		String result =SUCCESS;

		boolean idCheck = false;

		if(!(loginUserId.length() == 0)&& !(loginPassword.length() == 0)&& !(userName.length()==0)
				&& !(userAddress.length() ==0) && !(tell.length() ==0 )){
			if(loginUserId.equals(checkLoginId) && loginPassword.equals(checkPassword)){

				String defaultLoginId = ((LoginDTO) session.get("loginUser")).getLoginId();
				String defaultPassword = ((LoginDTO) session.get("loginUser")).getLoginPassword();
				session.put("defaultLoginId", defaultLoginId);

				if(defaultLoginId.equals(loginUserId) || defaultPassword.equals(loginPassword)){

					//パスワードを変更する場合
					if(defaultLoginId.equals(loginUserId)){
						idCheck=true;

					}else{
						//IDを変更する場合
						idCheck=userCreateConfirmDAO.getUserInfo(loginUserId, loginPassword);
					}
				}else{
					//パスワードとIDの両方を変更する場合
					idCheck = userCreateConfirmDAO.getUserInfo(loginUserId, loginPassword);
				}

				if(idCheck){
//					System.out.println(loginUserId);
//					System.out.println(defaultLoginId);

					session.put("loginUserId", loginUserId);
					session.put("loginPassword", loginPassword);
					session.put("userName", userName);
					session.put("userAddress", userAddress);
					session.put("sex", sex);
					session.put("tell", tell);

				}else{
					setErrorMessage("同じIDまたはパスワードが存在します。");
					result =ERROR;
				}

			}else{
				setErrorMessage("IDまたはパスワードが違います。");
				result=ERROR;
			}
		}else{
			setErrorMessage("未入力の項目があります。");
			result=ERROR;
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
	public void  setUserAddress(String userAddress){
		this.userAddress=userAddress;
	}
	public String getSex(){
		return sex;
	}
	public void setSex(String sex){
		this.sex=sex;
	}
	public String getTell(){
		return tell;
	}
	public void setTell(String tell){
		this.tell=tell;
	}

	@Override
	public void setSession(Map<String,Object>session){
		this.session=session;
	}

	public String getErrorMessage() {
		return errorMessage;
	}

	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}





}
