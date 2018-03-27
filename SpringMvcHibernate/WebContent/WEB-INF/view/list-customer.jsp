 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

 <div class="container" style="margin: 5%" align="center" ><H2> Customers List Here</H2></div>
	<table border="1" class="table" style="margin-top: 10%">

		<thead>
			<tr>
				<th>Id</th>
				<th>FirstName</th>
				<th>LastName</th>
				<th>Email</th>
				<th>Delete</th>
				<th>Edit</th>
			</tr>
		</thead>

		<tbody>

			<c:forEach var="list" items="${customerList}">
		
			<c:url var="linkEdit" value="EditData">
					<c:param name="id" value="${list.getId()}"></c:param>
					</c:url>
					
					
			<c:url var="linkDelete" value="DeleteData">
					<c:param name="id" value="${list.getId()}"></c:param>
					</c:url>		
					
				<tr>
					<td><c:out value="${list.getId()}"></c:out></td>
					<td><c:out value="${list.getFirstName()}"></c:out></td>
					<td><c:out value="${list.getLastName()}"></c:out></td>
					<td><c:out value="${list.getEmail()}"></c:out></td>
					<td><a href="${linkDelete}">Delete</a>
					<td><a href="${linkEdit}">Edit</a>
				</tr>
				
			</c:forEach>


		</tbody>

	</table>
	
	<div class="container" style="margin: 5%" align="center" ><a class="a:hover" href="AddCustomer">AddCustomer</a></div>

</body>
</html>