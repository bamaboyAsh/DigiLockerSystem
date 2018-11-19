<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.DBConnection"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<center>
		<fieldset style="width: 300px; background-color: #F8F8F8;">
			<table>
				<tr>
					<center>
						<strong>User Register Successfully</strong>
					</center>
				</tr>
				<%
					Connection con = null;
					Statement st = null;
					ResultSet rs = null;
					int id = 0;
					try {
						con = DBConnection.getConn();
						st = con.createStatement();
						rs = st.executeQuery("select max(userid) from user_details");
						if (rs.next()) {
							id = rs.getInt(1);
						}

					} catch (Exception e) {
						e.printStackTrace();
					}
				%>
				<tr>
					<center>
						<strong>Your User Id:</strong><font color="blue"><%=id%>
					</center>
				</tr>
				<tr>
					<center>
						<a href="index.jsp">Please Login</a>
					</center>
				</tr>
			</table>
		</fieldset>
	</center>
</body>
</html>