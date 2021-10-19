<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="Base.jsp"%>
</head>
<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<h1 class="text-center mb-3">Fill the product detail</h1>

				<form action="handle-product" method="post">
					<div class="form-group">
						<label for="name">Product Name</label> <input type="text"
							class="form-control" id="name" aria-describedby="emailHelp"
							placeholder="Enter the product name here" name="name" required="required">
					</div>

					<div class="form-group">
						<label for="description">Enter Description</label>
						<textarea  class="form-control" id="description"
							aria-describedby="emailHelp" rows="5"
							placeholder="Enter the product description" name="description" required="required" ></textarea>
					</div>

					<div class="form-group">
						<label for="description">Enter Price</label> <input type="text"
							class="form-control" id="price" aria-describedby="emailHelp"
							placeholder="Enter the product price" name="price" required="required">


					</div>
<!-- 
					<div class="form-group">
						<label for="exampleFormControlFile1">Example file input</label> <input
							type="file" class="form-control-file"
							id="exampleFormControlFile1" name="image">
					</div> -->

					<div class="container text-center">


						<!-- Sub Se phle contdxt Path chahiy mtlb Project kaa naam -->
						<a href="${pageContext.request.contextPath}/"
							class="btn btn-outline-danger">Back</a>

						<button type="submit" class="btn btn-primary">Add</button>
					</div>



				</form>

			</div>
		</div>

	</div>
</body>
</html>