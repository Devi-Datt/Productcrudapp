<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="Base.jsp"%>
</head>
<body>

	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center mb-3">Welcome to Product App</h1>
				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">ID</th>
							<th scope="col">Product Name</th>
							<th scope="col">Description</th>
							<th scope="col">Price</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${product }" var="p">
							<tr>
								<th scope="row">Product${p.id }</th>
								<td>${p.name }</td>
								<td>${p.description }</td>
								<td class="font-weight-bold">&#8377;${p.price }</td>
								
								<td>
								
								<a href="delete/${p.id }"><i class="fas fa-trash text-danger"></i></a>
								<a href="update/${p.id }"><i class="fas fa-pen-nib text-primary"></i></a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

				<div class="continer text-center">

					<a href="add-product" class="btn btn-outline-success"> Add
						Product</a>

				</div>

			</div>
		</div>
	</div>
</body>
</html>
