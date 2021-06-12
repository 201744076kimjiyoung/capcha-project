<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@page import="java.sql.*"%>
<%@page import="DBInfo.DBInfo"%>
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
				<li><a href="#" class="button">구상중</a></li>
			</ul>
		</div>
	</div>

	<div id="wrapper">
		<div id="three-column" class="container">
			<div class="title">
				<h2>회원가입 되었습니다.</h2>
				<%
					// POST 방식의 한글처리
				request.setCharacterEncoding("UTF-8");

				// 파라미터 정보 가져오기
				String member_id = request.getParameter("id");
				String member_pw = request.getParameter("password");
				String member_name = request.getParameter("name");
				String member_email = request.getParameter("email");//이메일 추가

				// JDBC 참조 변수 준비
				Connection con = null;
				PreparedStatement pstmt = null;
				DBInfo DB = new DBInfo();



				// 1) JDBC 드라이버 로딩
				Class.forName("com.mysql.jdbc.Driver");

				// 2) DB연결(DB url, DB id, DB pw)
				con = DriverManager.getConnection(DB.jdbcDriver(), DB.dbUser(), DB.dbPwd());

				// 3) SQL문 준비
				String sql = "INSERT INTO member (member_id, member_pw, member_name, member_email) VALUES (?, ?, ?, ?)";

				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, member_id);
				pstmt.setString(2, member_pw);
				pstmt.setString(3, member_name);
				pstmt.setString(4, member_email);

				// 4) 실행
				pstmt.executeUpdate();

				// JDBC 자원 닫기
				pstmt.close();
				con.close();
				%>
				<h3><%=member_name %>님 안녕하세요!</h3>
				<h3>아이디는 <%=member_id %>이고,</h3>
				<h3>비밀번호는<%=member_pw %>입니다.</h3>
				<h3>등록된 이메일은<%=member_email  %>입니다.</h3>
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