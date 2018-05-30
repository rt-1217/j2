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

<title>UserCreateComplete画面</title>

</head>
<body>
<s:include value="header.jsp"/>
<div id="main">
<div id="top">
<p>UserCreateComplete</p>
</div>

<div>
<h3>ユーザーの登録が完了致しました。</h3>
<div>
<a href='<s:url action="HomeAction"/>'>ログインへ</a>
</div>
</div>

</div>
<s:include value="footer.jsp"/>





</body>
</html>