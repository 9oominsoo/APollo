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

	
	
	
	<div id = "rateBarChart" class = "row">
	</div>				
					
	<div id="ratepieChart"class="row" style="padding-left: 30px; padding-right: 20px;">

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


	
	var majorId = '123';
	// 일렉션 넘버 고정값~
	var electionNo = '2' ;
	
	
	$.ajax({
		url : "${pageContext.request.contextPath }/statisticPage/AllMajor",
		type : "post",
		dataType : "json",
		success : function(list) {
			console.log(list);
			
			
			
		},
		error : function(XHR, status, error) {
			console.error(status + " : "
					+ error);
		}
	});
	
	$.ajax({
				url : "${pageContext.request.contextPath }/statisticPage/statisticPercent",
				type : "post",
				data : {
					electionNo : electionNo,
					majorId : majorId
				},
				dataType : "json",
				success : function(list) {
					console.log(list);
					
					
					
					barstr = "";
					barstr += "<div class='col-lg-12 mb-4'>";
					barstr += "<div class='card '>";
					barstr += "	<div class='card-header py-3'>";
					barstr += "		<h6 class='m-0 font-weight-bold text-primary'>"+majorId+"</h6>";
					barstr += "	</div>";
					barstr += "	<div class='card-body'>";
					
					for(var i = 0; i < list.length ; i++){
					
					barstr += "		<h4 class='small font-weight-bold'>Server Migration <span class='float-right'>"+list[i].percent+"%</span></h4>";
					barstr += "		<div class='progress mb-4'>";
					barstr += "			<div class='progress-bar bg-success' role='progressbar' style='width: "+list[i].percent+"%' aria-valuenow="+list[i].percent+" aria-valuemin='0' aria-valuemax='100'></div>";
					barstr += "		</div>";
					
					}
					barstr += "	</div>";
					barstr += "	</div>";
					barstr += "</div>";
					$('#rateBarChart').append(barstr);
					barstr = "";
				
				},
				error : function(XHR, status, error) {
					console.error(status + " : "
							+ error);
				}
	});

	
	// 이걸 major 별로 돌려야한다 ! 
	$.ajax({
				url : "${pageContext.request.contextPath }/statisticPage/countRate",
				type : "post",
				data : {
					electionNo : electionNo,
					majorId : majorId
				},
				dataType : "json",
				success : function(map) {
					console.log(map);
					

					var result = map
					console.log(Object.keys(result).length);
					piestr ="";
					piestr +=  "<div class='col-xl-4 col-lg-5 shadow'>";
					piestr += "<div class='card-header py-3 d-flex flex-row align-items-center justify-content-between'>";
					piestr += "	<h6 class='m-0 font-weight-bold text-primary'> "+majorId+" 공대 현재 투표 현황</h6>";
					piestr += "</div>";
					piestr += "<div class='card-body'>";
					piestr += "	<div class='chart-pie pt-4 pb-2'>";
					piestr += "		<canvas id='myPieChart"+majorId+"'></canvas>";
					piestr += "	</div>";
					piestr += "		<div class='mt-4 text-center small'>";
					piestr += "			<span class='mr-2' style= 'color:#4e73df'> <i  class='fas fa-circle'></i>투표 </span> ";
					piestr += "			<span class='mr-2' style= 'color:#FF0000'> <i  class='fas fa-circle'></i>미투표</span>";
					piestr += "			<span class='mr-2' style= 'color:#D8D6D6'> <i  class='fas fa-circle'></i>무응답</span>";
					piestr += "		</div>";
					piestr += "	</div>";
					piestr += "</div>";
					
					
					$('#ratepieChart').append(piestr);
					
					var vote = map.countRate;
					var notVote = map.allStudentOfMajor - map.countRate - map.studentNotNorMal;
					var noVote = map.studentNotNorMal;
					
					console.log(vote);
					console.log(notVote);
					console.log(noVote);
					
					// Pie Chart Example
					var ctx = document.getElementById("myPieChart"+majorId);
					var myPieChart1 = new Chart(ctx, {
					  type: 'doughnut',
					  data: {
					    labels: [ "미투표","투표", "무응답"],
					    datasets: [{
					      data: [notVote, vote ,noVote],
					      backgroundColor: [ '#FF0000','#4e73df', '#D8D6D6'],
					      hoverBackgroundColor: [ '#F38383' ,'#B4BAFA', '#666565'],
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
					
					
				},
				error : function(XHR, status, error) {
					console.error(status + " : "
							+ error);
				}
			});
	</script>



</body>
</html>