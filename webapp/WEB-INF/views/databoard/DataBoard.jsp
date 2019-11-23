<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Apollo</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
</head>
<body>
	<!-- header -->
	<c:import url="/WEB-INF/views/includes/navigation.jsp"></c:import>

	<!-- header -->
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
		<section class="bg-light page-section" >

	<div class="panel">
		<div class="panel-heading">
			<h3 class="panel-title"
				style="padding-left: 30px; padding-top: 10px;">게시판 </h3>
		</div>
		<hr>

		<div class="row pad-btm">
			<div class="input-group mar-btm col-xs-12 col-sm-10 col-sm-offset-1 pad-hor "
				style="padding-left: 200px;">
				<input id="searchAnyThing" type="text" placeholder="Search posts..." class=" "> 
				<span class="input-group-btn">
					<button id="searchPostTitle" class="btn btn-primary btn-sm"
						type="button">검색</button>
				</span>
			</div>
		</div>
		<br><br>
		<!--Posts Table-->
		<!--===================================================-->
		<div  style="padding-left: 79px; padding-right: 70px;">



			<div class="table-responsive">
				<table class="table table-striped table-vcenter">
					<thead>
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>등록일</th>
							<th>글쓴이</th>
						</tr>
					</thead>
					<tbody id="postList">
						<tr>
							<td>1</td>
							<td>11</td>
							<td>111</td>
							<td>111</td>
						</tr>
						<tr>
							<td>1</td>
							<td>11</td>
							<td>111</td>
							<td>111</td>
						</tr>
						<tr>
							<td>1</td>
							<td>11</td>
							<td>111</td>
							<td>111</td>
						</tr>
					</tbody>
				</table>
			</div>
			<br>
			<div class="row">
			
			

				<div id="pager" class="col-sm-7 text-right"></div>
				<div class="col-sm-5 text-right">
					<button class="btn btn-primary btn-sm" style="margin-right: 50px;"
						onclick="location.href='' ">글작성</button>
				</div>
			</div>
		</div>
		<!--===================================================-->
		<!--End Posts Table-->





	</div>
		</section>
</body>
</html>