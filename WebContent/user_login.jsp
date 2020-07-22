<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ログインフォーム</title>
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
<h1>ユーザログイン</h1>
<form action="./UserLoginServlet" method="post">
    <table>
        <tr>
            <th>ID</th>
            <th>パスワード</th>
            <th></th>
        </tr>
        <tr>
            <td><input type="text" name="id"  /></td>
            <td><input type="password" name="password" /></td>
            <td><input type="submit" value="実行"></td>
        </tr>
    </table>
</form>
<%
    String error = (String)request.getAttribute("error");
    if (error != null) {
%>
    <p style="color:red; font-size: larger;"><%= error %></p>
<%   } %>
<br>
<hr>
<form action="./login_main.jsp" method="post">
    <button type="submit"><pre><span class="bigger">戻る</span></pre></button>
</form>
</div>
</body>
</html>