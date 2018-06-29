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
<title>管理画面</title>

</head>



<body>
<s:include value="header.jsp"/>
<div id="main">
<div id="top">
<p>master</p>
</div>


<div>
<div  id="master_link">
<a href='<s:url action="GoItemInsertAction"/>'>新商品追加</a><br><br>
<a href='<s:url action="GoItemUpdateAction"/>'>商品情報更新</a><br><br>
<a href='<s:url action="GoItemDeleteAction"/>'>商品削除</a><br><br>
</div>


<!-- <table> -->

<%-- <s:iterator value="buyItemDTOList"> --%>

<%-- <img class="image" style="width:30%; height:auto;" src="<s:property value='image_file_path'/>" > --%>
<%-- <h3><s:property value="itemName"/></h3> --%>


<%-- <span>値段</span> --%>
<%-- <s:property value="itemPrice"/><span>円</span><br> --%>
<!-- <br> -->
<%-- <span>在庫</span> --%>

<%-- <s:property value="item_stock"/><span>個</span><br> --%>





<!-- <br> -->
<%-- </s:iterator> --%>

<!-- </table> -->


<div>
<%-- <p><a href='<s:url action="GoHomeAction" />'>ホーム</a></p> --%>
<%-- <p><a href='<s:url action="LogoutAction" />'>ログアウト</a></p> --%>
</div>

</div></div>

<s:include value="footer.jsp"/>

</body>
</html>