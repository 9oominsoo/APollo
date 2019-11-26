<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
	<!-- header -->
	<c:import url="/WEB-INF/views/includes/navigation.jsp"></c:import>

	<!-- header -->
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>

	
	
	
					<!-- Project Card Example -->
					<div class="  mb-4">
					
					
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">Projects</h6>
						</div>
						<div class="card-body">
							<h4 class="small font-weight-bold">
								Server Migration <span class="float-right">60%</span>
							</h4>
							<div class="progress mb-4">
								<div class="progress-bar bg-danger" role="progressbar"
									style="width: 60%" aria-valuenow="60" aria-valuemin="0"
									aria-valuemax="100"></div>
							</div>
							<h4 class="small font-weight-bold">
								Sales Tracking <span class="float-right">40%</span>
							</h4>
							<div class="progress mb-4">
								<div class="progress-bar bg-warning" role="progressbar"
									style="width: 40%" aria-valuenow="40" aria-valuemin="0"
									aria-valuemax="100"></div>
							</div>
							<h4 class="small font-weight-bold">
								Customer Database <span class="float-right">60%</span>
							</h4>
							<div class="progress mb-4">
								<div class="progress-bar" role="progressbar" style="width: 60%"
									aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
							</div>
						</div>
					</div>
					
					<div class="card mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">Projects</h6>
						</div>
						<div class="card-body">
							<h4 class="small font-weight-bold">
								Server Migration <span class="float-right">60%</span>
							</h4>
							<div class="progress mb-4">
								<div class="progress-bar bg-danger" role="progressbar"
									style="width: 60%" aria-valuenow="60" aria-valuemin="0"
									aria-valuemax="100"></div>
							</div>
							<h4 class="small font-weight-bold">
								Sales Tracking <span class="float-right">40%</span>
							</h4>
							<div class="progress mb-4">
								<div class="progress-bar bg-warning" role="progressbar"
									style="width: 40%" aria-valuenow="40" aria-valuemin="0"
									aria-valuemax="100"></div>
							</div>
							<h4 class="small font-weight-bold">
								Customer Database <span class="float-right">60%</span>
							</h4>
							<div class="progress mb-4">
								<div class="progress-bar" role="progressbar" style="width: 60%"
									aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
							</div>
						</div>
					</div>

	<div class="row" style="padding-left: 30px; padding-right: 20px;">

		<!-- Pie Chart -->
		<div class="col-xl-4 col-lg-5 shadow">
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
		<div class="col-xl-4 col-lg-5 shadow">
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
		<div class="col-xl-4 col-lg-5 shadow">
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
	
	<script type="text/javascript">
	
	
	// Set new default font family and font color to mimic Bootstrap's default styling
	Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
	Chart.defaults.global.defaultFontColor = '#858796';

	// Pie Chart Example
	var ctx = document.getElementById("myPieChart");
	var myPieChart = new Chart(ctx, {
	  type: 'doughnut',
	  data: {
	    labels: ["Direct", "Referral", "Social"],
	    datasets: [{
	      data: [55, 30, 15],
	      backgroundColor: ['#4e73df', '#1cc88a', '#36b9cc'],
	      hoverBackgroundColor: ['#2e59d9', '#17a673', '#2c9faf'],
	      hoverBorderColor: "rgba(234, 236, 244, 1)",
	    }],
	  },
	  options: {
	    maintainAspectRatio: false,
	    tooltips: {
	      backgroundColor: "rgb(255,255,255)",
	      bodyFontColor: "#858796",
	      borderColor: '#dddfeb',
	      borderWidth: 1,
	      xPadding: 15,
	      yPadding: 15,
	      displayColors: false,
	      caretPadding: 10,
	    },
	    legend: {
	      display: false
	    },
	    cutoutPercentage: 80,
	  },
	});
	
	var majorId = '123';
	// 일렉션 넘버 고정값~
	var electionNo = '2' ;
	
	
	$.ajax({
				url : "${pageContext.request.contextPath }/statisticPage/statisticPercent",
				type : "post",
				data : {
					electionNo : electionNo
				},
				dataType : "json",
				success : function(map) {
					console.log(map);

					var result = map
					
					console.log(map[123]);
					
					console.log(Object.keys(result).length);
					
					console.log(map.key(0));
					console.log(map[123].length);
					
					
					
					
					
					
				},
				error : function(XHR, status, error) {
					console.error(status + " : "
							+ error);
				}
			});

	</script>



</body>
</html>