<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	pageContext.setAttribute("newLine", "\n");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Agency - Start Bootstrap Theme</title>

<!-- Bootstrap core CSS -->
<link
	href="${pageContext.request.contextPath }/assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom fonts for this template -->
<link
	href="${pageContext.request.contextPath }/assets/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Kaushan+Script'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700'
	rel='stylesheet' type='text/css'>

<!-- Custom styles for this template -->
<link
	href="${pageContext.request.contextPath }/assets/css/agency.min.css"
	rel="stylesheet">
</head>
<body id="page-top">

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
		<div class="container">
			<a class="navbar-brand js-scroll-trigger" href="#page-top">아주 그냥
				아주대학교</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav text-uppercase ml-auto">
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#about">공약 다시 보기</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#team">후보군 선택하기</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#contact">약관</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Header -->
	<header class="masthead">
		<div class="container">
			<div class="intro-text">
				<div class="intro-lead-in">소중한 여러분의 한표</div>
				<div class="intro-heading text-uppercase">여러분이 학교의 주인입니다~</div>
				<a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger"
					href="#services">약관 확인 </a>
			</div>
		</div>
	</header>

	<section class="bg-light page-section" id="team">
		<!-- Team2 두명 이상일 -->
		<div class="row">
			<div class="col-sm-6">
					<div class="container">
						<div class="row">
							<div class="col-lg-12 text-center">
								<h2 class="section-heading text-uppercase">후보 1번</h2>
								<h3 class="section-subheading text-muted">사랑과 평화</h3>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-6">
								<div class="team-member">
									<img class="mx-auto rounded-circle"
										src="${pageContext.request.contextPath }/assets/img/team/1.jpg"
										alt="">
									<h4>Kay Garland</h4>
									<p class="text-muted">Lead Designer</p>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="team-member">
									<img class="mx-auto rounded-circle"
										src="${pageContext.request.contextPath }/assets/img/team/2.jpg"
										alt="">
									<h4>Larry Parker</h4>
									<p class="text-muted">Lead Marketer</p>

								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-8 mx-auto text-center">
								<p class="large text-muted">이러쿵 저러쿵 공약</p>
							</div>
						</div>
						<div class="row">

							<button data-target="#lg-modal" data-toggle="modal"
								class="btn btn-warning">선택하기</button>
						</div>
					</div>
			</div>
			<div class="col-sm-6">
					<div class="container">
						<div class="row">
							<div class="col-lg-12 text-center">
								<h2 class="section-heading text-uppercase">후보 2번</h2>
								<h3 class="section-subheading text-muted">별처럼 수 많은</h3>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-6">
								<div class="team-member">
									<img class="mx-auto rounded-circle"
										src="${pageContext.request.contextPath }/assets/img/team/1.jpg"
										alt="">
									<h4>Kay Garland</h4>
									<p class="text-muted">Lead Designer</p>

								</div>
							</div>
							<div class="col-sm-6">
								<div class="team-member">
									<img class="mx-auto rounded-circle"
										src="${pageContext.request.contextPath }/assets/img/team/2.jpg"
										alt="">
									<h4>Larry Parker</h4>
									<p class="text-muted">Lead Marketer</p>

								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-lg-8 mx-auto text-center">
								<p class="large text-muted">전교생의 등록금을 제가 내겠습니다!!!</p>
							</div>
						</div>
						<div class="row">

							<button data-target="#lg-modal" data-toggle="modal"
								class="btn btn-warning">선택하기</button>
						</div>
					</div>
			</div>
		</div>
		<br><br>
		<!-- Team2 두명 이상일 -->
		<div class="row">
			<div class="col-sm-6">
					<div class="container">
						<div class="row">
							<div class="col-lg-12 text-center">
								<h2 class="section-heading text-uppercase">후보 1번</h2>
								<h3 class="section-subheading text-muted">사랑과 평화</h3>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-6">
								<div class="team-member">
									<img class="mx-auto rounded-circle"
										src="${pageContext.request.contextPath }/assets/img/team/1.jpg"
										alt="">
									<h4>Kay Garland</h4>
									<p class="text-muted">Lead Designer</p>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="team-member">
									<img class="mx-auto rounded-circle"
										src="${pageContext.request.contextPath }/assets/img/team/2.jpg"
										alt="">
									<h4>Larry Parker</h4>
									<p class="text-muted">Lead Marketer</p>

								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-8 mx-auto text-center">
								<p class="large text-muted">이러쿵 저러쿵 공약</p>
							</div>
						</div>
						<div class="row">

							<button data-target="#lg-modal" data-toggle="modal"
								class="btn btn-warning">선택하기</button>
						</div>
					</div>
			</div>
			<div class="col-sm-6">
					<div class="container">
						<div class="row">
							<div class="col-lg-12 text-center">
								<h2 class="section-heading text-uppercase">후보 2번</h2>
								<h3 class="section-subheading text-muted">별처럼 수 많은</h3>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-6">
								<div class="team-member">
									<img class="mx-auto rounded-circle"
										src="${pageContext.request.contextPath }/assets/img/team/1.jpg"
										alt="">
									<h4>Kay Garland</h4>
									<p class="text-muted">Lead Designer</p>

								</div>
							</div>
							<div class="col-sm-6">
								<div class="team-member">
									<img class="mx-auto rounded-circle"
										src="${pageContext.request.contextPath }/assets/img/team/2.jpg"
										alt="">
									<h4>Larry Parker</h4>
									<p class="text-muted">Lead Marketer</p>

								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-lg-8 mx-auto text-center">
								<p class="large text-muted">전교생의 등록금을 제가 내겠습니다!!!</p>
							</div>
						</div>
						<div class="row">

							<button data-target="#lg-modal" data-toggle="modal"
								class="btn btn-warning">선택하기</button>
						</div>
					</div>
			</div>
		</div>
	</section>

	<!-- 확인 버튼 누를시 나오는 모달 창  -->
	<div id="lg-modal" class="modal fade" tabindex="-1">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myLargeModalLabel">후보 n번</h4>
				</div>
				<div class="modal-body">
					<div class="panel">
						<div class="panel-heading">
							<h3 class="panel-title">후보 n</h3>
						</div>
						<div class="panel-body">
							<p class="text-main text-bold mar-no bord-btm">이 후보군을 선택하시
								겠습니까?</p>
							<div class="row">
								<div class="col-sm-6">
									<div class="team-member">
										<img class="mx-auto rounded-circle"
											src="${pageContext.request.contextPath }/assets/img/team/1.jpg"
											alt="">
										<h4>Kay Garland</h4>
										<p class="text-muted">Lead Designer</p>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="team-member">
										<img class="mx-auto rounded-circle"
											src="${pageContext.request.contextPath }/assets/img/team/2.jpg"
											alt="">
										<h4>Larry Parker</h4>
										<p class="text-muted">Lead Marketer</p>

									</div>
								</div>
							</div>
							<br> <br>


							<button id="insertVote" data-target="#lg-modal" type="submit"
								data-toggle="modal" class="btn  btn-warning">투표하기</button>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap core JavaScript -->
	<script
		src="${pageContext.request.contextPath }/assets/vendor/jquery/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Plugin JavaScript -->
	<script
		src="${pageContext.request.contextPath }/assets/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Page level plugins -->
	<script
		src="${pageContext.request.contextPath }/assets/vendor/chart.js/Chart.min.js"></script>

	<!-- Contact form JavaScript -->
	<script
		src="${pageContext.request.contextPath }/assets/js/jqBootstrapValidation.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/js/contact_me.js"></script>

	<!-- Custom scripts for this template -->
	<script
		src="${pageContext.request.contextPath }/assets/js/agency.min.js"></script>


	<!-- Page level custom scripts -->
	<script
		src="${pageContext.request.contextPath }/assets/js/demo/chart-area-demo.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/js/demo/chart-pie-demo.js"></script>

</body>
</html>
