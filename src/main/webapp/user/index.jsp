<%@page import="com.db.DBConnect"%>
<%@page import=" java.sql.Connection"%>
<%@page import=" java.sql.SQLException"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index pages</title>
<%@include file="/Components/AllCss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}

#a {
	height: 320px;
}
#b
{
height:270px
}
</style>
</head>
<body>
	<%@include file="Navbar.jsp"%>

	<div id="carouselExampleIndicators" class="carousel slide"
		data-bs-ride="carousel" data-bs-interval="2000" style="height: 660px;">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="../Components/img/host1.jpg" class="d-block w-100 " alt="..."
					style="height: 660px">
			</div>
			<div class="carousel-item">
				<img src="../Components/img/hos2.jpg" class="d-block w-100 " alt="..."
					style="height: 660px">
			</div>
			<div class="carousel-item">
				<img src="../Components/img/hos3.jpg" class="d-block w-100 " alt="..."
					style="height: 660px">
			</div>
		</div>
	</div>
	<div class="container p-3">
		<p class="text-center fs-2 bg-success">KEY FEATURES Of OUR
			HOSPITAL</p>
		<div class="row">
			<div class="col-md-12 p-5">
				<div class="row">
					<div class="col-md-3 ">
						<div class="card paint-card">
							<div class="card-body text-center" id="b">
								<p class="fw-bold fs-5 ">NEURO SCIENCES</p>
								<img alt="dieases " src="../Components/img/s5.jpg">
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="card paint-card">
							<div class="card-body text-center "id="b">
								<p class="fw-bold fs-5">General Medicine</p>
								<img alt="" src="../Components/img/s6.jpg">
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="card paint-card">
							<div class="card-body text-center "id="b">
								<p class="fw-bold fs-5">ACCIDENT & TRAUMA</p>
								<img alt="" src="../Components/img/s7.jpg">
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="card paint-card">
							<div class="card-body text-center "id="b">
								<p class="fw-bold fs-5">DENTAL & CRANIO</p>
								<img alt="" src="../Components/img/s.jpg">
							</div>
						</div>
					</div>
					<div class="col-md-3 mt-2">
						<div class="card paint-card">
							<div class="card-body text-center"id="b">
								<p class="fw-bold fs-5 ">Orthopedics</p>
								<img alt="dieases " src="../Components/img/s1.jpg">
							</div>
						</div>
					</div>
					<div class="col-md-3 mt-2">
						<div class="card paint-card">
							<div class="card-body text-center "id="b">
								<p class="fw-bold fs-5">PHYSIOTHERAPY & REHABILITATION & OCCUPATIONAL</p>
								<img alt="" src="../Components/img/s4.jpg">
							</div>
						</div>
					</div>
					<div class="col-md-3 mt-2">
						<div class="card paint-card">
							<div class="card-body text-center "id="b">
								<p class="fw-bold fs-5">PLASTIC & COSMETIC SURGERY</p>
								<img alt="" src="../Components/img/s3.jpg">
							</div>
						</div>
					</div>
					<div class="col-md-3 mt-2">
						<div class="card paint-card">
							<div class="card-body text-center "id="b">
								<p class="fw-bold fs-5">GI & GENERAL SURGERY</p>
								<img alt="" src="../Components/img/s2.jpg">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container p-2">
		<p class="text-center fs-2 bg-success">OUR TEAM</p>
		<div class="row">
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center" id="a">
						<img alt="doctor img" src="../Components/img/a.jpg">
						<p class="fw-bold fs-5 ">Dr. Deepu N.K</p>
						<p class="fs-7 ">(Consultant Plastic & Cosmetic Surgeon)</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center" id="a">
						<img alt="doctor img" src="../Components/img/a1.jpg">
						<p class="fw-bold fs-5 ">DR. Nutan Kumar D M</p>
						<p class="fs-7 ">(Consultant Interventional Cardiologist)</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center" id="a">
						<img alt="doctor img" src="../Components/img/a2.jpg">
						<p class="fw-bold fs-5 ">Dr. Nanda Kishor K M</p>
						<p class="fs-7 ">(Microendodontist and Cosmetic Dentist)</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center" id="a">
						<img alt="doctor img" src="../Components/img/a4.jpg">
						<p class="fw-bold fs-5 ">Dr. Thomas Chandy</p>
						<p class="fs-7 ">(Consultant Neuro and Spine Surgeon
							Specalist)</p>
					</div>
				</div>
			</div>
			<div class="col-md-3 mt-2">
				<div class="card paint-card">
					<div class="card-body text-center" id="a">
						<img alt="doctor img" src="../Components/img/a5.jpg">
						<p class="fw-bold fs-5 ">Dr. Deepu</p>
						<p class="fs-7 ">(Consultant Plastic & Cosmetic Surgeon)</p>
					</div>
				</div>
			</div>
			<div class="col-md-3 mt-2">
				<div class="card paint-card">
					<div class="card-body text-center" id="a">
						<img alt="doctor img" src="../Components/img/a6.jpg">
						<p class="fw-bold fs-5 ">DR. Nutan Kumar D M</p>
						<p class="fs-7 ">(Consultant Interventional Cardiologist)</p>
					</div>
				</div>
			</div>
			<div class="col-md-3 mt-2">
				<div class="card paint-card">
					<div class="card-body text-center" id="a">
						<img alt="doctor img" src="../Components/img/a7.jpg">
						<p class="fw-bold fs-5 ">Dr. Nanda Kishor K M</p>
						<p class="fs-7 ">(Microendodontist and Cosmetic Dentist)</p>
					</div>
				</div>
			</div>
			<div class="col-md-3 mt-2">
				<div class="card paint-card">
					<div class="card-body text-center" id="a">
						<img alt="doctor img" src="../Components/img/a8.jpg">
						<p class="fw-bold fs-5 ">Dr. Thomas Chandy</p>
						<p class="fs-7 ">(Consultant Neuro and Spine Surgeon
							Specalist)</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="Footer.jsp"%>
</body>
</html>