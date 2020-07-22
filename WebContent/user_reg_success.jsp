<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ユーザ登録成功</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/login.css">
<style>
body{
		background: #fafad2;
		font-family: monospace;
	}
	div{
 	  text-align: center;
  	  margin-left: auto;
  	  margin-right: auto;
}
table{
  border-collapse:separate;
  border-spacing: 0;
  margin:3px auto;
}
</style>
</head>
<body>
<div>
<h1>ユーザ登録成功</h1>
<hr>
<%
    String username = (String)request.getAttribute("username");
    if (username != null) {
%>
    <p style="color:blue; font-size: larger;"><%= username %>さんの登録が完了しました。</p>
<%   } %>
<br>
<hr>
<form action="./login_main.jsp" method="post">
    <button type="submit"><pre><span class="bigger">戻る</span></pre></button>
</form>
</div>
</body>
</html>