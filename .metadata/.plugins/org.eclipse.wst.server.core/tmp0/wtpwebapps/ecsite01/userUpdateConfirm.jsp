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
<link rel="stylesheet" type="text/css" href="./css/table.css">

<title>UserUpdateConfirm</title>
</head>
<body>
<s:include value="header.jsp"/>

<div id="main">
<div id="top">
<p>User Update Confirm</p>
</div>
<div>
<h3>変更する内容は以下でよろしいですか？</h3>
<table>
<s:form action="UserUpdateCompleteAction">

ログインID：
<s:property value="loginUserId" escape="false"/><br>

ログインPASS：
<s:property value="loginPassword" escape="false"/><br>

ユーザー名：
<s:property value="userName" escape="false"/><br>

性別：
<s:property value="sex" escape="false"/><br>

住所：
<s:property value="userAddress" escape="false"/><br>

電話番号：
<s:property value="tell" escape="false"/><br>

<s:submit value="完了"/>
</s:form>
</table>
</div>
</div>


<s:include value="footer.jsp"/>
</body>
</html>