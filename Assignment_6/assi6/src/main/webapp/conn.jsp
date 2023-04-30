<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1","root","root");
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select * from stud");
out.println("Student information");
while(rs.next())
{
	out.println(rs.getInt(1));
	out.println(rs.getString(2));
	out.println("<br>");
}
%>
</body>
</html>