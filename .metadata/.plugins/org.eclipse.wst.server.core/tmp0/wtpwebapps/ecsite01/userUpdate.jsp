<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<!-- CSSの読み込み -->
<link rel="stylesheet" type="text/css" href="./css/basis.css">
<link rel="stylesheet" type="text/css" href="./css/style.css">

<title>User Update</title>

</head>
<body>
<div id="header">
<div id="pr">
</div></div>

<div id="main">
<div id="top">
<p>UserUpdate</p>
</div>
<div>
<s:if test="errorMessage !=''">
<s:property value ="errorMessage" escape="false"/>
</s:if>
<table>
<s:form action ="UserUpdateAction">
<tr>
<td>
<label>ログインID:(メールアドレス)</label>
</td>
<td>
<input type="text" name="loginUserId" value="<s:property value="session.loginUser.loginId" />"/>
</td>
</tr>

<tr><td>
<label>確認用：</label>
</td>
<td>
<input type= "text" name="checkLoginId" value="<s:property value="session.loginUser.loginId" />"/>
</td></tr>
<tr>
<td><br>
</td>
</tr>



<tr>
<td>
<label>ログインPASS:</label>
</td><td>
<input type="text" name="loginPassword" value="<s:property value="session.loginUser.loginPassword" />"/>
</td>
</tr>
<tr>
<td>

<label>確認用：</label>
</td>
<td>
<input type="text" name="checkPassword" value="<s:property value="session.loginUser.loginPassword" />"/>
</td></tr>
<tr><td>
<br>
</td> </tr>
<tr><td>


<label>ユーザー名:</label>
</td>
<td>
<input type ="text" name="userName" value="<s:property value="session.loginUser.userName" />"/>
</td>
</tr>

<tr><td>
<label>性別：</label>
</td>
<td>
<s:if test='session.loginUser.userSex == "男"'>
<input type="radio" name="sex" value="男" checked="checked">男
<input type="radio" name="sex" value="女">女
</s:if>
<s:else>
<input type="radio" name="sex" value="男">男
<input type="radio" name="sex" value="女" checked="checked">女
</s:else>
</td>
</tr>
<tr><td>
<br>

</td></tr>
<tr><td>
<label>住所</label>
</td></tr>
<tr><td>
<label>都道府県:</label>
</td>
<td>
<input type="text" name="userAddress"value="<s:property value="session.loginUser.userAddress"/>" />
</td></tr>
<tr><td>
<br>
</td> </tr>
<tr><td>
<label>電話番号：</label>
</td>
<td>
<input type="text" name="tell" value="<s:property value="session.loginUser.userTell"/>" />
</td></tr>
<tr><td>
<br>
</td></tr>
<div>
<s:submit value="登録"/>
</div>
</s:form>



</table>

</div>
<div>
<span>前画面に戻る場合は</span>
<a href='<s:url action="MyPageAction"/>'>こちら</a>


</div>

</div>




<div id="footer">
<div id="pr">
</div></div>











</body>
</html>