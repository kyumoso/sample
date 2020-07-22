<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ユーザ管理UI</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/login.css">
<style>
	body{
		background: #fafad2;
		font-family: monospace;
	}

	div.User{
 	  text-align: center;
  	  margin: 30px auto;
	}
	h1 {
  		color: #6594e0;
 		 border-bottom: dashed 2px #6594e0;
 		 text-margin: center;
	}
	.button{
	display: flex;
	justify-content: center;
	}

</style>
</head>
<body>
<div class= "User">
<h1>登録済みユーザ</h1>
<form action="./UserListServlet" method="post">
    <button type="submit"><pre><span class="bigger">リスト</span></pre></button>
</form>
</div>
<hr>
<div class ="User">
<h1>ユーザログイン</h1>
<form action="./user_login.jsp" method="post">
    <button type="submit"><pre><span class="bigger">ログイン</span></pre></button>
</form>
</div>
<hr>
<div class = "User">
<h1>ユーザを登録/ユーザを削除</h1>
</div>
<div class = "button">
<div class = "button1">
<form action="./user_regist.jsp" method="post">
    <button type="submit"><pre><span class="bigger">登録</span></pre></button>
</form>
</div>
<div class = "button2">
<form action="./user_delete.jsp" method="post">
   <button type="submit"><pre><span class="bigger">削除</span></pre></button>
</form>
</div>
</div>
</body>
</html>