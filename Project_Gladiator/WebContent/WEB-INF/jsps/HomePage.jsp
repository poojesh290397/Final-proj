<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<spring:url value="/resources/css/homepage.css" var="mainCss" />
<link href="${mainCss}" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HomePage</title>
</head>
<body>
<jsp:include page="nav.jsp" />
<!-- Slide Show -->
<div class="carousal" height="30%">
    <section>
      <img class="mySlides" src="${pageContext.request.contextPath}/resources/img/carousalimg2.jpg" style="width:100%">
      <img class="mySlides" src="${pageContext.request.contextPath}/resources/img/loan2.jpeg" style="width:100%">
      <img class="mySlides" src="${pageContext.request.contextPath}/resources/img/19img.jpg" style="width:100%">
    </section>
<script>
// Automatic Slideshow - change image every 3 seconds
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}
  x[myIndex-1].style.display = "block";
  setTimeout(carousel, 2000);
}
</script>
</div>
<br>
<br>
<div class="product-overview-article">
  <h2><center>FEATURES</center></h2>
<li>PRADHAN MANTRI AWAS YOJNA<li>
  <li>DUE DILIGENCE</li>
  <li>EASY BALANCE TRANSFER FACILITY</li>
  <li>BUILD A CREDIT HISTORY</li>
  <li>TAX BENEFIT</li>
  <li>MINIMAL DOCUMENTATION</li>
</div>
  <div class="feature-left">
       <h2><center>DOCUMENTS REQUIRED</center></h2>
          <li>Pan Card</li>
          <li>Aadhar Card</li>
          <li>Salary Slip</li>
          <li>Voter Id</li>
          <li>NOC</li>
          <li>Agreement</li>
  </div>
<br>
<br>
<br>

<footer>
   <div class="footer">
          <div class="left">
            <br>
               <img src="${pageContext.request.contextPath}/resources/img/shelterlogo.jpg" height="140" width="140">
                <p>We are one of the leading financial services company 
                  focused on lending, asset management, wealth management 
                    and insurance.We are  classified as a Systemically Important
                  Non–deposit taking NBFC as per RBI Regulations.</p>
          </div>
   
   
   <div class="right">
        <p> Contact Us here</p>
    <p><a href="sheltercarefin@gmail.com">sheltercarefin@gmail.com</a></p>
    <p><a href="9891236789">9891236789</a></p>
    <p>
      <a href="https://www.twitter.com">
    <img border="0" src="${pageContext.request.contextPath}/resources/img/twitter-logo.png" width="30" height="30">
    </a>
    <a href="https://www.linkedin.com">
    <img border="0" src="${pageContext.request.contextPath}/resources/img/linkedin-logo.png" width="30" height="30">
    </a>
    </p>
    <p>&copy;Shelter Care Finance Ltd.</p>
   </div>
 </div>
</footer>
</body>
</html>