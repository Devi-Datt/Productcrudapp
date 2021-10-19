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
				<h1 class="text-center mb-3">Change Product detail</h1>

				<!--${pageContext.request.contextPath }
es se hum mara url aata hai

  -->

				<form action="${pageContext.request.contextPath }/handle-product"
					method="post">
					<input type="hidden" name="id" value="${product.id }">
					<div class="form-group">
						<label for="name">Product Name</label> <input type="text"
							class="form-control" id="name" aria-describedby="emailHelp"
							placeholder="Enter the product name here" name="name"
							value="${product.name }" required="required">
					</div>

					<div class="form-group">
						<label for="description">Enter Description</label>
						<textarea type="text" class="form-control" id="description"
							aria-describedby="emailHelp" rows="5"
							placeholder="Enter the product description" name="description" required="required">${product.description }
							</textarea>
					</div>

					<div class="form-group">
						<label for="description">Enter Price</label> <input type="text"
							class="form-control" id="price" aria-describedby="emailHelp"
							placeholder="Enter the product price" name="price"
							value="${product.price }" required="required">

					</div>


					<div class="container text-center">


						<!-- Sub Se phle contdxt Path chahiy mtlb Project kaa naam -->
						<a href="${pageContext.request.contextPath}/"
							class="btn btn-outline-danger">Back</a>

						<button type="submit" class="btn btn-warning">Upadate</button>
					</div>



				</form>

			</div>
		</div>

	</div>
</body>
</html>