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

<title>ItemInsertComplete画面</title>
</head>
<body>


<div id="header">
<div id="pr">
</div></div>
<div id="main">
<div id="top">
<p>ITEM INSERT COMPLETE</p>
</div>
<div>
<table>
<s:form>
<dl class="buy_item">
<dd>
<p>下記の商品を追加しました。</p>
<br>

商品名：
<s:property value="session.itemName"/><br><br>

値段：
<s:property value="session.itemName"/><br><br>

在庫：
<s:property value="session.itemStock"/><br><br>

画像パス：
<s:property value="session.imageFilePath"/><br><br>


</dd>
</dl>

</s:form>
</table>
<div>

<a href='<s:url action="HomeAction"/>'>管理者画面へ</a><br>
<a href='<s:url action="GoItemInsertAction"/>'>商品追加画面へ</a>

</div>
</div>
</div>



<div id="footer">
<div id="pr">
</div></div>





</body>
</html>