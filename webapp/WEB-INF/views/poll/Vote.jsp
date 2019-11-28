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
	<div style="padding-left: 30px; padding-right: 20px;">
			<!-- Team2 두명 이상일 -->
			<div id="selectParty"></div>
			<br> 
			<br>
			<br>
			<br>
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading text-uppercase">기권하기</h2>
					<h3 class="section-subheading text-muted"> 기권 또한 여러분의 소중한 한표입니다.</h3>
				<button id="abstentionButton"  class="btn  btn-warning">기권하기</button>
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
	<div id="lg-modal1" class="modal fade" tabindex="-1">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header" id="modalHeader">
					
				</div>
				<div class="modal-body">
					<div class="panel">
						<div class="panel-heading">
							<h3 class="panel-title">후보</h3>
						</div>
						<div class="panel-body text-center">
							<p class="text-main text-bold mar-no bord-btm">이 후보군을 선택하시
								겠습니까?</p>
							<div class="row" id="modalDetail">
								
							</div>
							<br> <br>
							<button id="finalButton"  class="btn  btn-warning">투표하기</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
	
		//user 의 메이저 아이디를 가지고 오자
		var studentId = '201520867';
		var majorId = '123';
		// 일렉션 넘버 고정값~
		var electionNo = '2' ;
		
		modalstr = "";
		voteList = "";
		
		$("document").ready(function() {
							console.log('start javascript');
							
							
							$.ajax({
										url : "${pageContext.request.contextPath }/votePage/searchParty",
										type : "post",
										data : {
											majorId : majorId
										},
										dataType : "json",
										success : function(list) {
											console.log(list.length);
											console.log(list);
											
											if(list.length >= 1){
												for (var i = 0; i < list.length; i++) {
													console.log(list[i].partyId);
													var partyId = list[i].partyId;
													var partyName = list[i].partyName;
													var collegeName = list[i].collegeName;
													var collegeLine = list[i].collegeLine;
													var collegeType = list[i].collegeType;
													var electionNo = list[i].electionNo;

													console.log(collegeName);
													console.log(collegeLine);
													console.log(collegeType);
													
													candidateList(list[i], i);
													
												}
											}else{
												alert("후보군이 없습니다 ! ");
												
											}
											
										

										},
										error : function(XHR, status, error) {
											console.error(status + " : "
													+ error);
										}
							});
							
		})
	
	function candidateList(list, no){
		var partyId = list.partyId;
		console.log(partyId);
		console.log(no);
		no = no+1;
		
		$.ajax({
			url : "${pageContext.request.contextPath }/votePage/partyDetailList",
			type : "post",
			data : {
				partyId : partyId
			},
			dataType : "json",
			success : function(list2) {
				console.log(list2.length);
				console.log(list2);

				
				
				voteList += "<div class='row'>"
				voteList += "	<div class='container'>"
				voteList += "		<div class='row'>"
				voteList += "			<div class='col-lg-12 text-center'>"
				voteList += "				<h2 class='section-heading text-uppercase'>후보 "+ no + "번</h2>"
				voteList += "				<h3 class='section-subheading text-muted'>"+ list.partyName + "</h3>"
				voteList += "			</div>"
				voteList += "		</div>"
				voteList += "		<div class='row'>"
				voteList += "			<div class='col-sm-6'>"
				voteList += "				<div class='team-member'>"
				voteList += "					<img class='mx-auto rounded-circle'src="+ list2[0].repImg + " alt=''>"
				voteList += "					<h4>"+ list2[0].roll + "</h4>"
				voteList += "					<p class='text-muted'>"+ list2[0].studentName + "</p>"
				voteList += "				</div>"
				voteList += "			</div>"
				voteList += "			<div class='col-sm-6'>"
				voteList += "				<div class='team-member'>"
				voteList += "					<img class='mx-auto rounded-circle'src="+ list2[1].repImg + "  alt=''>"
				voteList += "					<h4>"+ list2[1].roll+ "</h4>"
				voteList += "					<p class='text-muted'>" + list2[1].studentName + "</p>"
				voteList += "				</div>"
				voteList += "			</div>"
				voteList += "		</div>"
				voteList += "		<div class='row'>"
				voteList += "			<div class='col-lgs-8 mx-auto text-center'>"
				voteList += "				<p class='large text-muted'>" + "<"+list.collegeName+">" + list.collegeLine + "-" + list.collegeType + "</p>"
				voteList += "			</div>"
				voteList += "		</div>"
				voteList += "		<div class='row'>"
				//데이터 번호 넘겨줘야 모달창에서 띄워줄 수 있음 
				voteList += "			<div class='col-lg-12 text-center'>"
				voteList += "				<button data-target=''#lg-modal' data-toggle='modal' class='btn btn-warning' id='partyButton"+partyId+"' data-partyno="+partyId+">선택하기</button>"
				voteList += "			</div>"
				voteList += "		</div>"
				voteList += "	</div>"
				voteList += "</div>"
				voteList += "<br>"
				voteList += "<br>"
				voteList += "<br>"
				voteList += "<br>"
				
				
				
				
				
				
				
				$("#selectParty").append(voteList);	
				console.log(voteList);
				voteList ="";
				
				$("#partyButton"+partyId).on("click", function() {
					console.log("hot"+partyId);
					
					$("#modalHeader").html("<h4 class='modal-title' id='myLargeModalLabel'>후보  "+list.partyName+"</h4>")
					$("#modalDetail").html("");
					
					modalstr += 	"<div class='col-sm-6'>"
					modalstr += 		"<div class='team-member'>"
					modalstr +=				"<img class='mx-auto rounded-circle' src="+ list2[0].repImg + " alt=''>"
					modalstr +=				"<h4>"+ list2[0].roll + "</h4>"
					modalstr +=				"<p class='text-muted'>"+ list2[0].studentName + "</p>"
					modalstr +=			"</div>"
					modalstr +=		"</div>"
					modalstr += 	"<div class='col-sm-6'>"
					modalstr += 		"<div class='team-member'>"
					modalstr +=				"<img class='mx-auto rounded-circle' src="+ list2[1].repImg + " alt=''>"
					modalstr +=				"<h4>"+ list2[1].roll + "</h4>"
					modalstr +=			"<p class='text-muted'>"+ list2[1].studentName + "</p>"
					modalstr +=			"</div>"
					modalstr +=		"</div>"
					
					$("#modalDetail").html(modalstr);
					
					
					$("#lg-modal1").modal('show');
					console.log("vote ");
					$this = $(this);
					console.log($this);
					var partyno = $this.data("partyno");
					console.log(partyno);

				
					
					modalstr = "";

					$("#finalButton").on("click",function() {
										console.log(partyno);
										console.log(electionNo);
										console.log(majorId);
										console.log(studentId);
										
										$.ajax({
											url : "${pageContext.request.contextPath }/votePage/voteMan",
											type : "post",
											data : {
												studentId : studentId,
												partyId : partyId,
												electionNo : electionNo
											},
											dataType : "json",
											success : function(success) {
												console.log(success);
												if(success == 1){
													alert(" 투표가 완료되었습니다~. ")
													window.location.href = "${pageContext.request.contextPath }/main";

												}else{
													alert(" 오류  ")
													window.location.href = "${pageContext.request.contextPath }/main";

												}
											
											},
											error : function(XHR,status,error) {
												console.error(status+ " : "+ error);
											}
										});
						})
						
				});
				
			},
			error : function(
					XHR,
					status,
					error) {
				console
						.error(status
								+ " : "
								+ error);
			}
		});
		
	}
		$('#abstentionButton').on("click",function(){
			console.log("abstentionButton is exist");
			
			$.ajax({
				url : "${pageContext.request.contextPath }/votePage/abstentionButton",
				type : "post",
				data : {
					studentId : studentId,
					electionNo : electionNo
				},
				dataType : "json",
				success : function(success) {
					console.log(success);
					if(success == 1){
						alert(" 투표가 완료되었습니다~. ")
						window.location.href = "${pageContext.request.contextPath }/main";
					}else{
						alert(" 오류  ")
						window.location.href = "${pageContext.request.contextPath }/main";
					}
				},
				error : function(XHR,status,error) {
					console.error(status+ " : "+ error);
				}
			});
		});
	</script>

	<!-- Bootstrap core JavaScript -->
	<script
		src="${pageContext.request.contextPath }/assets/vendor/jquery/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Plugin JavaScript -->
	<script
		src="${pageContext.request.contextPath }/assets/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Contact form JavaScript -->
	<script
		src="${pageContext.request.contextPath }/assets/js/jqBootstrapValidation.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/js/contact_me.js"></script>

	<!-- Custom scripts for this template -->
	<script
		src="${pageContext.request.contextPath }/assets/js/agency.min.js"></script>



</body>
</html>
