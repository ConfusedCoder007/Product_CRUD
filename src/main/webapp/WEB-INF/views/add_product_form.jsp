<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<!-- <title>Product app</title> -->

<!-- other way of showing title -->
<%@include file="./base.jsp" %>

</head>
<body>

	<div class="row">
	
		<div class="col-md-6 offset-md-3">
		<h3 class="text-center mb-3">Fill Product Details</h3>

			<form action="handle-product" method="post">
			
					<div class="mb-3">
						  <label for="exampleFormControlInput1" class="form-label">Product Name</label>
						  <input type="text" class="form-control" id="exampleFormControlInput1" 
						  placeholder="Enter the product name here" name="name">
					</div>
					
					
					<div class="mb-3">
						  <label for="exampleFormControlTextarea1" class="form-label">Product Description</label>
						  <textarea class="form-control" id="exampleFormControlTextarea1" rows="5" placeholder="Enter the product description here"
						   name="description"></textarea>
					</div>
					
					
					<div class="mb-3">
						  <label for="exampleFormControlInput1" class="form-label">Product Price</label>
						  <input type="text" class="form-control" id="exampleFormControlInput1" 
						  placeholder="Enter the product price here" name="price">
					</div>
					
					
					<div class="container text-center">
							
							
						<a href="${pageContext.request.contextPath}/">	<button type="button" class="btn btn-outline-danger">Back</button></a>
							
							
							<button type="submit" class="btn btn-outline-success">Add</button>
							
					
					</div>
					
			</form>
	
		</div>
	</div>
</body>
</html>