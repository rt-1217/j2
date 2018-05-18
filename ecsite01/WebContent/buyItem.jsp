<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />


<!-- CSSの読み込み -->
<link rel="stylesheet" type="text/css" href="./css/basis.css">
<link rel="stylesheet" type="text/css" href="./css/style.css">

<title>BuyItem画面</title>
</head>

<body>
<div id="header">
<div id ="pr">
</div></div>

<div id="main">
<div id="top">
<p>BuyItem</p>
</div>

<!-- 商品検索機能 -->
<div>
<s:form action="ItemSearchAction">
<tr>
<td>
<s:textfield name="searchWord" value=""/>
</td>
<td>
<s:submit value="検索"/>
</td></tr>
</s:form>
<s:if test="message !=''">
<h3><s:property value="message" escape="false"/></h3>
</s:if>



<!-- 商品テーブル -->
<table>

<s:form action="BuyItemAction">

<s:iterator value="#session.buyItemDTOList">
<dl class ="dl-list">
<dd class="dd-list">

<img class="image" style="width:30%; height:auto;" src="<s:property value='image_file_path'/>" >



<h3><s:property value="itemName"/></h3>




<span>値段：</span>

<s:property value="itemPrice" /><span>円</span>

<span>在庫：</span>


<s:if test="item_stock>0">
<s:property value="item_stock"/>
</s:if>
<s:else>
<span>品切れ</span>
</s:else>
<br>



<span>購入個数</span>
<s:if test="item_stock>0">
<select name="count">
<option value="0" selected="selected">0</option>
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
</select>
</s:if>
<s:else>
<select name="count">
<option value="0" selected="selected">0</option>


</select></s:else>

</dd>
</dl>
</s:iterator>



<tr><td>
<span>支払い方法</span>

<input type="radio" name="pay" value="1" checked="checked">現金払い
<input type="radio" name="pay" value="2" >クレジットカード
</td>
</tr>
<tr>
<td>
<s:submit value="購入"/>
</td>
</tr>

</s:form>

</table>

<div>
<p>前画面に戻る場合は<a href='<s:url action="GoHomeAction" />'>こちら</a></p>
<p>マイページは<a href='<s:url action="MyPageAction" />'>こちら</a></p>
</div>




</div>

</div>




<div id="footer">
<div id="pr">
</div></div>









</body>
</html>