<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Target Material Design Bootstrap Admin Template</title>
	
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link rel="stylesheet" href="/materialize/css/materialize.min.css" media="screen,projection" />
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
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="../js/Lightweight-Chart/cssCharts.css"> 
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
					<li><a class="active-menu waves-effect waves-dark"
						href="empty.jsp"><i class="fa fa-fw fa-file"></i> 사이트 소개</a></li>
					<li><a href="map.jsp" class="waves-effect waves-dark"><i
							class="fa fa-dashboard"></i> 주유소 찾기</a></li>
					<li><a href="news.jsp" class="waves-effect waves-dark"><i
							class="fa fa-desktop"></i> 뉴스</a></li>
					<li><a href="board.jsp" class="waves-effect waves-dark"><i
							class="fa fa-bar-chart-o"></i> 자유게시판</a></li>
				</ul>

			</div>

		</nav>
		<!-- /. NAV SIDE  -->
		<div id="page-wrapper">
			<div class="header">
				<h1 class="page-header">사이트 소개</h1>

			</div>
			<div id="page-inner">

				<div class="row">

					<div class="col-md-12">
						<div class="card">
							<div class="card-action">사이트 소개</div>
							<div class="card-content">
								<p>주변 전기차 충전소를 찾아주는 사이트입니다.</p>
								<br><br>
								<table class="entire-page">
									<tr>
										<td>
											<table class="email-body">
											
												<tr>

													<td class="news-section">

														<h1 style="color: black;">전기차</h1>
														<br> <img src="../img/evc.jpg">

														<p>전기자동차(電氣自動車, 영어: electric car, battery electric
															car, all-electric car) 또는 단순히 전기차(電氣車)는 전기를 동력원으로 삼아 운행하는
															자동차를 일컫는다. 전기자동차는 내연기관 대신 전기 모터를 사용해 운동 에너지를 얻는다. 구동에 필요한
															전기 에너지를 얻는 방식에 따라 배터리식 전기자동차와 수소연료전지자동차 등 여러 가지로 분류된다.</p>

													</td>
												</tr>
												<tr>
													<td class="news-section">

														<h2>역사</h2><br> <img src="../img/evchistory.png"><br>	

														<p>전기자동차는 1873년에 가솔린 자동차보다 먼저 제작되었으나, 배터리의 중량이 무겁고 충전
															시간이 너무 길다는 문제가 있어 대중화되지 못하였다. 미국에서는 구조가 간단하고 내구성(耐久性)이 크며
															운전하기가 쉬운 등 장점을 살려 주로 여성용으로 1920년대 중반까지 소량 생산되기도 하였다.
															1990년대 이후 공해 문제가 심각해지며 전기자동차 개발도 다시 활발해지기 시작하였다. 1996년
															GM은 개발용 모델인 EV를 토대로 고성능 전기자동차 GM EV1을 생산하였다. GM EV1은 한 번
															완충 시 최장 208km를 150km/h로 달릴 수 있었으나, GM은 이 모델을 수익성이 없다는 이유로
															단종시킨 후 모두 회수해서 폐차하였다. 소비자와 환경 단체들은 GM EV1의 단종과 폐차에 정유업체의
															로비가 개입되었다는 음모론을 제기하기도 하였다.</p>

													</td>
												</tr>
											</table>

										</td>

									</tr>

								</table>

							</div>
						</div>
						<div>
						<footer>
							
								Shared by <i class="fa fa-love"></i><a
									href="https://bootstrapthemes.co">BootstrapThemes</a>
							
						</footer>
						</div>
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

	<!-- Metis Menu Js -->
	<script src="../js/jquery.metisMenu.js"></script>
	<!-- Custom Js -->
	<script src="../js/custom-scripts.js"></script>

</body>
</html>