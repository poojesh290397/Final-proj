<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.view_content{
margin:auto;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Track Loan</title>
</head>
<body>
<jsp:include page="nav.jsp" />
<div class="view_content">
<h1>Check Your Loan Status Here!</h1>
<form action="checkStatus1" method="post" >
	<table>
	<tr>
		<th><label>Your Cust Id</label></th>
		<td>${sessionScope.custId}</td>
	</tr>
	<tr>
		<th><label>Enter Your Loan Id</label></th>
		<td><input type="number" name="loanid"  placeholder="Loan Id" readonly value="${requestScope.lad.loanId}"></td>
	</tr>
		</table>
		<input type="submit"  value="View Status">
</form>
<table>
		<tr><td><b>${requestScope.lad.custId}</b></td></tr>
		<tr><td><b>${requestScope.lad.loanId}</b></td></tr>
		<tr><td><b>${requestScope.lad.status}</b></td></tr>
</table>
</div>
</body>
</html>