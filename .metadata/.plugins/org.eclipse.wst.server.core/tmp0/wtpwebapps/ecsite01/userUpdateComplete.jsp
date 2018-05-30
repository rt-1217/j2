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

<title>User Update Complete</title>
</head>
<body>
<s:include value="header.jsp"/>

<div id="main">
<div id="top">
<p>UserUpdateComplete</p>
</div>
<h2>ユーザー情報を変更しました。</h2>


<div>
<a href='<s:url action="MyPageAction"/>'>マイページへ</a>
</div>


</div>

<s:include value="footer.jsp"/>

</body>
</html>