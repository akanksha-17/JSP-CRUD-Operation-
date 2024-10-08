<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"> 

<title>Show Books</title>
</head>
<body>

<%@ include file="header.jsp" %>

    <div>
		<a class="btn btn-lg btn-primary"href="addbook.jsp"> Add a new Book </a>
	</div>


<table class="table">
<%
   Class.forName("com.mysql.cj.jdbc.Driver");
   Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/JSP","root","root");
   PreparedStatement pstmt=con.prepareStatement("select * from enggBook");
   ResultSet rs=pstmt.executeQuery();
   int bid, by, br;
   String bn, ba, bp, bi;
   while(rs.next())
   {
	   bid=rs.getInt(1);
	   bn=rs.getString(2);
	   ba=rs.getString(3);
	   bp=rs.getString(4);
	   by=rs.getInt(5);
	   br=rs.getInt(6);
	   bi=rs.getString(7);
    
%>
<tr>
    <td><%= bid %></td>
    <td><%= bn %></td>
    <td><%= ba %></td>
    <td><%= bp %></td>
    <td><%= by %></td>
    <td><%= br %></td>
    <td><img src="<%= bi %>" width="100" height="100"> </td> 
    <!-- for any specific folder <td> <img src="./image/ <%=bi%>" width="100" height="200"></td> -->
    <td><a class="btn btn-primary" href="editbook.jsp?bid=<%= bid%>">Edit</a></td>
    <td><a class="btn btn-primary" href="deletebook.jsp?bid=<%= bid%>">Delete</a></td>
</tr>
<% } %>
</table>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>