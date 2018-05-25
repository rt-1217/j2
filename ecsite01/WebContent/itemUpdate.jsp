<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />

<!-- CSSとSCRIPTの読み込み -->
	<link rel="stylesheet" type="text/css" href="./css/basis.css">
	<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>itemUpdate</title>
</head>
<body>
<div id="header">
<div id="pr">
</div></div>
<div id="main">
<div id="top">
<p>Item Update</p>
</div>



<div>
<p>商品の情報</p>
</div>
<table>
<s:form method="post" action="ItemUpdateAction">
<s:iterator value="buyItemDTOList">
<s:property value="itemName"/>

<input type="radio" name="id" value="<s:property value='id'/>"><br>

</s:iterator>

<s:submit  value="選択"/>
</s:form>

</table>


<div>
<p><a href='<s:url action="GoMasterPageAction"/>'>管理者画面に戻る</a></p>
<p><a href='<s:url action="LogoutAction"/>'>ログアウト</a></p>

</div>
</div>
<div id="footer">
<div id="pr">
</div></div>
</body>
</html>