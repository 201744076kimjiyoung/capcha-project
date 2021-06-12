<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
				<li><a href="IntroduceForm.jsp" class="button">소개</a></li>
			</ul>
		</div>
	</div>

	<div id="wrapper">
		<div id="three-column" class="container">
			<div class="title">
				<h2>아이디를 찾았습니다.</h2>
				<%
					// 파라미터 정보 가져오기
				request.setCharacterEncoding("utf-8");
				String findform_name = request.getParameter("name");
				String findform_email = request.getParameter("email");
				String userid = "";//유저이름 넣기
				int name_sucess =0;
				int email_sucess =0;
				int find_sucess = 0;//로그인 성공여부 실패하면 0 성공하면 1

				Class.forName("com.mysql.jdbc.Driver");
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;

				try {
					DBInfo sql = new DBInfo();

					conn = DriverManager.getConnection(sql.jdbcDriver(), sql.dbUser(), sql.dbPwd());

					pstmt = conn.prepareStatement("SELECT * FROM capcha.member;");

					rs = pstmt.executeQuery();
					
					while (rs.next()) {
						if (findform_name.equals(rs.getString("member_name"))) {
							name_sucess = 1;
							if (findform_email.equals(rs.getString("member_email"))) {
								userid= rs.getString("member_id");
								find_sucess = 1;
							}
						}
					}
				} catch (SQLException se) {
					se.printStackTrace();
				} finally {
					if (rs != null)
						rs.close();
					if (pstmt != null)
						pstmt.close();
					if (conn != null)
						conn.close();
				}
				if(find_sucess==0){
						
				%>
						<script>
						alert(" 일치하는 정보가 없습니다.");
						location.href = 'find_id_Form.jsp';
						</script>
				<%}else if(find_sucess==1){ %>
				<h3><%=findform_name %>님의 아이디는 <%= userid %> 입니다. </h3>
				<%}%>
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