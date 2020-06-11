<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- <%@ include file="/main/mainPage/mp_naviBar.jsp" %> --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기업 마이페이지</title>
<style type="text/css">
ol, ul, li {
	list-style: none;
}

dl {
	display: block;
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
}

.area_total_recom {
	padding: 0px;
	margin: 0px;
}

.cont_top {
	position: relative;
	z-index: 1;
	margin: 0 auto;
	padding: 44px 0 33px;
	width: 100%;
	height: 471px;
	box-sizing: border-box;
	font-size: 15px;
	letter-spacing: -1px;
	line-height: 18px;
}

.cont_top .wrap_recomm {
	float: left;
	margin-right: 20px;
}

.wrap_recomm .tit_recomm {
	overflow: hidden;
}

.hidden, .blind {
	overflow: hidden;
	clip: rect(1px, 1px, 1px, 1px);
	position: absolute !important;
	width: 1px;
	height: 1px;
}

.wrap_recomm .tit_txt {
	float: left;
	color: #444;
	font-size: 18px;
	font-weight: bold;
	line-height: 21px;
}

.wrap_recomm .tit_txt .txt_emph {
	color: #4876ef;
}

.company.wrap_recomm .info_recomm {
	margin-top: 12px;
}

.wrap_recomm .info_recomm {
	position: relative;
	width: 80%;
	height: 360px;
}

.wrap_recomm .list_recomm {
	position: relative;
}

.company.wrap_recomm .list_recomm>li:first-child {
	width: 448px;
}

.company.wrap_recomm .list_recomm>li {
	padding: 0;
}

.company.wrap_recomm .list_recomm li {
	height: 360px;
}

.wrap_recomm .list_recomm li {
	float: left;
	position: relative;
	margin-right: -1px;
	box-sizing: border-box;
}

.company.wrap_recomm .wrap_recomm_count.on {
	display: block;
}

.company.wrap_recomm .my_recom {
	padding: 30px 180px 0 40px;
	color: #222;
	font-size: 15px;
	letter-spacing: -1px;
	line-height: 26px;
	text-align: left;
}

.company.wrap_recomm .my_recom .name {
	display: inline-block;
	overflow: hidden;
	width: auto;
	max-width: 75px;
	line-height: 26px;
	text-overflow: ellipsis;
	vertical-align: top;
	white-space: nowrap;
}

.company.wrap_recomm .my_recom span {
	display: block;
	font-size: 21px;
	line-height: 33px;
}

.company.wrap_recomm .my_recom strong {
	display: inline-block;
	margin-right: 2px;
	font-size: 25px;
	font-weight: bold;
	line-height: 22px;
}

.company.wrap_recomm .area_total_recom {
	padding: 20px 39px 0 52px;
}

.company.wrap_recomm .area_total_recom li:first-child {
	margin-left: 0;
}

.company.wrap_recomm .area_total_recom li {
	float: left;
	margin-left: 15px;
	padding: 0;
	width: 104px;
	height: 104px;
	border-radius: 50%;
	box-sizing: border-box;
	text-align: center;
	background: #f9f9fb;
}

.company.wrap_recomm .area_total_recom dl dt {
	padding-top: 30px;
	color: #444;
	font-size: 13px;
	letter-spacing: -1px;
}

.company.wrap_recomm .area_total_recom .up_count dd {
	color: #4876ef;
}

.company.wrap_recomm .area_total_recom .sub_txt {
	clear: left;
	padding: 7px 9px 0 0;
	color: #949494;
	font-size: 12px;
	letter-spacing: -1px;
	text-align: right;
}

.company.wrap_recomm .area_wait_joblist {
	margin: 22px 32px 0 32px;
	padding-top: 16px;
	border-top: 1px solid #eaeaea;
}

.company.wrap_recomm .area_wait_joblist dl {
	position: relative;
	margin-top: 3px;
	padding: 0 141px 11px 19px;
}

.company.wrap_recomm .area_wait_joblist dt {
	position: relative;
	padding-left: 7px;
	width: 130px;
	box-sizing: border-box;
	color: #444;
	font-size: 13px;
	letter-spacing: -1px;
	text-align: left;
}

.company.wrap_recomm .area_wait_joblist .num {
	float: right;
	width: 80px;
	color: #444;
	font-size: 13px;
	letter-spacing: 0;
	text-align: right;
}

.company.wrap_recomm .area_wait_joblist .num strong {
	display: inline-block;
	margin-right: 2px;
	font-size: 16px;
	letter-spacing: -0.5px;
	vertical-align: top;
}

.company.wrap_recomm .area_wait_joblist .box_link {
	position: absolute;
	top: -3px;
	right: 15px;
}

.company.wrap_recomm .area_wait_joblist .box_link>a {
	display: block;
	padding-top: 2px;
	width: 74px;
	height: 24px;
	border: 1px solid rgba(151, 151, 151, 0.21);
	box-sizing: border-box;
	color: #222;
	font-size: 12px;
	letter-spacing: -1px;
	text-align: center;
}

.company.wrap_recomm .wrap_recomm_count .box_total_link {
	position: absolute;
	top: 44px;
	right: 40px;
}

.company.wrap_recomm .wrap_recomm_count .box_total_link .btn_link_recomm
	{
	padding: 10px 10px 0 10px;
	min-width: 130px;
}

.wrap_my {
	overflow: hidden;
	float: right; /* float 어느 방향으로 할지 아직... 중간에 뭘 채울 지 고민 */
	position: relative;
	margin-top: 34px;
	padding: 0;
	width: 20%;
	height: 160px;
	box-sizing: border-box;
}

.wrap_my.logout {
	padding: 20px 0 20px 20px;
	border: 0;
	background: #f8f8f8;
}

.wrap_my.company .thumb_member {
	display: table;
}

.wrap_my .thumb_member {
	float: left;
	position: relative;
	margin-right: 13px;
	width: 80px;
	height: 80px;
	border: 1px solid #eaeaea;
	border-radius: 50%;
}

.wrap_my.company .photo_member.on {
	background: #fff;
}

.wrap_my.company .photo_member {
	display: table-cell;
	text-align: center;
	vertical-align: middle;
}

.wrap_my .photo_member {
	width: 100%;
	height: 100%;
	border-radius: 100%;
	background-position: -900px -500px;
}

.wrap_my.company .photo_member img {
	margin-top: 4px;
	width: 70px;
	background: #fff;
}

.wrap_my .link_edit {
	position: absolute;
	right: 0;
	bottom: 0;
	width: 20px;
	height: 20px;
	background-position: 0 -400px;
}

.wrap_my .cont_member {
	overflow: hidden;
	margin-top: 9px;
}

.cont_member .name_member {
	display: inline-block;
	color: #444;
}

.cont_member .link_myhome {
	display: inline-block;
	margin-left: 11px;
	color: #4876ef;
	font-size: 13px;
	text-decoration: underline;
	vertical-align: top;
}

.cont_member .info_member {
	display: block;
	overflow: hidden;
	margin-top: 9px;
	color: #444;
	font-size: 13px;
}

.cont_member .txt_info.emph {
	font-weight: bold;
}

.cont_member .txt_bar {
	float: left;
	margin: 0 7px 0 5px;
	color: #aeaeae;
	font-size: 10px;
	vertical-align: top;
}

.cont_member .txt_info {
	float: left;
}

.company .cont_member .txt_emph {
	text-decoration: underline;
}

.cont_member .txt_bar {
	float: left;
	margin: 0 7px 0 5px;
	color: #aeaeae;
	font-size: 10px;
	vertical-align: top;
}

.cont_member .txt_member {
	display: block;
	margin-top: 2px;
	color: #959595;
	font-size: 13px;
}

.company.wrap_my .list_my li {
	width: 22%;
}

.wrap_my .list_my li {
	float: left;
	position: relative;
	width: 25%;
	height: 100%;
}

.company.wrap_my .list_my li:nth-child(2) {
	width: 34%;
}

.wrap_my .list_my {
	clear: both;
	position: absolute;
	bottom: 0;
	left: 0;
	width: 364px;
	height: 40px;
	border: 1px solid #eaeaea;
	box-sizing: border-box;
	background: #fff;
}

.wrap_my .btn_logout {
	position: absolute;
	top: 20px;
	right: 20px;
	padding: 4px 0 5px;
	width: 60px;
	height: 26px;
	border: 1px solid #dcdcdc;
	color: #444;
	font-size: 11px;
	letter-spacing: -1px;
	line-height: 11px;
}

.wrap_my .list_my .link_my {
	display: block;
	padding: 12px 0 12px;
	height: 100%;
	box-sizing: border-box;
	color: #444;
	font-size: 13px;
	line-height: 13px;
	text-align: center;
}

.cont_product .inner_cont {
	position: relative;
	margin: 0 auto;
	width: 1260px;
}

fieldset, img {
	border: 0;
}

.hidden, .blind {
	overflow: hidden;
	clip: rect(1px, 1px, 1px, 1px);
	position: absolute !important;
	width: 1px;
	height: 1px;
}

button {
	border: 0;
	background: transparent;
	cursor: pointer;
}

a {
	color: inherit;
	text-decoration: none;
}
</style>
</head>
<body>


	<div id="section_contents" class="cont_top">
		
		<div class="wrap_recomm loading" style="display: none">
			<div class="tit_recomm">
				<h2 class="blind">추천공고</h2>
				<button type="button" class="btn_alarm avatar_mail">
					<span>추천공고 알림 받기<span class="ico_onoff">OFF</span></span>
				</button>
			</div>
			
			<div class="info_recomm" id="recommended"></div>
		</div>
		
		<div class="wrap_recomm company">
			<div class="tit_recomm">
				<h2 class="blind">인재추천</h2>
				<strong class="tit_txt">꼭 필요하고 <span class="txt_emph">적합한
						인재</span>를 찾을 수 있도록!
				</strong>
			</div>
			<div class="info_recomm">
				<ul class="list_recomm">
					<li>
						<div class="wrap_recomm_count on">
							<div class="my_recom">			<!-- 기업이름, 채용 몇건인지 받아오기 -->
								<em class="name">{회사 이름}</em>님의 진행중인 채용은 <span>
								<strong><a href="#" target="_blank" class="inner_link">1</a></strong>건 입니다.</span>
							</div>
							<div class="area_total_recom">
								<ul>
									<li class="up_count">
										<dl>
											<dt>지원자수</dt>
											<dd>1</dd>		<!-- 지원자 수 받아오기 -->
										</dl>
									</li>
									<li class="up_count">
										<dl>
											<dt>조회수</dt>
											<dd>5</dd>		<!-- 조회수 받아오기 -->
										</dl>
									</li>
								</ul>
								<p class="sub_txt">* 오늘자 현황, 사람인 지원공고만 해당 **여기도 다 value 받아오기 *</p>
							</div>
							<div class="area_wait_joblist" style="width: 250;">
								<dl class="box_wait_list">
									<dt>대기중 채용공고</dt>
									<dd class="num">
										<strong><a href="#" target="_blank" class="inner_link"> 0</a></strong>건
									</dd>
								</dl>
								<dl class="box_today_end">
									<dt>오늘마감 채용공고</dt>
									<dd class="num">
										<strong><a href="#" target="_blank" class="inner_link"> 0</a></strong>건
									</dd>
									<dd class="box_link" onmousedown="try{n_trackEvent('main', 'comp_state_click' , 'btn_end');}catch(e){}">
										<a href="#" target="_blank">마감공고</a>
									</dd>
								</dl>
							</div>
							
						</div>
					</li>
					
				</ul>
			</div>
		</div>
		
		
		<!-- 로그인 안되어있을 때 -->
		
<!-- 
		<fieldset>
			<legend class="blind">회원 로그인 폼</legend>
			<strong class="blind">회원 선택</strong>
			<ul class="list_login">
				<li><button type="button" id="login_tab_person" class="track_event" data-track_event="login|pc_main_per|tab_per">개인</button></li>
				<li class="on"><button type="button" id="login_tab_company" class="track_event" data-track_event="login|pc_main_com|tab_com">기업</button></li>
			</ul>
			<div class="wrap_login">
				<div class="login_input person">
					<strong class="blind">개인회원 로그인</strong>
					<span class="box_typo id"></span>
					<span class="box_typo password"> </span>
				</div>
				<div class="login_input company">
					<strong class="blind">기업회원 로그인</strong>
					<span class="box_typo id">
						<label for="login_company_id" class="blind">아이디</label>
						<input type="text" name="id" id="login_company_id" value="" class="inpTypo" placeholder="아이디" title="아이디 입력">
					</span> 
					<span class="box_typo password"> 
						<label for="login_company_pwd" class="blind">비밀번호</label>
						<input type="password" name="password" id="login_company_pwd" class="inpTypo" placeholder="비밀번호" title="비밀번호 입력">
					</span>
				</div>
				<div class="login_etc">
					<button type="submit" class="btn_login track_event log_fb_pixel_login tag_manager" data-track_event="login|pc_main_per|login|" data-tag_manager="ga_lead|login|pc_main_per|login">로그인</button>
					<span class="inpChk small"> 
						<input type="checkbox" name="autologin" id="autoLogin">
						<label for="autoLogin" class="lbl autologin" data-track_event="login|pc_main_per|auto_login|">로그인 유지</label>
					</span> 
					<span class="inpChk small">
						<input type="checkbox" name="id_save" id="id_save">
						<label for="id_save" class="lbl track_event" data-track_event="login|pc_main_per|id_save|">아이디 저장</label>
					</span>
					<a href="/zf_user/service/company/order" class="link_paid track_event tag_manager" data-track_event="login|pc_main_com|service_guide|" data-tag_manager="ga_lead|login|pc_main_com|service_guide">채용 상품 안내</a>
					<span class="txt_safety">
						<input type="checkbox" name="ssl_login" id="ssl_login" checked="checked" class="inp_safety track_event" data-track_event="login|pc_main_per|security|OFF">
						<label for="ssl_login" class="lab_safety">보안</label>
					</span>
					
					소셜 로그인??????????이거 할거임???????????????
					<div class="sns_login" id="wrap_sns_login">
						<strong class="blind">소셜 로그인</strong> 
						<a href="/zf_user/auth/sign-in-with?provider=naver.com&amp;display=popup&amp;url=%2Fzf_user%2F" onclick="return false;" class="link_sns link_naver track_event tag_manager" 
							data-track_event="login|pc_main_per|social_login|naver" data-tag_manager="ga_lead|login|pc_main_per|social_login_naver">
							<span class="blind">네이버 아이디 로그인</span>
						</a>
						<a href="/zf_user/auth/sign-in-with?provider=kakao.com&amp;display=popup&amp;url=%2Fzf_user%2F" onclick="return false;" class="link_sns link_kakaotalk track_event tag_manager"
							data-track_event="login|pc_main_per|social_login|kakao" data-tag_manager="ga_lead|login|pc_main_per|social_login_kakao">
							<span class="blind">카카오톡 아이디 로그인</span>
						</a>
						<a href="/zf_user/auth/sign-in-with?provider=facebook.com&amp;display=popup&amp;url=%2Fzf_user%2F" onclick="return false;" class="link_sns link_facebook track_event tag_manager"
							data-track_event="login|pc_main_per|social_login|facebook" data-tag_manager="ga_lead|login|pc_main_per|social_login_facebook">
							<span class="blind">페이스북 아이디 로그인</span></a>
							<a href="/zf_user/auth/sign-in-with?provider=google.com&amp;display=popup&amp;url=%2Fzf_user%2F" onclick="return false;" class="link_sns link_google track_event tag_manager"
							data-track_event="login|pc_main_per|social_login|google" data-tag_manager="ga_lead|login|pc_main_per|social_login_google">
							<span class="blind">구글 아이디 로그인</span></a>
					</div>
					<a href="/zf_user/applicant/rater/login-form" class="link_rater track_event" data-track_event="">평가자 로그인</a>
				</div>
				<div class="user_login">
					<span class="link_login">
						<a href="/zf_user/member/registration/join" onclick="return false;" class="join_btn track_event" data-track_event="login|pc_main_per|join|">회원가입</a>
						<em class="info_tip" style="display: block">10,000P 즉시지급</em>
					</span>
					<span class="link_login">
						<a href="/zf_user/helpdesk/idpw-find" class="track_event" data-track_event="login|pc_main_per|find|">아이디/비번찾기</a>
					</span>
				</div>
			</div>
		</fieldset> -->

		<!-- 로그인되어있는 상태일 때 -->
		<div class="wrap_my company logout">
			<h2 class="blind">로그아웃</h2>
			<form action="/zf_user/auth/logout" method="get">
				<input type="hidden" name="redirect" value="/">
				<fieldset>
					<legend class="blind"></legend>
					<div class="thumb_member">		<!-- 로그아웃 폼 -->
						<span class="img_main photo_member on"><img src="../resources/images/logo.jpg" alt="회사 로고" 
							onload="var el = this; setTimeout(function() {var w = el.offsetWidth, h = el.offsetHeight; if (el.offsetWidth > 70) {w = 70; h = Math.round(70*el.offsetHeight/el.offsetWidth) }; if (h > 24) { el.height = 24; } else {el.width = w}; }, 10);"
							height="24">
						</span>
						<a href="/zf_user/company-join/edit" class="img_main link_edit track_event" data-track_event="main|loginform|company|info_manage">
						<span class="blind">회원정보 수정 페이지로 이동</span></a>
					</div>
					<div class="cont_member">
						<span class="name_member"><strong>{기업이름}</strong>님</span>
						<a href="#" class="link_myhome track_event" data-track_event="main|loginform|company|main">MY 홈</a> 
						<span class="blind">회원정보</span> <span class="info_member">
						<a href="#" class="txt_info emph track_event" data-track_event="main|loginform|company|paid_list">결제내역</a>
						<span class="txt_bar">|</span> 
						<a href="#" class="txt_info track_event" data-track_event="main|loginform|company|coupon_list">쿠폰 
						<span class="txt_emph">3</span>개 </a>
						<span class="txt_bar">|</span> 
						<a href="/zf_user/memcom/service-manage/point-history" class="txt_info track_event" data-track_event="main|loginform|company|point_list">S포인트 
						<span class="txt_emph">0</span>P </a> </span>
						<!-- 이메일 받아오기 -->
						<span class="blind">이메일</span> <span class="txt_member email">email@받아오기.</span>
					</div>
					
					<ul class="list_my">
						<li><a href="#" class="link_my track_event" data-track_event="main|loginform|company|recruit_add">공고등록</a></li>
						<li><a href="#" class="link_my track_event" data-track_event="main|loginform|company|recruit_manage">공고·지원자관리</a></li>
						<li><a href="#" class="link_my track_event" data-track_event="main|loginform|company|talent_manage">인재관리</a></li>
						<li><a href="#" class="link_my track_event" data-track_event="main|loginform|company|paid_recruit_manage">상품관리</a></li>
					</ul>
					<button type="submit" class="btn_logout track_event" data-track_event="main|loginform|company|logout">로그아웃</button>
				</fieldset>
			</form>
		</div>
	</div>
	
	
	
	<!-- 맨 위 div 끝 -->
	
	
	<!-- 플래티넘 -->
		<div class="sri_product" id="section_banner">
			<div class="cont_product cont_platinum">
				<div class="row justify-content-center mb-5">
					<div class="col-md-7 heading-section text-center ftco-animate">
						<span class="subheading">Job Categories</span>
						<h2 class="mb-0">Platinum Categories</h2>
					</div>
				</div>
				<div class="row">
					<div class="col-md-3 ftco-animate">
						<ul class="category text-center">
							<li><a href="#"><img
									src="../resources/images/com_logo1.PNG" alt="" /> 쿠팡 주식회사 <br>
								<span class="number">354</span> <span>쿠팡맨 대규모 전국 채용</span><i
									class="ion-ios-arrow-forward"></i></a></li>
							<li><a href="#">Graphic Designer <br>
								<span class="number">143</span> <span>Open position</span><i
									class="ion-ios-arrow-forward"></i></a></li>
							<li><a href="#">Multimedia <br>
								<span class="number">100</span> <span>Open position</span><i
									class="ion-ios-arrow-forward"></i></a></li>
							<li><a href="#">Advertising <br>
								<span class="number">90</span> <span>Open position</span><i
									class="ion-ios-arrow-forward"></i></a></li>
						</ul>
					</div>
					<div class="col-md-3 ftco-animate">
						<ul class="category text-center">
							<li><a href="#"><img
									src="../resources/images/com_logo2.PNG" alt="" /> CJ 그룹 <br>
								<span class="number">100</span> <span>2020 상반기 신입사원 모집</span><i
									class="ion-ios-arrow-forward"></i></a></li>
							<li><a href="#">English <br>
								<span class="number">200</span> <span>Open position</span><i
									class="ion-ios-arrow-forward"></i></a></li>
							<li><a href="#">Social Media <br>
								<span class="number">300</span> <span>Open position</span><i
									class="ion-ios-arrow-forward"></i></a></li>
							<li><a href="#">Writing <br>
								<span class="number">150</span> <span>Open position</span><i
									class="ion-ios-arrow-forward"></i></a></li>
						</ul>
					</div>
					<div class="col-md-3 ftco-animate">
						<ul class="category text-center">
							<li><a href="#"><img
									src="../resources/images/com_logo3.PNG" alt="" />위메프 <br>
								<span class="number">400</span> <span>2020 위메프 신입개발자 채용</span><i
									class="ion-ios-arrow-forward"></i></a></li>
							<li><a href="#">Project Management <br>
								<span class="number">100</span> <span>Open position</span><i
									class="ion-ios-arrow-forward"></i></a></li>
							<li><a href="#">Finance Management <br>
								<span class="number">222</span> <span>Open position</span><i
									class="ion-ios-arrow-forward"></i></a></li>
							<li><a href="#">Office &amp; Admin <br>
								<span class="number">123</span> <span>Open position</span><i
									class="ion-ios-arrow-forward"></i></a></li>
						</ul>
					</div>
					<div class="col-md-3 ftco-animate">
						<ul class="category text-center">
							<li><a href="#"><img
									src="../resources/images/com_logo4.PNG" alt="" />에스케이넥실리스 <br>
								<span class="number">324</span> <span>2020년 상반기 신입/경력사원
										채용</span></span><i class="ion-ios-arrow-forward"></i></a></li>
							<li><a href="#">Customer Service <br>
								<span class="number">564</span> <span>Open position</span><i
									class="ion-ios-arrow-forward"></i></a></li>
							<li><a href="#">Marketing &amp; Sales <br>
								<span class="number">234</span> <span>Open position</span><i
									class="ion-ios-arrow-forward"></i></a></li>
							<li><a href="#">Software Development <br>
								<span class="number">425</span> <span>Open position</span><i
									class="ion-ios-arrow-forward"></i></a></li>
						</ul>
					</div>
				</div>
			</div>


			<!-- 스페셜 -->

			<div class="container">
				<div class="row justify-content-center mb-5">
					<div class="col-md-7 heading-section text-center ftco-animate">
						<span class="subheading">Job Categories</span>
						<h2 class="mb-0">Special Categories</h2>
					</div>
				</div>
				<div class="row">
					<div class="col-md-3 ftco-animate">
						<ul class="category text-center">
							<li><a href="#"><img
									src="../resources/images/com_logo1.PNG" alt="" /> 쿠팡 주식회사 <br>
								<span class="number">354</span> <span>쿠팡맨 대규모 전국 채용</span><i
									class="ion-ios-arrow-forward"></i></a></li>
							<li><a href="#">Graphic Designer <br>
								<span class="number">143</span> <span>Open position</span><i
									class="ion-ios-arrow-forward"></i></a></li>
							<li><a href="#">Multimedia <br>
								<span class="number">100</span> <span>Open position</span><i
									class="ion-ios-arrow-forward"></i></a></li>
							<li><a href="#">Advertising <br>
								<span class="number">90</span> <span>Open position</span><i
									class="ion-ios-arrow-forward"></i></a></li>
						</ul>
					</div>
					<div class="col-md-3 ftco-animate">
						<ul class="category text-center">
							<li><a href="#"><img
									src="../resources/images/com_logo2.PNG" alt="" /> CJ 그룹 <br>
								<span class="number">100</span> <span>2020 상반기 신입사원 모집</span><i
									class="ion-ios-arrow-forward"></i></a></li>
							<li><a href="#">English <br>
								<span class="number">200</span> <span>Open position</span><i
									class="ion-ios-arrow-forward"></i></a></li>
							<li><a href="#">Social Media <br>
								<span class="number">300</span> <span>Open position</span><i
									class="ion-ios-arrow-forward"></i></a></li>
							<li><a href="#">Writing <br>
								<span class="number">150</span> <span>Open position</span><i
									class="ion-ios-arrow-forward"></i></a></li>
						</ul>
					</div>
					<div class="col-md-3 ftco-animate">
						<ul class="category text-center">
							<li><a href="#"><img
									src="../resources/images/com_logo3.PNG" alt="" />위메프 <br>
								<span class="number">400</span> <span>2020 위메프 신입개발자 채용</span><i
									class="ion-ios-arrow-forward"></i></a></li>
							<li><a href="#">Project Management <br>
								<span class="number">100</span> <span>Open position</span><i
									class="ion-ios-arrow-forward"></i></a></li>
							<li><a href="#">Finance Management <br>
								<span class="number">222</span> <span>Open position</span><i
									class="ion-ios-arrow-forward"></i></a></li>
							<li><a href="#">Office &amp; Admin <br>
								<span class="number">123</span> <span>Open position</span><i
									class="ion-ios-arrow-forward"></i></a></li>
						</ul>
					</div>
					<div class="col-md-3 ftco-animate">
						<ul class="category text-center">
							<li><a href="#"><img
									src="../resources/images/com_logo4.PNG" alt="" />에스케이넥실리스 <br>
								<span class="number">324</span> <span>2020년 상반기 신입/경력사원
										채용</span></span><i class="ion-ios-arrow-forward"></i></a></li>
							<li><a href="#">Customer Service <br>
								<span class="number">564</span> <span>Open position</span><i
									class="ion-ios-arrow-forward"></i></a></li>
							<li><a href="#">Marketing &amp; Sales <br>
								<span class="number">234</span> <span>Open position</span><i
									class="ion-ios-arrow-forward"></i></a></li>
							<li><a href="#">Software Development <br>
								<span class="number">425</span> <span>Open position</span><i
									class="ion-ios-arrow-forward"></i></a></li>
						</ul>
					</div>
				</div>
			</div>




			<!-- 일반 -->
			<div class="container">
				<div class="row">
					<div class="col-lg-9 pr-lg-4">
						<div class="row">
							<div class="col-md-12 ftco-animate">
								<div
									class="job-post-item p-4 d-block d-lg-flex align-items-center">
									<div class="one-third mb-4 mb-md-0">
										<div class="job-post-item-header align-items-center">
											<span class="subadge">Partime</span>
											<h2 class="mr-3 text-black">
												<a href="#">Frontend Development</a>
											</h2>
										</div>
										<div class="job-post-item-body d-block d-md-flex">
											<div class="mr-3">
												<span class="icon-layers"></span> <a href="#">Facebook,
													Inc.</a>
											</div>
											<div>
												<span class="icon-my_location"></span> <span>Western
													City, UK</span>
											</div>
										</div>
									</div>

									<div
										class="one-forth ml-auto d-flex align-items-center mt-4 md-md-0">
										<div>
											<a href="#"
												class="icon text-center d-flex justify-content-center align-items-center icon mr-2">
												<span class="icon-heart"></span>
											</a>
										</div>
										<a href="job-single.html" class="btn btn-primary py-2">Apply
											Job</a>
									</div>
								</div>
							</div>
							<!-- end -->

							<div class="col-md-12 ftco-animate">
								<div
									class="job-post-item p-4 d-block d-lg-flex align-items-center">
									<div class="one-third mb-4 mb-md-0">
										<div class="job-post-item-header align-items-center">
											<span class="subadge">Fulltime</span>
											<h2 class="mr-3 text-black">
												<a href="#">Full Stack Developer</a>
											</h2>
										</div>
										<div class="job-post-item-body d-block d-md-flex">
											<div class="mr-3">
												<span class="icon-layers"></span> <a href="#">Google,
													Inc.</a>
											</div>
											<div>
												<span class="icon-my_location"></span> <span>Western
													City, UK</span>
											</div>
										</div>
									</div>

									<div
										class="one-forth ml-auto d-flex align-items-center mt-4 md-md-0">
										<div>
											<a href="#"
												class="icon text-center d-flex justify-content-center align-items-center icon mr-2">
												<span class="icon-heart"></span>
											</a>
										</div>
										<a href="job-single.html" class="btn btn-primary py-2">Apply
											Job</a>
									</div>
								</div>
							</div>
							<!-- end -->

							<div class="col-md-12 ftco-animate">
								<div
									class="job-post-item p-4 d-block d-lg-flex align-items-center">
									<div class="one-third mb-4 mb-md-0">
										<div class="job-post-item-header align-items-center">
											<span class="subadge">Freelance</span>
											<h2 class="mr-3 text-black">
												<a href="#">Open Source Interactive Developer</a>
											</h2>
										</div>
										<div class="job-post-item-body d-block d-md-flex">
											<div class="mr-3">
												<span class="icon-layers"></span> <a href="#">New York
													Times</a>
											</div>
											<div>
												<span class="icon-my_location"></span> <span>Western
													City, UK</span>
											</div>
										</div>
									</div>

									<div
										class="one-forth ml-auto d-flex align-items-center mt-4 md-md-0">
										<div>
											<a href="#"
												class="icon text-center d-flex justify-content-center align-items-center icon mr-2">
												<span class="icon-heart"></span>
											</a>
										</div>
										<a href="job-single.html" class="btn btn-primary py-2">Apply
											Job</a>
									</div>
								</div>
							</div>
							<!-- end -->

							<div class="col-md-12 ftco-animate">
								<div
									class="job-post-item p-4 d-block d-lg-flex align-items-center">
									<div class="one-third mb-4 mb-md-0">
										<div class="job-post-item-header align-items-center">
											<span class="subadge">Partime</span>
											<h2 class="mr-3 text-black">
												<a href="#">Frontend Development</a>
											</h2>
										</div>
										<div class="job-post-item-body d-block d-md-flex">
											<div class="mr-3">
												<span class="icon-layers"></span> <a href="#">Facebook,
													Inc.</a>
											</div>
											<div>
												<span class="icon-my_location"></span> <span>Western
													City, UK</span>
											</div>
										</div>
									</div>

									<div
										class="one-forth ml-auto d-flex align-items-center mt-4 md-md-0">
										<div>
											<a href="#"
												class="icon text-center d-flex justify-content-center align-items-center icon mr-2">
												<span class="icon-heart"></span>
											</a>
										</div>
										<a href="job-single.html" class="btn btn-primary py-2">Apply
											Job</a>
									</div>
								</div>
							</div>
							<!-- end -->

							<div class="col-md-12 ftco-animate">
								<div
									class="job-post-item p-4 d-block d-lg-flex align-items-center">
									<div class="one-third mb-4 mb-md-0">
										<div class="job-post-item-header align-items-center">
											<span class="subadge">Temporary</span>
											<h2 class="mr-3 text-black">
												<a href="#">Open Source Interactive Developer</a>
											</h2>
										</div>
										<div class="job-post-item-body d-block d-md-flex">
											<div class="mr-3">
												<span class="icon-layers"></span> <a href="#">New York
													Times</a>
											</div>
											<div>
												<span class="icon-my_location"></span> <span>Western
													City, UK</span>
											</div>
										</div>
									</div>

									<div
										class="one-forth ml-auto d-flex align-items-center mt-4 md-md-0">
										<div>
											<a href="#"
												class="icon text-center d-flex justify-content-center align-items-center icon mr-2">
												<span class="icon-heart"></span>
											</a>
										</div>
										<a href="job-single.html" class="btn btn-primary py-2">Apply
											Job</a>
									</div>
								</div>
							</div>
							<!-- end -->

							<div class="col-md-12 ftco-animate">
								<div
									class="job-post-item p-4 d-block d-lg-flex align-items-center">
									<div class="one-third mb-4 mb-md-0">
										<div class="job-post-item-header align-items-center">
											<span class="subadge">Fulltime</span>
											<h2 class="mr-3 text-black">
												<a href="#">Full Stack Developer</a>
											</h2>
										</div>
										<div class="job-post-item-body d-block d-md-flex">
											<div class="mr-3">
												<span class="icon-layers"></span> <a href="#">Google,
													Inc.</a>
											</div>
											<div>
												<span class="icon-my_location"></span> <span>Western
													City, UK</span>
											</div>
										</div>
									</div>

									<div
										class="one-forth ml-auto d-flex align-items-center mt-4 md-md-0">
										<div>
											<a href="#"
												class="icon text-center d-flex justify-content-center align-items-center icon mr-2">
												<span class="icon-heart"></span>
											</a>
										</div>
										<a href="job-single.html" class="btn btn-primary py-2">Apply
											Job</a>
									</div>
								</div>
							</div>
							<!-- end -->

							<div class="col-md-12 ftco-animate">
								<div
									class="job-post-item p-4 d-block d-lg-flex align-items-center">
									<div class="one-third mb-4 mb-md-0">
										<div class="job-post-item-header align-items-center">
											<span class="subadge">Freelance</span>
											<h2 class="mr-3 text-black">
												<a href="#">Open Source Interactive Developer</a>
											</h2>
										</div>
										<div class="job-post-item-body d-block d-md-flex">
											<div class="mr-3">
												<span class="icon-layers"></span> <a href="#">New York
													Times</a>
											</div>
											<div>
												<span class="icon-my_location"></span> <span>Western
													City, UK</span>
											</div>
										</div>
									</div>

									<div
										class="one-forth ml-auto d-flex align-items-center mt-4 md-md-0">
										<div>
											<a href="#"
												class="icon text-center d-flex justify-content-center align-items-center icon mr-2">
												<span class="icon-heart"></span>
											</a>
										</div>
										<a href="job-single.html" class="btn btn-primary py-2">Apply
											Job</a>
									</div>
								</div>
							</div>
							<!-- end -->

							<div class="col-md-12 ftco-animate">
								<div
									class="job-post-item p-4 d-block d-lg-flex align-items-center">
									<div class="one-third mb-4 mb-md-0">
										<div class="job-post-item-header align-items-center">
											<span class="subadge">Internship</span>
											<h2 class="mr-3 text-black">
												<a href="#">Frontend Development</a>
											</h2>
										</div>
										<div class="job-post-item-body d-block d-md-flex">
											<div class="mr-3">
												<span class="icon-layers"></span> <a href="#">Facebook,
													Inc.</a>
											</div>
											<div>
												<span class="icon-my_location"></span> <span>Western
													City, UK</span>
											</div>
										</div>
									</div>

									<div
										class="one-forth ml-auto d-flex align-items-center mt-4 md-md-0">
										<div>
											<a href="#"
												class="icon text-center d-flex justify-content-center align-items-center icon mr-2">
												<span class="icon-heart"></span>
											</a>
										</div>
										<a href="job-single.html" class="btn btn-primary py-2">Apply
											Job</a>
									</div>
								</div>
							</div>
							<!-- end -->

							<div class="col-md-12 ftco-animate">
								<div
									class="job-post-item p-4 d-block d-lg-flex align-items-center">
									<div class="one-third mb-4 mb-md-0">
										<div class="job-post-item-header align-items-center">
											<span class="subadge">Temporary</span>
											<h2 class="mr-3 text-black">
												<a href="#">Open Source Interactive Developer</a>
											</h2>
										</div>
										<div class="job-post-item-body d-block d-md-flex">
											<div class="mr-3">
												<span class="icon-layers"></span> <a href="#">New York
													Times</a>
											</div>
											<div>
												<span class="icon-my_location"></span> <span>Western
													City, UK</span>
											</div>
										</div>
									</div>

									<div
										class="one-forth ml-auto d-flex align-items-center mt-4 md-md-0">
										<div>
											<a href="#"
												class="icon text-center d-flex justify-content-center align-items-center icon mr-2">
												<span class="icon-heart"></span>
											</a>
										</div>
										<a href="job-single.html" class="btn btn-primary py-2">Apply
											Job</a>
									</div>
								</div>
							</div>
							<!-- end -->
						</div>
						<div class="row mt-5">
							<div class="col text-center">
								<div class="block-27">
									<ul>
										<li><a href="#">&lt;</a></li>
										<li class="active"><span>1</span></li>
										<li><a href="#">2</a></li>
										<li><a href="#">3</a></li>
										<li><a href="#">4</a></li>
										<li><a href="#">5</a></li>
										<li><a href="#">&gt;</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-3 sidebar">
						<div class="sidebar-box bg-white p-4 ftco-animate">
							<h3 class="heading-sidebar">Browse Category</h3>
							<form action="#" class="search-form mb-3">
								<div class="form-group">
									<span class="icon icon-search"></span> <input type="text"
										class="form-control" placeholder="Search...">
								</div>
							</form>
							<form action="#" class="browse-form">
								<label for="option-job-1"><input type="checkbox"
									id="option-job-1" name="vehicle" value="" checked>
									Website &amp; Software</label><br> <label for="option-job-2"><input
									type="checkbox" id="option-job-2" name="vehicle" value="">
									Education &amp; Training</label><br> <label for="option-job-3"><input
									type="checkbox" id="option-job-3" name="vehicle" value="">
									Graphics Design</label><br> <label for="option-job-4"><input
									type="checkbox" id="option-job-4" name="vehicle" value="">
									Accounting &amp; Finance</label><br> <label for="option-job-5"><input
									type="checkbox" id="option-job-5" name="vehicle" value="">
									Restaurant &amp; Food</label><br> <label for="option-job-6"><input
									type="checkbox" id="option-job-6" name="vehicle" value="">
									Health &amp; Hospital</label><br>
							</form>
						</div>

						<div class="sidebar-box bg-white p-4 ftco-animate">
							<h3 class="heading-sidebar">Select Location</h3>
							<form action="#" class="search-form mb-3">
								<div class="form-group">
									<span class="icon icon-search"></span> <input type="text"
										class="form-control" placeholder="Search...">
								</div>
							</form>
							<form action="#" class="browse-form">
								<label for="option-location-1"><input type="checkbox"
									id="option-location-1" name="vehicle" value="" checked>
									Sydney, Australia</label><br> <label for="option-location-2"><input
									type="checkbox" id="option-location-2" name="vehicle" value="">
									New York, United States</label><br> <label for="option-location-3"><input
									type="checkbox" id="option-location-3" name="vehicle" value="">
									Tokyo, Japan</label><br> <label for="option-location-4"><input
									type="checkbox" id="option-location-4" name="vehicle" value="">
									Manila, Philippines</label><br> <label for="option-location-5"><input
									type="checkbox" id="option-location-5" name="vehicle" value="">
									Seoul, South Korea</label><br> <label for="option-location-6"><input
									type="checkbox" id="option-location-6" name="vehicle" value="">
									Western City, UK</label><br>
							</form>
						</div>

						<div class="sidebar-box bg-white p-4 ftco-animate">
							<h3 class="heading-sidebar">Job Type</h3>
							<form action="#" class="browse-form">
								<label for="option-job-type-1"><input type="checkbox"
									id="option-job-type-1" name="vehicle" value="" checked>
									Partime</label><br> <label for="option-job-type-2"><input
									type="checkbox" id="option-job-type-2" name="vehicle" value="">
									Fulltime</label><br> <label for="option-job-type-3"><input
									type="checkbox" id="option-job-type-3" name="vehicle" value="">
									Intership</label><br> <label for="option-job-type-4"><input
									type="checkbox" id="option-job-type-4" name="vehicle" value="">
									Temporary</label><br> <label for="option-job-type-5"><input
									type="checkbox" id="option-job-type-5" name="vehicle" value="">
									Freelance</label><br> <label for="option-job-type-6"><input
									type="checkbox" id="option-job-type-6" name="vehicle" value="">
									Fixed</label><br>
							</form>
						</div>
					</div>
				</div>
			</div>

		</div>



		<!-- 플래티넘 기업 -->
<!-- 
	<div class="cont_product cont_platinum">
		<div class="inner_cont">
			<div class="top_poduct">
				<strong class="tit_cont">플래티넘</strong>
				<button class="btn_product" data-banner="platinum">
					<span class="track_event"><a href="membership_detail.jsp">상품안내</a></span>
				</button>
			</div>
			<ul class="list_product" id="_platinum">
				<li class="open" data-rec_idx="38225764">
					<div class="box_product">
						<a href="#" class="link_box track_event" data-track_event="main|Ads_click|platinum_fix_expand|1"></a> 
						<span class="product_logo"><img src="" class="img" alt="#플래티넘기업1" rel="nofollow"></span>
						<strong class="poduct_tit">#플래티넘기업1</strong> <em class="product_desc">#기업소개</em>
						<em class="product_desc open"><span class="txt">2020</span><span class="txt">Global Internship</span></em>
						<span class="thumb_product"><img class="img" rel="nofollow" src=""></span>
						<button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|platinum_fix_expand">
							<span class="blind">스크랩</span>
						</button>
						<span class="recruit_func">
							<span class="blind">공고 마감일</span>
							<span class="num_dday">#d-day 받아오기</span>
						</span>
						<span class="bg"></span>
					</div>
				</li>
				<li class="open" data-rec_idx="38196286">
					<div class="box_product">
						<a href="#" class="link_box track_event" data-track_event="main|Ads_click|platinum_fix_expand|2"></a>
						<span class="product_logo"><img src="" class="img" alt="#플래티넘기업2" rel="nofollow"></span>
						<strong class="poduct_tit">#플래티넘기업2</strong><em class="product_desc">#기업소개</em>
						<em class="product_desc open"><span class="txt">2020년 설계/감리 부문별</span><span class="txt">인력채용</span></em>
						<span class="thumb_product"><img class="img" rel="nofollow" src=""></span>
						<button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|platinum_fix_expand">
							<span class="blind">스크랩</span>
						</button>
						<span class="recruit_func">
							<span class="blind">공고 마감일</span>
							<span class="num_dday">#d-day 받아오기</span>
						</span>
						<span class="bg"></span>
					</div>
				</li>
			</ul>
		</div>
	</div>
	플래티넘 기업 끝 약 4*5개 정도.
	
	프라임
	<div class="cont_product cont_prime">
		<div class="inner_cont">
			<div class="top_poduct">
				<strong class="tit_cont">프라임</strong>
				<button class="btn_product" data-banner="prime">
					<span class="track_event" data-track_event="main|Ads_click_guide|prime|layer_click">상품안내</span>
				</button>
			</div>
			<ul class="list_product" id="_primePlus" style="">
				<li class="open" data-rec_idx="38199127">
					<div class="box_product">
						<a href="" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|1"></a>
						<span class="product_logo"><img src="" alt="#프라임기업1" class="img" rel="nofollow"></span>
						<strong class="poduct_tit">#프라임기업1</strong> <em class="product_desc">IoT 임베디드 시스템 개발자 모집</em>
						<em class="product_desc open"><span class="txt">IoT 임베디드 시스템SW</span><span class="txt">양성과정 교육생모집</span></em> <span class="thumb_product">
						<img data-src="" class="img" alt="" rel="nofollow"></span>
						<button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand">
							<span class="blind">스크랩</span>
						</button>
						<span class="recruit_func">
							<span class="blind">공고 마감일</span>
							<span class="num_dday">#d-day 받아오기</span>
							<button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('38199127','','t_category=main&amp;t_content=prime_plus_fix_expand', ''); return false;} catch (e) {}; return false;"
								onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}">
								<span class="sri_btn_immediately track_event" data-track_event="main|Ads_quick_apply|prime_plus_fix_expand|1">즉시지원</span>
							</button>
						</span>
						<span class="bg"></span>
					</div>
				</li>
				<li class="open" data-rec_idx="38222599">
					<div class="box_product">
						<a href="#" class="link_box track_event" data-track_event="main|Ads_click|prime_plus_fix_expand|2"></a>
						<span class="product_logo"><img src="" alt="#프라임기업2" class="img" rel="nofollow"></span>
						<strong class="poduct_tit">#프라임기업2</strong><em class="product_desc">전산전문인력 채용공고</em>
						<em class="product_desc open"><span class="txt">[한국교직원공제회]</span><span class="txt">전산전문인력 채용공고</span></em>
						<span class="thumb_product"><img data-src="" class="img" alt="" rel="nofollow"></span>
						<button class="img_main btn_scrap track_event" data-track_event="main|Ads_scrap|prime_plus_fix_expand">
							<span class="blind">스크랩</span>
						</button>
						<span class="recruit_func">
							<span class="blind">공고 마감일</span>
							<span class="num_dday">#d-day 받아오기</span>
						</span>
						<span class="bg"></span>
					</div>
				</li>
			</ul>
		</div>
	</div>
	 -->
	 
	<!-- 프라임 기업 끝 여기도 4*5 정도 -->
	


	<script src="/resources/js/jquery.min.js"></script>
	<script src="/resources/js/jquery-migrate-3.0.1.min.js"></script>
	<script src="/resources/js/popper.min.js"></script>
	<script src="/resources/js/bootstrap.min.js"></script>
	<script src="/resources/js/jquery.easing.1.3.js"></script>
	<script src="/resources/js/jquery.waypoints.min.js"></script>
	<script src="/resources/js/jquery.stellar.min.js"></script>
	<script src="/resources/js/owl.carousel.min.js"></script>
	<script src="/resources/js/jquery.magnific-popup.min.js"></script>
	<script src="/resources/js/aos.js"></script>
	<script src="/resources/js/jquery.animateNumber.min.js"></script>
	<script src="/resources/js/scrollax.min.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="/resources/js/google-map.js"></script>
	<script src="/resources/js/main.js"></script>



<%@ include file="/main/mainPage/mp_footer.jsp" %>
</body>
</html>