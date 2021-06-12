<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="UTF-8">
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Didact+Gothic"
	rel="stylesheet" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<title>Insert title here</title>
</head>
<body>
	<div id="header-wrapper">
		<div id="header" class="container">
			<div id="logo">
				<h1>
					<a href="index.html">YNK</a>
				</h1>
			</div>
			<div id="menu">
				<ul>
					<li><a href="index.html" accesskey="1" title="">Homepage</a></li>
					<li><a href="loginForm.jsp" accesskey="2" title="">Login</a></li>
					<li class="active"><a href="signForm.jsp" accesskey="3" title="">Sign Up</a></li>
					<li><a href="questionForm.jsp" accesskey="4" title="">question</a></li>
				</ul>
			</div>
		</div>
		<div id="banner" class="container">
			<div class="title">
				<h2>Your Not Korean</h2>
				<span class="byline">S/W_Project</span>
			</div>
			<ul class="actions">
				<li><a href="IntroduceForm.jsp" class="button">소개</a></li>
			</ul>
		</div>
	</div>

	<div id="wrapper">
		<div id="three-column" class="container">
			<div class="title">
				<h2>회원가입 화면입니다</h2>
				<span class="byline">아래 정보들을 모두 기입해주세요</span>
				<table
					style="margin-top: 40px; color: black; margin-left: auto; margin-right: auto;"
					border="0" cellpadding="10" cellspacing="5">
					<form action="signEnd.jsp" method="post">
					<tr>
						<th>아이디
						<td><input type="text" name="id" placeholder="아이디를 입력하세요">
					<tr>
						<th>비밀번호
						<td><input type="password" name="password" placeholder="비밀번호를 입력하세요">
					<tr>
						<th>비밀번호 확인
						<td><input type="password"  placeholder="한 번 더 입력하세요">
					<tr>
						<th>이름
						<td><input type="text" name="name" placeholder="이름을 입력하세요">
					<tr><!--이메일 추가   --> 
						<th>이메일
						<td><input type="text" name="email" placeholder="이메일을 입력하세요">	
					<tr>
						<th colspan="2">
						<input class="login_submit" type="submit" value="회원가입">
						</form>
				</table>
			</div>
		</div>
	</div>

	<div id="welcome">
		<div class="container"></div>
	</div>

	<div id="copyright" class="container">
		<p>
			&copy; Untitled. All rights reserved. | Photos by <a
				href="http://fotogrph.com/">Fotogrph</a> | Design by <a
				href="http://templated.co" rel="nofollow">TEMPLATED</a>.
		</p>
	</div>
</body>
</html>