<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.util.*" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
					<li><a href="signForm.jsp" accesskey="3" title="">Sign Up</a></li>
					<li class="active"><a href="questionForm.jsp" accesskey="4" title="">question</a></li>
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
	<%
	  int d=0;
	 Random r = new Random();
	  d = r.nextInt(16);
	  String imgsrc ="";

	 
	 
	 
	 Class.forName("com.mysql.jdbc.Driver");
     Connection conn = null;
     PreparedStatement pstmt = null;
     ResultSet rs = null; 
     try{
         String jdbcDriver = "jdbc:mysql://localhost:3306/capcha?serverTimezone=UTC";
         String dbUser = "root";
         String dbPwd = "1234";            
         conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPwd);             
         pstmt = conn.prepareStatement("select imgurl from capcha.image where imgcode="+d+";");// 그림 url을 위한거      
         rs = pstmt.executeQuery();
          while(rs.next()){
	%>
	<script>
	function button1_click() {
	alert("버튼1을 누르셨습니다.");
	}
	</script>
	<div id="wrapper">
		<div id="three-column" class="container">
			<div class="title">
				<h2>캡차 문제를 풀어보는 화면입니다</h2>
				<span class="byline">아래에 정답을 생각하여 입력 후 정답을 제출해주세요</span>
				<form action="questionResult.jsp" method="post">
				<table
					style="margin-top: 40px; color: black; margin-left: auto; margin-right: auto;"
					border="0" cellpadding="10" cellspacing="5">
					<tr>
						<th colspan="2">
						<font size="6">캡차 문제입니다</font>
					<tr>
						<td width="auto" height="auto">
						<img alt="캡차 문제가 나오는 화면" src=<%= rs.getString("imgurl")%>>
						<input type="hidden" name="image_id" value=<%= d %>>
						<td style="text-align: left; vertical-align: bottom;">
						<a onClick="location.href='QuestTest2.jsp'" style="cursor: pointer;">[ 새로 고침 ]</a>
						<tr>
						<th>문제 정답
						<td><input type="text" name="answer" placeholder="정답을 입력하세요">
					<tr>
						<th>문제 제출
						<td style="text-align: left;"><input type="submit" class="login_submit" value="정답 제출">
				</table>
				</form>
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
	<%
            }
        }catch(SQLException se){
            se.printStackTrace();
        }finally{
            if(rs != null) rs.close();
            if(pstmt != null) pstmt.close();
            if(conn != null) conn.close();
        }
    %>
</body>
</html>