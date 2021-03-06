<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	pageContext.setAttribute("newLine", "\n");
%>

<!-- Bootstrap core CSS -->
<link href="${pageContext.request.contextPath }/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom fonts for this template -->
<link href="${pageContext.request.contextPath }/assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath }/assets/css/agency.css" rel="stylesheet">

<!-- Bootstrap core JavaScript -->
<script src="${pageContext.request.contextPath }/assets/vendor/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath }/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	
<!-- Plugin JavaScript -->
<script src="${pageContext.request.contextPath }/assets/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Page level plugins --> 
<script src="${pageContext.request.contextPath }/assets/vendor/chart.js/Chart.min.js"></script>

<!-- Contact form JavaScript -->
<script src="${pageContext.request.contextPath }/assets/js/jqBootstrapValidation.js"></script>
<script src="${pageContext.request.contextPath }/assets/js/contact_me.js"></script>

<!-- Custom scripts for this template -->
<script src="${pageContext.request.contextPath }/assets/js/agency.min.js"></script>


<!-- Page level custom scripts -->
<script src="${pageContext.request.contextPath }/assets/js/demo/chart-area-demo.js"></script>
<script src="${pageContext.request.contextPath }/assets/js/demo/chart-pie-demo.js"></script>

<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
	<div class="container">
		<a class="navbar-brand js-scroll-trigger" href="#page-top">Apollo</a>
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
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					data-target="#login-modal" data-toggle="modal">로그인</a></li>
			</ul>
		</div>
	</div>
</nav>