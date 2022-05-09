<%@page import="org.jsoup.nodes.Element"%>
<%@page import="org.jsoup.select.Elements"%>
<%@page import="org.jsoup.Jsoup"%>
<%@page import="org.jsoup.nodes.Document"%>
<%@page import="org.json.simple.parser.JSONParser"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.json.simple.JSONArray"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<html>
<head>
<meta charset="UTF-8">
<title>Target Material Design Bootstrap Admin Template</title>
	
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link rel="stylesheet" href="assets/materialize/css/materialize.min.css" media="screen,projection" />
    <!-- Bootstrap Styles-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- Morris Chart Styles-->
    <link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="assets/css/custom-styles.css" rel="stylesheet" />
    <!-- Google Fonts-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="assets/js/Lightweight-Chart/cssCharts.css"> 
</head>
<body>
<% 
JSONObject siteDataMain = new JSONObject();
// 크롤링 내용 JSON화 시키기 위해 반복적으로 많기 때매 JsonArray로
JSONArray siteJsonArray = new JSONArray();
Document doc2 = Jsoup.connect(
		"https://search.naver.com/search.naver?sm=tab_hty.top&where=news&query=%EC%A0%84%EA%B8%B0%EC%B0%A8+%EC%B6%A9%EC%A0%84%EC%86%8C&oquery=%EC%A0%84%EA%B8%B0%EC%B0%A8&tqi=hFBpwwprvxsssUluK18ssssssWo-176265")
		.get();
Elements posts = doc2.body().getElementsByClass("list_news");
Elements file = posts.select("li");
%>



	<div id="wrapper">
        <nav class="navbar navbar-default top-navbar" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand waves-effect waves-dark" href="empty.html"><i class="large material-icons">explicit</i> <strong>EV-Charge</strong></a>
				
		<div id="sideNav" href=""><i class="material-icons dp48">toc</i></div>
            </div>

        </nav>
		<!-- Dropdown Structure -->
 
 
	   <!--/. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
					<li>
                        <a class=" waves-effect waves-dark" href="empty.html"><i class="fa fa-fw fa-file"></i> 사이트 소개</a>
                    </li>
                    <li>
                        <a href="charger.html" class="waves-effect waves-dark"><i class="fa fa-dashboard"></i> 주유소 찾기</a>
                    </li>
                    <li>
                        <a href="news.html" class="active-menu waves-effect waves-dark"><i class="fa fa-desktop"></i> 뉴스</a>
                    </li>
					<li>
                        <a href="board.html" class="waves-effect waves-dark"><i class="fa fa-bar-chart-o"></i> 자유게시판</a>
                    </li>
                </ul>

            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
		  <div class="header"> 
                        <h1 class="page-header">
                            뉴스
                        </h1>
						<ol class="breadcrumb">
					  <li><a href="#">Home</a></li>
					  <li><a href="#">Empty</a></li>
					  <li class="active">Data</li>
					</ol> 
									
		</div>
            <div id="page-inner"> 
			
			  <div class="row">

					<div class="col-md-12">
						<div class="card" style="margin">
								<div class="clearBoth">
									<br />
								</div>
								<section class="resume-section" id="news" style="margin: 15px;">
								<div class="resume-section-content">
										<h2 class="mb-5">News</h2>
										<div class="subheading mb-3">* 전기차 관련 실시간 뉴스정보입니다.</div>
										<br>
										<%
										int j = 8	;
										for (Element element : file) {
											JSONObject siteJsonObject = new JSONObject();
										%>
										<div
											class="d-flex flex-column flex-md-row justify-content-between mb-5">
											<div class="flex-grow-1">
												<h3 class="mb-0">
													<a href="<%=element.select(".news_tit").attr("href")%>"><%=element.select(".news_tit").text()%></a>
												</h3>
												<div class="subheading mb-3"><%=element.select(".dsc_txt_wrap").text()%></div>
											</div>

										</div>

										<%
										j++;
										if (j == 8) {
											break;
										}
										}
										%>

									</div>
								</section>
							
							</div>
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
    <script src="assets/js/jquery-1.10.2.js"></script>
	
	<!-- Bootstrap Js -->
    <script src="assets/js/bootstrap.min.js"></script>
	
	<script src="assets/materialize/js/materialize.min.js"></script>
	
    <!-- Metis Menu Js -->
		<script src="assets/js/jquery.metisMenu.js"></script> 
    <!-- Custom Js -->
    <script src="assets/js/custom-scripts.js"></script> 
</body>
</html>