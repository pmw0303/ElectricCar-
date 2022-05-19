<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Target Material Design Bootstrap Admin Template</title>

<style type="text/css">
.chatting {
	background-color: yellow;
	border-radius: 10px;
	padding: 10px;
	display: inline-block
}
</style>

<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet"
	href="/target-free-admin-template/assets/materialize/css/materialize.min.css"
	media="screen,projection" />
	<!-- 사용자 css -->
	<link href="../css/mycss.css" rel="stylesheet" />
<!-- Bootstrap Styles-->
<link href="../css/bootstrap.css" rel="stylesheet" />
<!-- FontAwesome Styles-->
<link href="../css/font-awesome.css" rel="stylesheet" />
<!-- Morris Chart Styles-->
<link href="../js/morris/morris-0.4.3.min.css" rel="stylesheet" />
<!-- Custom Styles-->
<link href="../css/custom-styles.css" rel="stylesheet" />
<!-- Google Fonts-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="../js/Lightweight-Chart/cssCharts.css">
<!-- 내가 사용한 css -->
<link href="../css/chat.css" rel="stylesheet" />
</head>
<body>
	<div id="wrapper">
		<nav class="navbar navbar-default top-navbar" role="navigation">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".sidebar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand waves-effect waves-dark" href="empty.jsp"><i
					class="large material-icons">explicit</i> <strong>EV-Charge</strong></a>

				<div id="sideNav" href="">
					<i class="material-icons dp48">toc</i>
				</div>
			</div>

		</nav>
		<!-- Dropdown Structure -->


		<!--/. NAV TOP  -->
		<nav class="navbar-default navbar-side" role="navigation">
			<div class="sidebar-collapse">
				<ul class="nav" id="main-menu">
					<li><a class=" waves-effect waves-dark" href="empty.jsp"><i
							class="fa fa-fw fa-file"></i> 사이트 소개</a></li>
					<li><a href="map.jsp" class="waves-effect waves-dark"><i
							class="fa fa-dashboard"></i> 주유소 찾기</a></li>
					<li><a href="news.jsp" class="waves-effect waves-dark"><i
							class="fa fa-desktop"></i> 뉴스</a></li>
					<li><a href="board.jsp"
						class="active-menu waves-effect waves-dark"><i
							class="fa fa-bar-chart-o"></i> 자유게시판</a></li>
				</ul>

			</div>

		</nav>
		<!-- /. NAV SIDE  -->
		<div id="page-wrapper">
			<div class="header">
				<h1 class="page-header">익명 채팅방</h1>
			</div>
			<div id="page-inner">
				<div class="row">
					<div class="col-md-12">
						<a>
							익명으로 채팅하는 공간입니다<br> 상대방에게 악의적인 채팅을 금합니다
						</a>
						<div class="container">
							<div class="col-md-8 offset-4">
								<br>
								<div id="contentlist"
									style="border-radius: 10px; border: 1px solid black; height: 500px; overflow-y: scroll; background-color: white;"></div>
								<br>
								<div class="row">
									<div class="col-md-3">
										<input type="text" class="form-control" id="nickname"
											placeholder="닉네임">
									</div>
									<div class="col-md-6">
										<input type="text" class="form-control" id="chatting"
											placeholder="내용">
									</div>
									<div class="col-md-3">
										<button type="submit" class="form-control" onclick="sendmsg()">전송</button>
									</div>
								</div>
							</div>
						</div>
						<div class="clearBoth"></div>
						<footer>
							<p>
								Shared by <i class="fa fa-love"></i><a
									href="https://bootstrapthemes.co">BootstrapThemes</a>
							</p>
						</footer>
					</div>
				</div>
				<!-- /. PAGE INNER  -->
			</div>
			<!-- /. PAGE WRAPPER  -->
		</div>
		<!-- /. WRAPPER  -->
	</div>
	<!-- JS Scripts-->
	
	<!-- jQuery Js -->
	<script src="../js/jquery-1.10.2.js"></script>

	<!-- Bootstrap Js -->
	<script src="../js/bootstrap.min.js"></script>

	<script src="../materialize/js/materialize.min.js"></script>
	<script type="text/javascript" src="../js/chatting.js"></script>
	<!-- Metis Menu Js -->
	<script src="../js/jquery.metisMenu.js"></script>
	<!-- Custom Js -->
	<script src="../js/custom-scripts.js"></script>
	
</body>
</html>