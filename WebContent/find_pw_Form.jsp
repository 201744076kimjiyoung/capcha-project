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
					<li class="active"><a href="index.html" accesskey="1" title="">Homepage</a></li>
					<li><a href="loginForm.jsp" accesskey="2" title="">Login</a></li>
					<li><a href="signForm.jsp" accesskey="3" title="">Sign Up</a></li>
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
				<h2>비밀번호 찾기</h2>
				<span class="byline">아래 정보들을 모두 기입해주세요</span>
				<form action="find_pw_End.jsp" method="post">
				<table
					style="margin-top: 40px; color: black; margin-left: auto; margin-right: auto;"
					border="0" cellpadding="10" cellspacing="5">
					<tr>
						<th>이름
						<td><input type="text" name="name" placeholder="이름를 입력하세요">
					<tr>
						<th>이메일
						<td><input type="text" name="email" placeholder="이메일를 입력하세요">
					<tr>
						<th>아이디
						<td><input type="text" name="id" placeholder="아이디를 입력하세요">
					<tr>
						<th></a> 
						<th><input style="margin-left: 100px"
							class="login_submit" type="submit" value="비밀번호 찾기"></a>
				</table>
				</form>
			</div>
			<!-- 		<div class="boxA">
			<p>이미 가입되어 있는 아이디로 로그인 해주세요</p>
			<a href="#" class="button button-alt">로그인</a>
		</div>
		<div class="boxB">
			<p>회원가입을 하지 않으셨다면 새롭게 가입해 주세요</p>
			<a href="#" class="button button-alt">회원가입</a>
		</div>
		<div class="boxC">
			<p>문제만 푸는 것을 원하면 선택해 주세요</p>
			<a href="#" class="button button-alt">캡차문제</a>
		</div> -->
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