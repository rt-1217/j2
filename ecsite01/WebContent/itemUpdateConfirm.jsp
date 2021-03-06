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
<title>Item Update Confirm</title>
</head>
<body>

<s:include value="header.jsp"/>
<div id="main">
<div id="top">
<p>Item Update Confirm</p>
</div>

<div>
<h3>下記の在庫数を変更してよろしいでしょうか？。</h3>
<s:form action="ItemUpdateConfirmAction">
<s:iterator value="list">



商品名<br>
<input type="text" name="item_name" value="<s:property value='itemName' />"><br>

値段<br>
<input type="text" name="item_price" value="<s:property value='itemPrice'/>"><br>

在庫<br>
<input type="text" name="item_stock" value="<s:property value='itemStock'/>"><br>

</s:iterator>


<s:submit value="更新"/>

</s:form>
<div>
<p><a href='<s:url action="GoItemUpdateAction" />'>戻る</a></p>
</div>


</div>



</div>
<s:include value="footer.jsp"/>
</body>
</html>