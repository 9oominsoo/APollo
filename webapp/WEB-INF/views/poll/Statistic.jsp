<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Azu</title>

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

	<div class="row">

		<!-- Pie Chart -->
		<div class="col-xl-4 col-lg-5">
				<!-- Card Header - Dropdown -->
				<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
					<h6 class="m-0 font-weight-bold text-primary"> 00 공대 현재 투표 현황</h6>
					<div class="dropdown no-arrow">
						<a class="dropdown-toggle" href="#" role="button"
							id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i
							class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
						</a>
						<div
							class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
							aria-labelledby="dropdownMenuLink">
							<div class="dropdown-header">00 공대</div>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="#">00공학과 </a> <a
								class="dropdown-item" href="#">00공학과 </a> <a
								class="dropdown-item" href="#">00공학과 </a>
						</div>
					</div>
				</div>
				<!-- Card Body -->
				<div class="card-body">
					<div class="chart-pie pt-4 pb-2">
						<canvas id="myPieChart"></canvas>
					</div>
					<div class="mt-4 text-center small">
						<span class="mr-2"> <i class="fas fa-circle text-primary"></i>
							후보 1번
						</span> <span class="mr-2"> <i class="fas fa-circle text-success"></i>
							후보 2번
						</span> <span class="mr-2"> <i class="fas fa-circle text-info"></i>
							후보 3번
						</span>
					</div>
				</div>
		</div>
		<div class="col-xl-4 col-lg-5">
				<!-- Card Header - Dropdown -->
				<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
					<h6 class="m-0 font-weight-bold text-primary"> 00 공대 현재 투표 현황</h6>
					<div class="dropdown no-arrow">
						<a class="dropdown-toggle" href="#" role="button"
							id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i
							class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
						</a>
						<div
							class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
							aria-labelledby="dropdownMenuLink">
							<div class="dropdown-header">00 공대</div>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="#">00공학과 </a> <a
								class="dropdown-item" href="#">00공학과 </a> <a
								class="dropdown-item" href="#">00공학과 </a>
						</div>
					</div>
				</div>
				<!-- Card Body -->
				<div class="card-body">
					<div class="chart-pie pt-4 pb-2">
						<canvas id="myPieChart"></canvas>
					</div>
					<div class="mt-4 text-center small">
						<span class="mr-2"> <i class="fas fa-circle text-primary"></i>
							후보 1번
						</span> <span class="mr-2"> <i class="fas fa-circle text-success"></i>
							후보 2번
						</span> <span class="mr-2"> <i class="fas fa-circle text-info"></i>
							후보 3번
						</span>
					</div>
				</div>
		</div>
		<div class="col-xl-4 col-lg-5">
				<!-- Card Header - Dropdown -->
				<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
					<h6 class="m-0 font-weight-bold text-primary"> 00 공대 현재 투표 현황</h6>
					<div class="dropdown no-arrow">
						<a class="dropdown-toggle" href="#" role="button"
							id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i
							class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
						</a>
						<div
							class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
							aria-labelledby="dropdownMenuLink">
							<div class="dropdown-header">00 공대</div>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="#">00공학과 </a> <a
								class="dropdown-item" href="#">00공학과 </a> <a
								class="dropdown-item" href="#">00공학과 </a>
						</div>
					</div>
				</div>
				<!-- Card Body -->
				<div class="card-body">
					<div class="chart-pie pt-4 pb-2">
						<canvas id="myPieChart"></canvas>
					</div>
					<div class="mt-4 text-center small">
						<span class="mr-2"> <i class="fas fa-circle text-primary"></i>
							후보 1번
						</span> <span class="mr-2"> <i class="fas fa-circle text-success"></i>
							후보 2번
						</span> <span class="mr-2"> <i class="fas fa-circle text-info"></i>
							후보 3번
						</span>
					</div>
				</div>
		</div>
	</div>
	
	  <!-- Footer -->
  <footer class="footer">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-md-4">
          <span class="copyright">Copyright &copy; Your Website 2019</span>
        </div>
        <div class="col-md-4">
          <ul class="list-inline social-buttons">
            <li class="list-inline-item">
              <a href="#">
                <i class="fab fa-twitter"></i>
              </a>
            </li>
            <li class="list-inline-item">
              <a href="#">
                <i class="fab fa-facebook-f"></i>
              </a>
            </li>
            <li class="list-inline-item">
              <a href="#">
                <i class="fab fa-linkedin-in"></i>
              </a>
            </li>
          </ul>
        </div>
        <div class="col-md-4">
          <ul class="list-inline quicklinks">
            <li class="list-inline-item">
              <a href="#">Privacy Policy</a>
            </li>
            <li class="list-inline-item">
              <a href="#">Terms of Use</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </footer>


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