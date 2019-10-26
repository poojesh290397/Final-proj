<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/Page1.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Upload Documents</title>
</head>
<body>
<div class="loanacc">
<table>
<form id="loanacc" form method="POST" action="uploadMultipleFile" enctype="multipart/form-data" modelAttribute="file">

<h2>Loan Account Details</h2>
 <tr>
 	<td><label>Aadhar No</label><br></td>
 	<td> <input type="file" name="file" placeholder="Enter your Aadhar No" id="adhar" required><br><br></td>	
 </tr>
  <tr>
<label>Pan No</label><br>
  <input type="file" name="file" placeholder="Enter your Pan No" id="pan" required><br><br>
   </tr>
    <tr>
 <label>Salary Slip</label> 
  <input type="file" name="file" id="filetoupload"><br><br>
   </tr>
   <tr>
   <label>Voter Id</label> 
  <input type="file" name="file" id="filetoupload"><br><br>
  </tr>
  <br><br>
  <tr>
    <label>NOC</label> 
  <input type="file" name="file" id="filetoupload"><br><br>
  </tr>
<br><br>
<tr>
   <label>Agreement</label> 
  <input type="file" name="file" id="filetoupload"></tr>
<input type="submit" value="Upload" name="submit"><br><br>
</form>
</table>

</div>
</body>
</html>