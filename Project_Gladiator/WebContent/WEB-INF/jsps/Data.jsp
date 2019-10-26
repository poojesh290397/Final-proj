<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
table {
	margin:auto;
}

th {
	font-size: 30px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Applicant Details</title>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
        $("#btnPrint").live("click", function () {
            var divContents = $("#dvContainer").html();
            var printWindow = window.open('', '', 'height=400,width=800');
            printWindow.document.write('<html><head><title>HOME-LOAN APPLICATION</title>');
            printWindow.document.write('</head><body >');
            printWindow.document.write(divContents);
            printWindow.document.write('</body></html>');
            printWindow.document.close();
            printWindow.print();
        });
    </script>
</head>
<body>
<jsp:include page="nav.jsp" />
 <form id="form1">
    <div id="dvContainer">

<table>

	<tr>	<th>Personal Details </th></tr>
		<tr>
		<th>First Name</th>
		<td>${requestScope.pd.firstName}</td>
		</tr>
		<tr>
		<th>Middle Name</th>
		<td>${requestScope.pd.middleName}</td>
		</tr>
		<tr>
		<th>Last Name</th>
		<td>${requestScope.pd.lastName}</td>
		</tr>
		
		<tr>
		<th>Email</th>
		<td>${requestScope.pd.email}</td>
		</tr>
		
		<tr>
		<th>Phone No</th>
		<td>${requestScope.pd.phoneNo}</td>
		</tr>
		
		<tr>
		<th>Age</th>
		<td>${requestScope.pd.age}</td>
		</tr>
		
		<tr>
		<th>Date of Birth</th>
		<td>${requestScope.pd.dob}</td>
		</tr>
		
		<tr>
		<th>Gender</th>
		<td>${requestScope.pd.gender}</td>
		</tr>
		
		<tr>
		<th>Nationality</th>
		<td>${requestScope.pd.nationality}</td>
		</tr>
		
		<tr>
		<th>Address</th>
		<td>${requestScope.pd.address}</td>
		</tr>
		
		<tr>
		<th>State</th>
		<td>${requestScope.pd.state}</td>
		</tr>
		
		<tr>
		<th>Pincode</th>
		<td>${requestScope.pd.pincode}</td>
		</tr>
		
		<tr>
		<th>Aadhar No</th>
		<td>${requestScope.pd.aadharNo}</td>
		</tr>
		
		<tr>
		<th>Pan NO</th>
		<td>${requestScope.pd.panNo}</td>
		</tr>

<tr>	<th><u>BANK DETAILS</u></th></tr>
		<tr>
		<th>CustomerId</th>
		<td>${requestScope.bd.custId}</td>
		</tr>
		<tr>
		<tr>
		<th>Account No</th>
		<td>${requestScope.bd.accNo}</td>
		</tr>
		<tr>
		<th>Bank Name</th>
		<td>${requestScope.bd.bankName}</td>
		</tr>
		<tr>
		<th>Branch</th>
		<td>${requestScope.bd.branch}</td>
		</tr>
		<tr>
		<tr>
		<th>IFSC Code</th>
		<td>${requestScope.bd.ifsc}</td>
		</tr>
	 
	<tr><th><u>PROPERTY DETAILS</u></th></tr>
		<tr>
		<th>Property Name</th>
		<td>${requestScope.prd.propertyName}</td>
		</tr>
		<tr>
		<tr>
		<th>Property Location</th>
		<td>${requestScope.prd.propertyLocation}</td>
		</tr>
		<tr>
		<th>Estimated Amount</th>
		<td>${requestScope.prd.estAmount}</td>
		</tr>
		<tr>
		<tr>
		<th>IFSC Code</th>
		<td>${requestScope.bd.ifsc}</td>
		</tr>
		
		
		<tr>
		<th><u>INCOMEEXPENSE DETAILS </u></th>
		</tr>
		<tr>
		<th>Type Of Employment</th>
		<td>${requestScope.ied.typeOfEmployment}</td>
		</tr>
		<tr>
		<tr>
		<th>Organization Type</th>
		<td>${requestScope.ied.organizationType}</td>
		</tr>
		<tr>
		<th>Retirement Age</th>
		<td>${requestScope.ied.retirementAge}</td>
		</tr>
		<tr>
		<th>Employer name</th>
		<td>${requestScope.ied.employerName}</td>
		</tr>
		<tr>
		<tr>
		<th>Monthly Expense</th>
		<td>${requestScope.ied.monthlyExpense}</td>
		</tr>
		<br>
		
		
		<tr>	
		<th><u>LOAN AMOUNT</u></th></tr>
		<tr>
		<th>Loan Amount</th>
		<td>${requestScope.lad.loanAmount}</td>
		</tr>
		
		<tr>
		<th>Loan Tenure</th>
		<td>${requestScope.lad.loanTenure}</td>
		</tr>
		
		<tr>
		<th>Rate of Interest</th>
		<td>${requestScope.lad.rateOfInterest}</td>
		</tr>
		
		<tr>
		<th>Existing Emi</th>
		<td>${requestScope.lad.existingEmi}</td>
		</tr>
		
		<tr>
		<th>Status</th>
		<td>${requestScope.lad.status}</td>
		</tr>
		
		
 </table>
 </div>
 
 <%! String aadhar,pan,salary,voterid,noc,agreement; %>
 	
 	<%int custId=(int)session.getAttribute("custId"); %>
 	<% aadhar="/files/"+custId+"/"+custId+"aadhar.pdf";
 	pan="/files/"+custId+"/"+custId+"pan.pdf";
 	salary="/files/"+custId+"/"+custId+"salarySlip.pdf";
 	voterid="/files/"+custId+"/"+custId+"voterid.pdf";
 	noc="/files/"+custId+"/"+custId+"noc.pdf";
 	agreement="/files/"+custId+"/"+custId+"agreement.pdf";	
 %>
 <label>Aadhar Card</label><br>
 <a href="<c:url value="<%= aadhar %>" />" target=”_blank”>Aadhar Card</a><br>
 <label>Pan Card</label><br>
 <a href="<c:url value="<%= pan %>" />" target=”_blank”>Pan Card</a><br>
 <label>Salary slip</label><br>
 <a href="<c:url value="<%= salary %>" />" target=”_blank”>Salary slip</a><br>
 <label>Voter Id</label><br>
 <a href="<c:url value="<%= voterid %>" />" target=”_blank”>Voter Id</a><br>
 <label>Noc</label><br>
 <a href="<c:url value="<%= noc %>" />" target=”_blank”>Noc</a><br>
 <label>Agreement</label><br>
 <a href="<c:url value="<%= agreement %>" />" target=”_blank”>Agreement</a><br>
 <br><br>
 
</body>
</html>