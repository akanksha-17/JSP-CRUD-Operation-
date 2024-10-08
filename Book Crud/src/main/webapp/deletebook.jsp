<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete book</title>
</head>
<body>

<%
   int i = Integer.parseInt(request.getParameter("bid"));
   Class.forName("com.mysql.cj.jdbc.Driver");
   Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/JSP","root","root");
   PreparedStatement pstmt=con.prepareStatement("delete from enggBook where Bid=?");
   pstmt.setInt(1,i); 
   pstmt.executeUpdate(); 
   /* RequestDispatcher rd = request.getRequestDispatcher("booksshow.jsp"); 
   rd.forward(request,response); */
  
%>

<jsp:forward page="booksshow.jsp"></jsp:forward>


</body>
</html>