<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Book</title>
</head>
<body>

<%
     int bid=Integer.parseInt(request.getParameter("txtbookid"));
     String bn=request.getParameter("txtbookname");
     String ba=request.getParameter("txtauthor");
     String bp=request.getParameter("txtpublication");
     int by=Integer.parseInt(request.getParameter("txtyear"));
     int br=Integer.parseInt(request.getParameter("txtprice"));
    // String bi=request.getParameter("txtImage");
     
     Class.forName("com.mysql.cj.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/JSP","root","root");
     PreparedStatement ptsmt=con.prepareStatement("update enggBook set Bname=?,Bauthor=?,publication=?,year=?,price=? where Bid=?");
     ptsmt.setString(1,bn);
     ptsmt.setString(2,ba);
     ptsmt.setString(3,bp);
     ptsmt.setInt(4,by);
     ptsmt.setInt(5,br);
     ptsmt.setInt(6,bid);

     //ptsmt.setString(7,bi);
 	 ptsmt.executeUpdate();
 	RequestDispatcher rd=request.getRequestDispatcher("booksshow.jsp");
     rd.forward(request, response);
%>

</body>
</html>