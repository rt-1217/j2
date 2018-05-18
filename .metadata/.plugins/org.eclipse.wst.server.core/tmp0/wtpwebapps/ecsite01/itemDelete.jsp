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


<title>Item Delete画面</title>
</head>
<body>

<div id ="header">
<div id="pr">
</div></div>
<div id="main">
<div id="top">
<p>Item Delete</p>
</div>

<p>削除したい商品を選択してください。</p>
<table>
<s:form action="ItemDeleteAction">
<s:iterator value="buyItemDTOList">

<dl class="dl-list">
<dd class="dd-list">
<img class="image" style="width:150px; height:100px;" src="<s:property value='image_file_path'/>" >

<br>
<br>


<s:property value="itemName" /><br>

<span>値段：</span>
<s:property value="itemPrice" /><span>円</span><br>

<span>在庫：</span>
<s:property value="item_Stock"/><span>個</span><br>

<input class="check-box" type="checkbox" name="deleteName" value="<s:property value='itemName'/>">


</dd>
</dl>

</s:iterator>
<div class="clear"></div>
<br><br>
<s:submit class="button" value="商品を削除する"/>
</s:form>
</table>
<br>
<div>

<a href='<s:url action="HomeAction"/>'>管理者画面へ</a><br>



</div>



</div>
<div id="footer">
		<div id="pr">
		</div>
	</div>






















</body>
</html>