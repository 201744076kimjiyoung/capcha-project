<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
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
				<h2>소 개</h2><br>
				<h3>지금까지 이러한 캡차는 없었다 이것은 캡차인가 유머인가 YNK 캡차</h3>
				<h4>1. 값싼 유지비</h4>
				<h4>2. AI가 해석하지 못하는 새로운 방식</h4>
				<h4>3. AI뿐만 아니라 해외 해커도 해석하지 못한다.</h4>
				<h4>4. 해석하기 애매한 부분조차 없다.</h4>
				<table
					style="margin-top: 40px; color: black; margin-left: auto; margin-right: auto;"
					border="0" cellpadding="10" cellspacing="5">
					<tr>
						<th colspan="2">
						<font size="6">캡차 문제입니다</font>
					<tr>
						<td width="auto" height="auto">
						<%-- <img alt="캡차 문제가 나오는 화면" src=<%= rs.getString("imgurl")%>>
						<input type="hidden" name="image_id" value=<%= d %>> --%>
						<td style="text-align: left; vertical-align: bottom;">
						<a onClick="button1_click()" style="cursor: pointer;">[ 새로 고침 ]</a>
						<tr>
						<th>문제 정답
						<td><input type="text" name="answer" placeholder="정답을 입력하세요">
					<tr>
						<th>문제 제출
						<td style="text-align: left;"><input type="submit" class="login_submit" value="정답 제출">
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