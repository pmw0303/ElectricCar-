<%@page import="org.jsoup.select.Elements"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Target Material Design Bootstrap Admin Template</title>
	
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link rel="stylesheet" href="assets/materialize/css/materialize.min.css" media="screen,projection" />
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
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand waves-effect waves-dark" href="empty.jsp"><i class="large material-icons">explicit</i> <strong>EV-Charge</strong></a>
				
		<div id="sideNav" href=""><i class="material-icons dp48">toc</i></div>
            </div>

        </nav>
		<!-- Dropdown Structure -->
 
 
	   <!--/. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
					<li>
                        <a class=" waves-effect waves-dark" href="empty.jsp"><i class="fa fa-fw fa-file"></i> 사이트 소개</a>
                    </li>
                    <li>
                        <a href="map.jsp" class="active-menu waves-effect waves-dark"><i class="fa fa-dashboard"></i> 주유소 찾기</a>
                    </li>
                    <li>
                        <a href="news.jsp" class="waves-effect waves-dark"><i class="fa fa-desktop"></i> 뉴스</a>
                    </li>
					<li>
                        <a href="board.jsp" class="waves-effect waves-dark"><i class="fa fa-bar-chart-o"></i> 자유게시판</a>
                    </li>
            
                </ul>

            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
		  <div class="header"> 
                        <h1 class="page-header">
                            충전소 찾기
                        </h1>
							
		</div>
		
        <div class="row">
			<!-- <div class="col-md-3" style="padding-left: 40px;">
				<div class="row">
					<div>
						<select class="custom-select" onchange="chageSelect()" id="test"
							name="key" style="width: 70px; height: 40px;">
							<option value="지역">선택</option>
							<option value="서울">서울</option>
							<option value="경기">경기</option>
							<option value="인천">인천</option>
							<option value="대구">대구</option>
							<option value="대전">대전</option>
							<option value="충북">충북</option>
							<option value="충남">충남</option>
							<option value="경북">경북</option>
							<option value="경남">경남</option>
							<option value="강원">강원</option>
							<option value="전북">전북</option>
							<option value="전남">전남</option>
							<option value="제주">제주</option>
						</select>
					</div>
					<div id="input-form">
						<input type="
						text" id="keyword"
							style="width: 180px; height: 40px; padding-left: 20px;"
							placeholder="search...">
					</div>
				</div>-->
			</div> 
		<div class="col-md-9">
			<div>
				<!-- 지도를 표시할 div 입니다 -->
				<div id="map" style="height: 800px;"></div>
   				 <script src="../js/jquery-1.10.2.js"></script>
				<script type="text/javascript"
					src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1844140e44206e4eda54dabb568eecb5&libraries=clusterer"></script>
				<script>
				
				
				
						    var map = new kakao.maps.Map(document.getElementById('map'), { // 지도를 표시할 div
						        center : new kakao.maps.LatLng(36.2683, 127.6358), // 지도의 중심좌표 
						        level : 5 // 지도의 확대 레벨 
						    });
						    
						    // 마커 클러스터러를 생성합니다 
						    var clusterer = new kakao.maps.MarkerClusterer({
						        map: map, // 마커들을 클러스터로 관리하고 표시할 지도 객체 
						        averageCenter: true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정 
						        minLevel: 2 // 클러스터 할 최소 지도 레벨 
						    });
						 
						    var markerImageUrl = '/electricCar/web/assets/img/marker.png', 
						    markerImageSize = new kakao.maps.Size(40, 42), // 마커 이미지의 크기
						    markerImageOptions = { 
						        offset : new kakao.maps.Point(16, 21)// 마커 좌표에 일치시킬 이미지 안의 좌표
						    };
							
							// 마커 이미지를 생성한다
							var markerImage = new kakao.maps.MarkerImage(markerImageUrl, markerImageSize, markerImageOptions);
						    
						    // 데이터를 가져오기 위해 jQuery를 사용합니다
						    // 데이터를 가져와 마커를 생성하고 클러스터러 객체에 넘겨줍니다
						    $.get("latlontest", function(data) {
						        // 데이터에서 좌표 값을 가지고 마커를 표시합니다
						        // 마커 클러스터러로 관리할 마커 객체는 생성할 때 지도 객체를 설정하지 않습니다
						     	 
						        var markers = $(data.positions).map(function(i, position) {
						            return new kakao.maps.Marker({
						            	image : markerImage,
						                position : new kakao.maps.LatLng(position.lat, position.lng)
						            });
						        });
						        
						        // 클러스터러에 마커들을 추가합니다
						        clusterer.addMarkers(markers);
						    
						    
						    });
						
							/* ========================================================================================================= */
							
							// HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
							if (navigator.geolocation) {

								// GeoLocation을 이용해서 접속 위치를 얻어옵니다
								navigator.geolocation.getCurrentPosition(function(position) {

									var lat = position.coords.latitude, // 위도
									lon = position.coords.longitude; // 경도

									var locPosition = new kakao.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
									message = '<div style="padding:3px;"> 내 위치 </div>'; // 인포윈도우에 표시될 내용입니다

								var radius = 3000;        
								
								var latlngyo = new daum.maps.LatLng(lat, lon);
								
								var circle = new daum.maps.Circle({
								    map: map,
								    center : latlngyo,
								    radius: radius,
								    strokeWeight: 2,
								    strokeColor: '#FF00FF',
								    strokeOpacity: 0.8,
								    strokeStyle: 'dashed',
								    fillColor: '#D3D5BF',
								    fillOpacity: 0.5
								});
								
								// 마커와 인포윈도우를 표시합니다
								displayMarker(locPosition, message);

							});
			

							} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다

								var locPosition = new kakao.maps.LatLng(33.450701, 126.570667), message = 'geolocation을 사용할수 없어요..'

								displayMarker(locPosition, message);
							}
							
							// 지도에 마커와 인포윈도우를 표시하는 함수입니다
							function displayMarker(locPosition, message) {

								// 마커를 생성합니다
								var marker = new kakao.maps.Marker({
									map : map,
									position : locPosition
								});
								
								var iwContent = message, // 인포윈도우에 표시할 내용
								iwRemoveable = true;

								// 인포윈도우를 생성합니다
								var infowindow = new kakao.maps.InfoWindow({
									content : iwContent,
									removable : iwRemoveable
								});

								// 인포윈도우를 마커위에 표시합니다 
								infowindow.open(map, marker);

								// 지도 중심좌표를 접속위치로 변경합니다
								map.setCenter(locPosition);
								
								
								// 마커에 클릭 이벤트를 등록한다 (우클릭 : rightclick)
								kakao.maps.event.addListener(marker, 'click', function() {
									alert('zz');
								});
								
							}
							
							
							
						
				</script>
			</div>
		</div>

				</div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
       
     <!-- /. WRAPPER  -->
     
    <!-- JS Scripts-->
    <!-- jQuery Js -->

	
	<!-- Bootstrap Js -->
    <script src="../js/bootstrap.min.js"></script>
	
	<script src="../materialize/js/materialize.min.js"></script>
	
    <!-- Metis Menu Js -->
		<script src="../js/jquery.metisMenu.js"></script> 
    <!-- Custom Js -->
    <script src="../js/custom-scripts.js"></script> 
</body>
</html>