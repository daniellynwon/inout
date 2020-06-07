<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <title>Martine</title>
    <link rel="icon" href="/resources/img/favicon.png">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/resources/css/css_1/bootstrap.min.css">

    <!-- owl carousel CSS -->
    <link rel="stylesheet" href="/resources/css/css_1/owl.carousel.min.css">
    <!-- themify CSS -->
    <link rel="stylesheet" href="/resources/css/css_1/themify-icons.css">
    <!-- flaticon CSS -->
    <link rel="stylesheet" href="/resources/css/css_1/flaticon.css">
    <!-- fontawesome CSS -->
    <link rel="stylesheet" href="/resources/fontawesome/css/all.min.css">
    <!-- magnific CSS -->
    <link rel="stylesheet" href="/resources/css/css_1/magnific-popup.css">
    <link rel="stylesheet" href="/resources/css/css_1/gijgo.min.css">
    <!-- niceselect CSS -->
    <link rel="stylesheet" href="/resources/css/css_1/nice-select.css">
    <!-- slick CSS -->
    <link rel="stylesheet" href="/resources/css/css_1/slick.css">
    <!-- style CSS -->
    <link rel="stylesheet" href="/resources/css/css_1/style.css">
<style>

	.main_menu_iner {

        text-align: left;

        background-color: #ffffff;

        width: 100%;

		z-index: 6;
      }

      .topFixBannerFixed {

        position: fixed;

        top: 0px;

		text-align:left;

		z-index: 6;

		padding-left:20px;

      }

</style> 


 
 <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>   
 <script type="text/javascript">
 	$(function () {
 		var bannerOffset = $( '.main_menu_iner' ).offset();

 	    $( window ).scroll( function() {  //window에 스크롤링이 발생하면

 	          if ( $( document ).scrollTop() > bannerOffset.top ) {   // 위치 및 사이즈를 파악하여 미리 정한 css class를 add 또는 remove 합니다.

 	            $( '.main_menu_iner' ).addClass( 'topFixBannerFixed' );

 	          }

 	          else {

 	            $( '.main_menu_iner' ).removeClass( 'topFixBannerFixed' );

 	          }

 	     });

	});
 </script> 
 
</head>

<body>
   <!--::header part start::-->
   <header class="main_menu">
        <div class="sub_menu">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-sm-12 col-md-6">
                        <div class="sub_menu_right_content">
                            <span>지금 뜨는 채용공고</span>
                            <a href="#">대기업</a>
                            <a href="#">스타트업</a>
                            <a href="#">공기업</a>
                        </div>
                    </div>
                    <div class="col-lg-6 col-sm-12 col-md-6">
                        <div class="sub_menu_social_icon">
                            <a href="#"><i class="flaticon-facebook"></i></a>
                            <a href="#"><i class="flaticon-twitter"></i></a>
                            <a href="#"><i class="flaticon-skype"></i></a>
                            <a href="#"><i class="flaticon-instagram"></i></a>
                            <span><i class="flaticon-phone-call"></i>02-837-9922</a></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="main_menu_iner"  >
            <div class="container">
                <div class="row align-items-center ">
                    <div class="col-lg-12">
                        <nav class="navbar navbar-expand-lg navbar-light justify-content-between">
                            <a class="navbar-brand" href="index.html"> <img src="/resources/img/logo2.png" alt="logo"> </a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse"
                                data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>

                            <div class="collapse navbar-collapse main-menu-item justify-content-center"
                                id="navbarSupportedContent">
                                <ul class="navbar-nav">
                                   <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="blog.html" id="navbarDropdown"
                                            role="button" data-toggle="dropdown" aria-haspopup="true"
                                            aria-expanded="false">
                                            지역별
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                            <a class="dropdown-item" href="blog.html">서울</a>
                                            <a class="dropdown-item" href="single-blog.html">경기</a>
                                            <a class="dropdown-item" href="single-blog.html">인천</a>
                                            <a class="dropdown-item" href="single-blog.html">부산</a>
                                            <a class="dropdown-item" href="single-blog.html">대구</a>
                                            <a class="dropdown-item" href="single-blog.html">대전</a>
                                            <a class="dropdown-item" href="single-blog.html">광주</a>
                                            <a class="dropdown-item" href="single-blog.html">성남</a>
                                            <a class="dropdown-item" href="single-blog.html">수원</a>
                                        </div>
                                    </li>
                                     <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="blog.html" id="navbarDropdown"
                                            role="button" data-toggle="dropdown" aria-haspopup="true"
                                            aria-expanded="false">
                                            직업별
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                            <a class="dropdown-item" href="blog.html">경영.사무</a>
                                            <a class="dropdown-item" href="single-blog.html">영업.고객상담</a>
                                            <a class="dropdown-item" href="single-blog.html">생산.제조</a>
                                            <a class="dropdown-item" href="single-blog.html">IT.인터넷</a>
                                            <a class="dropdown-item" href="single-blog.html">전문직</a>
                                            <a class="dropdown-item" href="single-blog.html">교육</a>
                                            <a class="dropdown-item" href="single-blog.html">미디어</a>
                                            <a class="dropdown-item" href="single-blog.html">특수계층.공공</a>
                                            <a class="dropdown-item" href="single-blog.html">건설</a>
                                            <a class="dropdown-item" href="single-blog.html">유통.무역</a>
                                            <a class="dropdown-item" href="single-blog.html">서비스</a>
                                            <a class="dropdown-item" href="single-blog.html">디자인</a>
                                            <a class="dropdown-item" href="single-blog.html">의료</a>
                                        </div>
                                    </li>
                                   <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="blog.html" id="navbarDropdown"
                                            role="button" data-toggle="dropdown" aria-haspopup="true"
                                            aria-expanded="false">
                                            큐레이션
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                            <a class="dropdown-item" href="blog.html">대기업</a>
                                            <a class="dropdown-item" href="single-blog.html">공기업</a>
                                            <a class="dropdown-item" href="single-blog.html">외국계기업</a>
                                            <a class="dropdown-item" href="single-blog.html">중견기업</a>
                                            <a class="dropdown-item" href="single-blog.html">스타트업</a>
                                        </div>
                                    </li>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="blog.html" id="navbarDropdown"
                                            role="button" data-toggle="dropdown" aria-haspopup="true"
                                            aria-expanded="false">
                                            기업연구소
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                            <a class="dropdown-item" href="blog.html">기업에 대한 Q&A</a>
                                            <a class="dropdown-item" href="single-blog.html">취준고민</a>
                                            <a class="dropdown-item" href="single-blog.html">취업뉴스</a>
                                            <a class="dropdown-item" href="single-blog.html">이력서 무료다운</a>
                                            <a class="dropdown-item" href="single-blog.html">글자수 체크</a>
                                        </div>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="contact.html">인재검색</a>
                                    </li>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="blog.html" id="navbarDropdown_1"
                                            role="button" data-toggle="dropdown" aria-haspopup="true"
                                            aria-expanded="false">
                                            로그인
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown_1">
                                            <a class="dropdown-item" href="top_place.html">개인회원 로그인</a>
                                            <a class="dropdown-item" href="tour_details.html">기업회원 로그인</a>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <a href="#" class="btn_1 d-none d-lg-block">book now</a>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- Header part end-->

</body>
</html>