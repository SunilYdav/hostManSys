<%@page import="com.entity.Doctor"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.dao.AppointmentDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor DashBoard</title>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}

</style>
<%@include file="../Components/AllCss.jsp"%>
</head>
<body>
	<c:if test="${empty doctObj }">
		<c:redirect url="../Doctor_Login.jsp"></c:redirect>
	</c:if>
	<%@include file="Navbar.jsp"%>
	
	<div class="container p-5">
		<p class="text-center fs-3 fw-bold text-primary">Doctor Dashboard</p>
		<c:if test="${not empty SucMsg }">
			<p class="text-center text-success fs-3">${ SucMsg }</p>
			<c:remove var="SucMsg" scope="session" />
		</c:if>
		<c:if test="${not empty errormsg }">
			<p class="text-center text-danger fs-3">${ errormsg }</p>
			<c:remove var="errormsg" scope="session" />
		</c:if>
		<%
		DoctorDao dao = new DoctorDao(DBConnect.getConn());
		%>
		<div class="row">
			<div class="col-md-4 offset-md-2">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="fas fa-user-md fa-3x"></i><br>
						<p class="fs-4 text-center">
							Doctor<br><%=dao.countDoctor() %>
						</p>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="fas fa-calendar-check fa-3x"></i><br>
						<p class="fs-4 text-center">
							Total Appointment<br><%=dao.countAppointment() %>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="Footer.jsp"%>
</body>
</html>