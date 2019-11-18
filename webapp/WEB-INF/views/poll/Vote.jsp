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
<title>Azu</title>
</head>
<body id="page-top">
	<!-- header -->
	<c:import url="/WEB-INF/views/includes/navigation.jsp"></c:import>

	<!-- header -->
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>


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
		<br>
		<br>
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

	<!-- Footer -->
	<footer class="footer">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-md-4">
					<span class="copyright">Copyright &copy; Your Website 2019</span>
				</div>
				<div class="col-md-4">
					<ul class="list-inline social-buttons">
						<li class="list-inline-item"><a href="#"> <i
								class="fab fa-twitter"></i>
						</a></li>
						<li class="list-inline-item"><a href="#"> <i
								class="fab fa-facebook-f"></i>
						</a></li>
						<li class="list-inline-item"><a href="#"> <i
								class="fab fa-linkedin-in"></i>
						</a></li>
					</ul>
				</div>
				<div class="col-md-4">
					<ul class="list-inline quicklinks">
						<li class="list-inline-item"><a href="#">Privacy Policy</a></li>
						<li class="list-inline-item"><a href="#">Terms of Use</a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>

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
