<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 로그인 모달 창  -->
<div id="login-modal" class="modal fade" tabindex="-1">
	<div class="modal-dialog modal-sm">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title" id="myLargeModalLabel">로그인</h4>
			</div>
			<div class="modal-body">
				<div class="panel">
					<div class="panel-body" style="text-align: center;">
						<br>
						<form method="POST" action="loginCheck.php">
							<input type="text" name="loginID"
								style="background-color: transparent;" placeholder="ID" /><br />
							<br /> <input type="password" name="loginPW"
								style="background-color: transparent" placeholder="Password" />
						</form>
						<br>
						<button id="login" data-target="#login-modal" type="submit" data-toggle="modal" class="btn  btn-warning">로그인</button>
						<button id="signup" data-target="#signup-modal" data-toggle="modal" class="btn  btn-warning">회원가입</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- 회원가입 모달 창  -->
<div id="signup-modal" class="modal fade" tabindex="-1">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title" id="myLargeModalLabel">회원가입</h4>
			</div>
			<div class="modal-body">
				<div class="panel">
					<div class="panel-body" style="text-align: center;">
						<br>
						<form method="POST" action="${pageContext.request.contextPath }/user">
							<input type="text" name="studentNumber" style="background-color: transparent;" placeholder="Student Number" /><br /><br /> 
							<input type="text" name="Name" style="background-color: transparent;" placeholder="Name" /><br /><br />
							<select name="Major" style="background-color: transparent;" >
    							<option value="123">소프트웨어 학과</option>
							    <option value="124">사이버보안 학과</option>
							    <option value="125">국방디지털 학과</option>
							    <option value="126">미디어 학과</option>
							</select><br /><br />
							<input type="text" name="Email" style="background-color: transparent;" placeholder="Email" /><br /><br />
							<input type="password" name="Password" style="background-color: transparent;" placeholder="Password" /><br /><br />
							<button id="insertVote" data-target="#signup-modal" type="submit" data-toggle="modal" class="btn  btn-warning">가입</button>
						</form>
						<br>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
