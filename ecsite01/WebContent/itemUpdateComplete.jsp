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
	<link rel="stylesheet" type="text/css" href="./css/table.css">
<title>ItemUpdateComplete</title>
</head>
<body>
<s:include value="header.jsp"/>
<div id="main">
<div id="top">
<p>更新完了画面</p>
</div>
<div>
<p>以下の商品情報を更新しました。
</div>
<h3>before</h3>
<table border="1">
<tr>
<th>商品名</th>
<th>値段</th>
<th>在庫</th>
</tr>
<tr>
<td><s:property value="session.itemName"/></td>
<td><s:property value="session.itemPrice"/></td>
<td><s:property value="session.itemStock"/></td>
</tr>
</table>

<h3>after</h3>
<table border="1">
<tr>
<th>商品名</th>
<th>値段</th>
<th>在庫</th>
</tr>
<tr>
<td><s:property value="session.item_name"/></td>
<td><s:property value="session.item_price"/></td>
<td><s:property value="session.item_stock"/></td>
</tr>

</table>

<s:form>
<tr>
<td><span>更新日：</span><s:property value="session.update_date"/></td>
</tr>
</s:form>

<div>
<a href='<s:url action="GoMasterPageAction"/>'>Home</a>
</div>


</div>
<s:include value="footer.jsp"/>
</body>
</html>