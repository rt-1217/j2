<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />

<!-- CSSの読み込み -->
	<link rel="stylesheet" type="text/css" href="./css/basis.css">
<!-- <link rel="stylesheet" type="text/css" href="./css/table.css"> -->

<title>Item Delete画面</title>
</head>
<body>

<s:include value="header.jsp"/>
<div id="main">
<div id="top">
<p>Item Delete</p>
</div>

<h3>削除したい商品を選択してください。</h3>
<table>
<s:form action="ItemDeleteAction">
<dl class ="dl-list">
<s:iterator value="buyItemDTOList">

<dd class="dd-list">

<img class="image" style="width:230px; height:150px;" src="<s:property value='image_file_path'/>" >

<br>
<br>


<s:property value="itemName" /><br>

<span>値段：</span>
<s:property value="itemPrice" /><span>円</span><br>
<span>在庫：</span>
<s:property value="item_stock"/><span>個</span><br>



<input class="check-box" type="checkbox" name="deleteName" value="<s:property value='itemName'/>">
<br>

</dd></s:iterator></dl>
<div class="clear"></div>

<div class="pay-push"></div>





<br><br>


<!-- <div id="button"> -->

<s:submit  value="商品を削除する"/>

<!-- </div> -->

</s:form>
</table>
<br>
<div>

<a href='<s:url action="HomeAction"/>'>管理者画面へ</a><br>

</div>

</div>



<s:include value="footer.jsp"/>

</body>
</html>