<html>
<head>
	<%@include file="./base.jsp" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
</head>
<body>
	
	<div class="container mt-3">
	
		<div class="row">
		
			<div class="col md-12">
			
				<h1 class="text-center ">Welcome to Product App</h1>
			
					<table class="table">
					
						  <thead>
						    <tr>
						      <th scope="col">Product Id</th>
						      <th scope="col">Product name</th>
						      <th scope="col">Description</th>
						      <th scope="col">Price</th>
						      <th scope="col">Action</th>
						    </tr>
						  </thead>
						  <tbody>
						  
						  <c:forEach items="${product }" var="p">
						  
						    <tr>
						      <th scope="row">${p.id }</th>
						      <td>${p.name }</td>
						      <td>${p.description }</td>
						      <td class="font-weight-bold"> &#x20B9; ${p.price }</td>
						      <td>
						      	<a href="delete-product/${p.id }"><i class="fa-sharp fa-solid fa-trash text-danger"></i></a>
						      	<a href="update-product/${p.id }" class="p-3"><i class="fa-sharp fa-solid fa-pen text-success"></i></a>
						      	
						      </td>
						    </tr>	
						    
						    </c:forEach>
						  </tbody>
						  
					</table>
			
						<div class="container text-center">
						
							<a href="add-product" class="btn btn-outline-success">Add Product</a>
						
						</div>
			
			</div>
		
		
		
		</div>
	
	
	
	</div>
</body>
</html>
