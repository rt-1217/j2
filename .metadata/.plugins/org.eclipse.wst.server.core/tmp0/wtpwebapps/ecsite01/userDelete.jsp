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
<link rel="stylesheet" type="text/css" href="./css/table.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

<script type="text/javascript">
function submitAction(url) {
$('form').attr('action', url);
$('form').submit();
}
</script>


<title>User Delete</title>
</head>


<body>
<s:include value="header.jsp"/>

<div id="main">
<div id="top">
<p>User Delete</p>
</div>


<table>
<s:form action="UserDeleteAction">
<h3>退会してもよろしいでしょうか？</h3><br>
<h3 class="red">※一度退会されるとご登録されているすべての情報が完全に失われます。</h3>

<div>
<input type="hidden" name="deleteFlg" value="1">
<s:submit class="button" name="deleteFlg" value="退会する"/>
</div>

</s:form>
</table>

<div>
<p><a href='<s:url action="MyPageAction"/>'>マイページへ</a></p>
<p><a href='<s:url action="GoHomeAction"/>'>Homeへ</a></p>
</div>




</div>
<s:include value="footer.jsp"/>
</body>
</html>