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

<!-- CSSの読み込み -->
	<link rel="stylesheet" type="text/css" href="./css/basis.css">
<link rel="stylesheet" type="text/css" href="./css/table.css">


<title>itemDeleteConfirm画面</title>
</head>
<body>
<s:include value="header.jsp"/>
<div id="main">
<div id="top">
<p>Item Delete Confirm</p>
</div>

<div>

<p>下記の商品を削除しますか？</p>
<s:form action="ItemDeleteConfirmAction">
<s:iterator value="itemDeleteList">

商品名：
<s:property value="itemName"/> <br>


</s:iterator>
<s:submit value="削除"/>



</s:form>

<div>
<a href='<s:url action="GoItemDeleteAction"/>'>戻る</a></div>
<div>
<a href='<s:url action="HomeAction"/>'>管理者画面へ</a></div>

</div>
</div>
<s:include value="footer.jsp"/>
</body>
</html>