<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Books</title>
</head>
<body>
	<form action="insertbook.jsp" method="post">
<!--  -->
		<div class="container">
			
			<div class="mb-3">
				<label for="txtname" class="form-label">Book Name</label>
				<input type="text" class="form-control"
					id="txtbookname" placeholder="Book Name" name="txtbookname">
			</div>
			
			<div class="mb-3">
				<label for="txtauthor" class="form-label">Author Name</label>
				<input type="text" class="form-control"
					id="txtauthor" placeholder="Author Name" name="txtauthor">
			</div>
			
			<div class="mb-3">
				<label for="txtpublication" class="form-label">Book Publication</label>
				<input type="text" class="form-control"
					id="txtpublication" placeholder="Publication Name" name="txtpublication">
			</div>

			<div class="mb-3">
				<label for="txtyear" class="form-label">Book Year</label>
				<input type="number" class="form-control"
					id="txtyear" placeholder="Book Year" name="txtyear">
			</div>

			<div class="mb-3">
				<label for="txtprice" class="form-label">Book Price</label>
				<input type="number" class="form-control"
					id="txtprice" placeholder="Book Price" name="txtprice">
			</div>

			<div class="mb-3">
				<label for="txtImage" class="form-label">Book Image</label>
				<input type="file" class="form-control"
					id="txtImage" placeholder="Book Image" name="txtImage">
			</div>
			
			<button type="submit" class="btn btn-primary">Add Book</button>
		</div>
	</form>
</body>
</html>