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
<style>
@import url('https://fonts.googleapis.com/css?family=Press+Start+2P');
</style>
<link href="https://fonts.googleapis.com/css?family=Mystery+Quest" rel="stylesheet">

<title>Home画面</title>



</head>
<body>

<!-- <div id="header"> -->
<!-- <div class="header-logo">O N L I N E   S H O P </div> -->

<!-- <div class="top-menu"> -->

<!-- <div class="left-list"> -->
<!-- <ul class="top-li"> -->
<%-- <li><a href='<s:url action="GoHomeAction"/>'>TOP</a></li> --%>
<%-- <li><a href='<s:url action="ProductPageAction"/>'>PRODUCT</a></li> --%>
<%-- <li><a href='<s:url action="UserCreateAction"/>'>SIGNUP</a></li> --%>
<!-- </ul> -->
<!-- </div> -->

<!-- <div class="right-list"> -->
<!-- <ul> -->
<%-- <li><a href='<s:url action="GoLoginAction"/>'>LOGIN</a></li> --%>
<%-- <li><a href='<s:url action="MyPageAction"/>'>MYPAGE</a></li> --%>
<%-- <li><a href='<s:url action="LogoutAction"/>'>LOGOUT</a></li> --%>
<%-- <li><a href='<s:url action="InquiryAction"/>'>MAIL</a></li> --%>
<!-- </ul> -->

<!-- </div> -->




<!-- </div> -->

<!-- </div> -->
<s:include value="header.jsp"/>

<div id="main">
<div id="top">
<p>TOP PAGE</p>
</div>

<div id="text-center">
<%-- <s:form action="HomeAction"> --%>
<!-- <input id="submit_button" type="submit" value ="商品購入"> -->
<%-- </s:form> --%>

<img src="./image/homeyasai.jpg" width="95%" height="auto">

<s:if test="#session.id !=null">
<p>ログアウトする場合は
<a href ='<s:url action="LogoutAction" />'>こちら</a></p>
</s:if>

</div>


</div>

<s:include value="footer.jsp"/>
<!-- <div id="footer"> -->
<!-- <div class="fotter-message"> -->
<!-- Copyright©2018 TEST. All Rights Reserved. -->

<!-- </div> -->

<!-- </div> -->


</body>
</html>