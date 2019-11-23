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
			<br> <br>


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
							<div class="row " id="modalDetail">
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
							<button id="finalButton" data-target="#lg-modal" type="submit"
								data-toggle="modal" class="btn  btn-warning">투표하기</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$("document").ready(
						function() {
							console.log('start javascript');
							modalstr = ""
							
							//user 의 메이저 아이디를 가지고 오자
							var studentId = '201520867'
							var majorId = '123';
							// 일렉션 넘버 고정값~
							var electionNo = '2' ;
							
							voteList = "";
							$
									.ajax({
										url : "${pageContext.request.contextPath }/votePage/searchParty",
										type : "post",
										data : {
											majorId : majorId
										},
										dataType : "json",
										success : function(list) {
											console.log(list.length);
											console.log(list);

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
												$
														.ajax({
															url : "${pageContext.request.contextPath }/votePage/partyDetailList",
															type : "post",
															data : {
																partyId : partyId
															},
															dataType : "json",
															success : function(
																	list2) {
																console
																		.log(list2.length);
																console
																		.log(list2);

																voteList += "<div class='row'>"
																voteList += "<div class='col-sm-6'>"
																voteList += "<div class='container'>"
																voteList += "<div class='row'>"
																voteList += "<div class='col-lg-12 text-center'>"
																voteList += "<h2 class='section-heading text-uppercase'>후보 "
																		+ electionNo
																		+ "번</h2>"
																voteList += "<h3 class='section-subheading text-muted'>"
																		+ partyName
																		+ "</h3>"
																voteList += "</div>"
																voteList += "</div>"
																voteList += "	<div class='row'>"
																voteList += "<div class='col-sm-6'>"
																voteList += "<div class='team-member'>"
																voteList += "<img class='mx-auto rounded-circle'src='${pageContext.request.contextPath }/assets/img/team/1.jpg'alt=''>"
																voteList += "<h4>"
																		+ list2[0].roll
																		+ "</h4>"
																voteList += "<p class='text-muted'>"
																		+ list2[0].studentId
																		+ "</p>"
																voteList += "</div>"
																voteList += "</div>"
																voteList += "<div class='col-sm-6'>"
																voteList += "<div class='team-member'>"
																voteList += "<img class='mx-auto rounded-circle'src='${pageContext.request.contextPath }/assets/img/team/2.jpg'alt=''>"
																voteList += "	<h4>"
																		+ list2[1].roll
																		+ "</h4>"
																voteList += "<p class='text-muted'>"
																		+ list2[1].studentId
																		+ "</p>"
																voteList += "</div>"
																voteList += "</div>"
																voteList += "</div>"
																voteList += "<div class='row'>"
																voteList += "<div class='col-lgs-8 mx-auto text-center'>"
																voteList += "<p class='large text-muted'>"
																		+ "<"+collegeName+">"
																		+ collegeLine
																		+ "-"
																		+ collegeType
																		+ "  이러쿵 저러쿵 공약</p>"
																voteList += "</div>"
																voteList += "</div>"
																voteList += "<div class='row'>"
																//데이터 번호 넘겨줘야 모달창에서 띄워줄 수 있음 
																voteList += "<button data-target=''#lg-modal/ data-toggle='modal' class='btn btn-warning' id='partyButton' data-partyno="+partyId+">선택하기</button>"
																voteList += "</div>"
																voteList += "</div>"
																voteList += "</div>"
																voteList += "</div>"

																$("#selectParty").append(voteList);
																voteList = "";

																$("#partyButton").on("click", function() {
																					$("#lg-modal1").modal();
																					console.log("vote ");
																					$this = $(this);
																					console.log($this);
																					var partyno = $this.data("partyno");
																					console.log(partyno);

																					$("#modalDetail").html("");
																					modalstr += "<img class='mx-auto rounded-circle' src='${pageContext.request.contextPath }/assets/img/team/1.jpg' alt=''>";
																					modalstr += "<h4>dma</h4>"
																					modalstr += "<p class='text-muted'>Lead Designer</p>"
																					console
																							.log(modalstr);
																					$(
																							"#modalDetail")
																							.append();
																					modalstr = "";

																					$("#finalButton").on("click",function() {
																										console.log(partyno);
																										console.log(electionNo);
																										console.log(majorId);
																										console.log(studentId);
																										
																										//원래받았던 파티넘버에 votes를 추가시키고 메인페이지로 넘겨버리자~ 
																									})
																				})
																				
															
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

										},
										error : function(XHR, status, error) {
											console.error(status + " : "
													+ error);
										}
									});
					
							
			})
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
