<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML>

<html>
	<head>
		<title>Apollo</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	</head>
	<body>
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
		</div>
	</section>
	
		<!-- header -->
		<c:import url="/WEB-INF/views/includes/modal.jsp"></c:import>
	</body>
</html>
