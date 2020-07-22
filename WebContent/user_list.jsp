<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.UserDto" %>
<% ArrayList<UserDto> list = (ArrayList<UserDto>) request.getAttribute("list"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登録済みユーザ一覧</title>
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
  width: 50%;
  border-collapse:separate;
  border-spacing: 0;
  margin:3px auto;
}

table th:first-child{
  border-radius: 5px 0 0 0;
}

table th:last-child{
  border-radius: 0 5px 0 0;
  border-right: 1px solid #3c6690;
}

table th{
  text-align: center;
  color:white;
  background: linear-gradient(#829ebc,#225588);
  border-left: 1px solid #3c6690;
  border-top: 1px solid #3c6690;
  border-bottom: 1px solid #3c6690;
  box-shadow: 0px 1px 1px rgba(255,255,255,0.3) inset;
  width: 33%;
  padding: 10px 0;
}

table td{
  text-align: center;
  background-color: #ffffff;
  border-left: 1px solid #a8b7c5;
  border-bottom: 1px solid #a8b7c5;
  border-top:none;
  box-shadow: 0px -3px 5px 1px #eee inset;
  width: 33%;
  padding: 10px 0;
}

table td:last-child{
  border-right: 1px solid #a8b7c5;
}

table tr:last-child td:first-child {
  border-radius: 0 0 0 5px;
}

table tr:last-child td:last-child {
  border-radius: 0 0 5px 0;
}
}
</style>
</head>
<body>
<div>
    <h1>登録済みユーザ一覧</h1>
    <table>
        <tr>
        	<th>登録番号</th>
        	<th>ユーザID</th>
        	<th>パスワード</th>
        </tr>
        <% for (UserDto ud: list) { %>
        <tr>
        <td><%= ud.getNo() %></td>
        <td><%= ud.getUserid() %></td>
        <td><%= ud.getPassword() %></td>
        </tr>
        <% } %>
    </table>
    <br>
    <hr>
    <form action="./login_main.jsp" method="post">
        <button type="submit"><pre><span class="bigger">戻る</span></pre></button>
    </form>
</div>
</body>
</html>