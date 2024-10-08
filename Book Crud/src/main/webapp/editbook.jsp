<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<title>edit books</title>
</head>
<body>
	<h1>Edit Books</h1>
	<%
             int bid=Integer.parseInt(request.getParameter("bid"));
             Class.forName("com.mysql.cj.jdbc.Driver");
             Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/JSP","root","root");
             PreparedStatement pstmt=con.prepareStatement("select * from enggBook where Bid=?");
             pstmt.setInt(1,bid);
             ResultSet rs=pstmt.executeQuery();
             int by,br;
             String bn,ba,bp,bi;
             if(rs.next())
             {
            	bid=rs.getInt(1);
            	bn=rs.getString(2);
            	ba=rs.getString(3);
                bp=rs.getString(4);
                by=rs.getInt(5);
                br=rs.getInt(6);
                bi=rs.getString(7);
        %>

	<form action="updatebook.jsp" method="post">
		<div class="container">
			<div class="mb-3">			
				<label for="txtbookid" class="form-label">Book Id</label>
				 <input type="text" class="form-control"
					id="txtbookid" placeholder="Book ID" name="txtbookid" value=<%=bid %>>					
			</div>
			
			<div class="mb-3">
				<label for="txtname" class="form-label">Book Name</label>
				<input type="text" class="form-control"
					id="txtbookname" placeholder="Book Name" name="txtbookname" value=<%=bn %>>
			</div>
			
			<div class="mb-3">
				<label for="txtauthor" class="form-label">Author Name</label>
				<input type="text" class="form-control"
					id="txtauthor" placeholder="Author Name" name="txtauthor" value=<%=ba %>>
			</div>
			
			<div class="mb-3">
				<label for="txtpublication" class="form-label">Book Publication</label>
				<input type="text" class="form-control"
					id="txtpublication" placeholder="Publication Name" name="txtpublication" value=<%=bp %>>
			</div>

			<div class="mb-3">
				<label for="txtyear" class="form-label">Book Year</label>
				<input type="number" class="form-control"
					id="txtyear" placeholder="Book Year" name="txtyear" value=<%=by %>>
			</div>

			<div class="mb-3">
				<label for="txtprice" class="form-label">Book Price</label>
				<input type="number" class="form-control"
					id="txtprice" placeholder="Book Price" name="txtprice" value=<%=br %>>
			</div>
<!-- 
			<div class="mb-3">
				<label for="txtImage" class="form-label">Book Image</label>
				<input type="file" class="form-control"
					id="txtImage" placeholder="Book Image" name="txtImage" value=<%=bi %>>
			</div>

 -->			
			<button type="submit" class="btn btn-primary">Update</button>
		</div>
	</form>
	<%  } %>
</body>
</html>