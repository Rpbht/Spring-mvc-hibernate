<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container" align="center" style="margin-top: 15%;">
<h4 style="color: navy;" align="center">Add Customer</h4>
</div>
<div style="width: 100%">
<div class="col-sm-4">
</div>


<div class="col-sm-4">

<form:form modelAttribute="customers" action="AddData" method="post">

<form:hidden path="Id"/>

<form:input path="firstName" cssClass="form-control" required="required" placeholder="FirstName"/>
<br>

<form:input path="lastName" cssClass="form-control" required="required" placeholder="LastName"/>
<br>

<form:input path="email" cssClass="form-control" required="required" placeholder="Email"/>
<br>

<div align="center"><input type="submit" class="btn-success" value="Add"></div>
</form:form>

</div>
<div class="col-sm-4">

</div>
</div>

</body>
</html>

<%-- 
<form action="AddData" method="post">
<input type="text" name="fistname" class="form-control" required="required" placeholder="FirstName"/>
<br>
<input type="text" name="lastname" class="form-control" required="required" placeholder="LastName"/>
<br>
<input type="text" name="email" class="form-control" required="required" placeholder="Email"/>
<br>
			<div align="center"><input type="submit" class="btn-success" value="Add"></div>
	      
</form> --%>