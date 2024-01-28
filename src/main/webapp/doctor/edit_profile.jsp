<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Specialist"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.SpecialistDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>doct profile edit page</title>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
body
{
  background-image: url("Components/img/bg.jpg");
}
</style>
<%@include file="../Components/AllCss.jsp"%>
</head>
<body>
	<c:if test="${empty doctObj }">
		<c:redirect url="../Doctor_Login.jsp"></c:redirect>
	</c:if>
	<%@include file="Navbar.jsp"%>

	<div class="container p-4">
		<div class="row">
			<div class="col-md-4">
				<div class="card paint-card">
					<p class="text-center fs-3 bg-primary">Change Password</p>
					<c:if test="${not empty SucMsg }">
						<p class="text-center text-success fs-3">${SucMsg}</p>
						<c:remove var="SucMsg" scope="session" />
					</c:if>

					<c:if test="${not empty errormsg }">
						<p class="text-center text-danger fs-5">${errormsg}</p>
						<c:remove var="errormsg" scope="session" />
					</c:if>
					<div class="card-body">
						<form action="../doctChangePassword" method="post">
							<div class="mb-3">
								<label>Enter New Password</label> <input type="text"
									name="newPassword" class="form-control" required>
							</div>

							<div class="mb-3">
								<label>Enter Old Password</label> <input type="text"
									name="oldPassword" class="form-control" required>
							</div>
							<input type="hidden" value="${doctObj.id }" name="uid">
							<button class="btn btn-success col-md-12">Change
								Password</button>
						</form>
					</div>
				</div>
			</div>
			<div class="col-md-5 offset-md-3">
				<div class="card paint-card">
				<p class="text-center fs-3 bg-primary">Edit Profile</p>
				<c:if test="${not empty SucMsgd }">
						<p class="text-center text-success fs-3">${SucMsgd}</p>
						<c:remove var="SucMsgd" scope="session" />
					</c:if>

					<c:if test="${not empty errormsgd }">
						<p class="text-center text-danger fs-5">${errormsgd}</p>
						<c:remove var="errormsgd" scope="session" />
					</c:if>
					<div class="card-body">
						<form action="../doctorUpdateProfile" method="post">
							<div class="mb-3">
								<label class="form-label">Full Name</label> <input type="text"
									required name="fullname" class="form-control" value="${doctObj.fullName}">
							</div>

							<div class="mb-3">
								<label class="form-label">DOB</label> <input type="date"
									required name="dob" class="form-control" value="${doctObj.dob}">
							</div>

							<div class="mb-3">
								<label class="form-label">Qualification</label> <input required
									name="qualification" type="text" class="form-control"value="${doctObj.qualification}">
							</div>
							<div class="mb-3">
								<label class="form-label">Specialist</label> <select name="spec"
									required class="form-control"value="${doctObj.specialist}">
									<option>--select--</option>

									<%
									SpecialistDao dao = new SpecialistDao(DBConnect.getConn());
									List<Specialist> list = dao.getAllSpecialist();
									for (Specialist s : list) {
									%>
									<option><%=s.getSpecialistName()%></option>
									<%
									}
									%>

								</select>
							</div>

							<div class="mb-3">
								<label class="form-label">Email</label> <input type="text"
									required name="email" class="form-control" readonly="readonly"value="${doctObj.email}">
							</div>

							<div class="mb-3">
								<label class="form-label">Mob No</label> <input type="text"
									required name="mobno" class="form-control"value="${doctObj.mobNo}">
							</div>
							<input type="hidden" name="id" value="${doctObj.id}">
							<button type="submit" class="btn btn-primary offset-md-5">Update</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="Footer.jsp"%>
</body>
</html>