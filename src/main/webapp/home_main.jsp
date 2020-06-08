<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/main/mainPage/mp_naviBar.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>home_main</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('#btn1').click(function(){
			$('#dmenu1').toggle();
		});
		$('#btn2').click(function(){
			$('#dmenu2').toggle();
		});
		$('#btn3').click(function(){
			$('#dmenu3').toggle();
		});
		$('#btn4').click(function(){
			$('#dmenu4').toggle();
		});
		$('#btn5').click(function(){
			$('#dmenu5').toggle();
		});
		
	});
</script>
<style type="text/css">
div {
	display: block;
}

ol, ul, li {
	list-style: none;
}

ul {
	display: block;
	list-style-type: disc;
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
	padding-inline-start: 40px;
}

li {
	display: list-item;
	text-align: -webkit-match-parent;
}

body {
	font-family: "나눔스퀘어";
	margin: 0;
	padding: 0;
}

.wrap_vix_info {
	width: 950px;
}

.wrap_vix_info .vix_info {
	width: 574px;
}

.allpost_list {
	width: 80%;
}

#content {
	background: #f1f3f9;
}

#content .allpost_list {
	min-width: 900px;
	min-height: 710px;
	padding-bottom: 60px;
	border-radius: 6px;
	box-shadow: 0 0 5px rgba(0, 0, 0, 0.15);
	box-sizing: border-box;
}

#content .main_content .item_list {
	float: left;
}

.wrap_vix_info .area_title {
	float: left;
	position: relative;
	width: 375px;
}

.wrap_vix_info .vix_info>li.vix_item1 {
	left: 15px;
	background-position: 50% 34px;
}

.wrap_vix_info .vix_info>li.vix_item2 {
	left: 153px;
	background-position: 50% 34px;
}

.wrap_vix_info .vix_info>li.vix_item3 {
	left: 291px;
	background-position: 50% 34px;
}

.wrap_vix_info .vix_info>li.vix_item4 {
	left: 429px;
	background-position: 50% 34px;
}

.allpost_list .post_list .row {
	position: relative;
	padding: 30px 30px 34px 117px;
	border-bottom: 1px solid #ebebeb;
	box-sizing: border-box;
}

.allpost_list .post_list .date {
	min-height: 95px;
}

.allpost_list .post_list .post_info {
	min-width: 70%;
}

.allpost_list .post_list .row .badge_stat {
	position: absolute;
	top: 32px;
	left: 30px;
	padding: 4px 10px;
	width: 78px;
	height: 28px;
	border: 1px solid #d9d9d9;
	border-radius: 14px;
	box-sizing: border-box;
	color: #555;
	font-size: 12px;
	letter-spacing: -1px;
	line-height: 16px;
	text-align: center;
}

.allpost_list .area_status {
	position: absolute;
	top: 30px;
	right: 30px;
	min-width: 290px;
	text-align: right;
}

.allpost_list .area_status .onpost op_color {
	color: #2365f2;
	position: absolute;
	top: 0;
	right: 187px;
	font-size: 15px;
	letter-spacing: -1px;
	line-height: 19px;
	right: 187px;
	font-size: 15px;
	letter-spacing: -1px;
}

.allpost_list .area_status .box_status .area_link {
	float: right;
}

.allpost_list .area_status .box_status .area_link .link_status {
	color: #666;
	display: inline-block;
	line-height: 17px;
	letter-spacing: -1px;
	vertical-align: top;
}

.allpost_list .area_status .status_type {
	display: inline-block;
	padding: 11px 14px;
	width: 294px;
	height: 62px;
	border: 1px solid #ddd;
	border-radius: 5px;
	box-sizing: border-box;
	color: #888;
	font-size: 14px;
	letter-spacing: -1px;
	line-height: 18px;
	text-align: center;
}

.allpost_list .area_status .status_type a.division {
	float: left;
	display: inline-block;
	color: #222;
	font-size: 14px;
	letter-spacing: -1px;
	line-height: 17px;
	text-align: center;
	padding: 0 15px;
}

.allpost_list .area_status .status_type .applc_cnt {
	display: block;
	padding-top: 4px;
}

.date .blind {
	float: left;
	padding-right: 10px;
}

.sub {
	float: right;
	margin-top: 65px;
	width: 20%;
	top: 10px;
	position: absolute;
	right: 0;
}

.sub .btn_search {
	position: relative;
	padding: 18px 0 21px 51px;
	width: 100%;
	height: 60px;
	border: 2px solid #223cb5;
	border-radius: 6px;
	box-sizing: border-box;
	color: #888;
	font-size: 16px;
	font-weight: bold;
	letter-spacing: -1px;
	line-height: 20px;
	text-align: left;
	background-color: #fff;
	box-shadow: 0 0 5px 0 rgba(0, 0, 0, 0.15);
}

.sub .sub_menu {
	margin-top: 40px;
	border: 1px solid #ebebeb;
	border-radius: 8px;
	box-sizing: border-box;
	background-color: #fff;
	box-shadow: 0 0 5px 0 rgba(0, 0, 0, 0.15);
	text-align: center;
}

.sub .sub_menu .open .dept_menu {
	display: block;
}

.sub .menu_item .dept_menu {
	padding-left: 0;
}

.hidden, .blind {
	overflow: hidden;
}

button {
	border: 0;
	background: transparent;
}
</style>
</head>
<body>
	<div class="wrap">
		<div id="content">
			<div class="main_content">
				<div class="wrap_vix_info">
					<div class="area_title">
						<div class="vix_state">
							<a href="membership.jsp" class="link_product">지금 바로 구매하기</a>
						</div>
						<p class="title">
							<strong>프리미엄 채용서비스</strong>로 <br /> 인재선발 한번에 해결하세요
						</p>
					</div>
				</div>
				<ul class="vix_info">
					<li class="item1"><a href="../resources/images/blind.PNG"></a></li>
					<li class="item2"><a href="../resources/images/cowork.PNG"></a></li>
					<li class="item3"><a href="../resources/images/eval.PNG"></a></li>
					<li class="item4"><a href="../resources/images/pass.PNG"></a></li>
				</ul>
				
			</div>
			
			<!-- 채용 공고 리스트 -->
			<div class="allpost_list">
				<div class="post_list">
					<li class="row">
						<img src="" alt="일반채용" class="badge_stat" />
						<div class="post_info" id="post_info_list1">
							 <a href="#"><h3>채용 공고 1 제목 </h3></a>
							 <div class="date">
							 	<dl>
							 		<dt class="blind">접수 기간</dt>
							 		<dd></dd>
							 		<dt class="blind">등록&수정일</dt>
							 		<dd></dd>
							 		<dt class="blind">모집분야</dt>
							 		<dd></dd>
							 	</dl>
							 </div>
							 <div class="membership">
							 	<span style="color: #949494;">이용중인 유료 서비스가 없습니다</span>
							 </div>
							 <div class="area_status">
							 	<div class="box_status">
							 		<strong class="onpost op_color">진행중 공고</strong>
							 		<div class="area_link">
							 			<a href="post_detail.jsp" target="_blank" class="link_status"><strong>보기</strong></a>
							 			<a href="" class="link_status">수정</a>
							 			<button type="button" class="link_status" onclick="">마감</button>
							 		</div>
							 	</div>
							 	
							 	<div class="status_type">
							 		<a href="" class="division">지원자 <strong class="applc_cnt">$</strong></a>
							 		<a href="" class="division">열람 <strong class="applc_cnt">$</strong></a>
							 		<a href="" class="division">미열람 <strong class="applc_cnt">$</strong></a>
							 		<a href="" class="division">최종합격 <strong class="applc_cnt">$</strong></a>
							 		
							 	</div>
							 </div>
						</div>
					</li>
					<li class="row">
						<img src="" alt="일반채용" class="badge_stat" />
						<div class="post_info" id="post_info_list1">
							 <a href="#"><h3>채용 공고 1 제목 </h3></a>
							 <div class="date">
							 	<dl>
							 		<dt class="blind">접수 기간</dt>
							 		<dd></dd>
							 		<dt class="blind">등록&수정일</dt>
							 		<dd></dd>
							 		<dt class="blind">모집분야</dt>
							 		<dd></dd>
							 	</dl>
							 </div>
							 <div class="membership">
							 	<span style="color: #949494;">이용중인 유료 서비스가 없습니다</span>
							 </div>
							 <div class="area_status">
							 	<div class="box_status">
							 		<strong class="onpost op_color">진행중 공고</strong>
							 		<div class="area_link">
							 			<a href="post_detail.jsp" target="_blank" class="link_status"><strong>보기</strong></a>
							 			<a href="" class="link_status">수정</a>
							 			<button type="button" class="link_status" onclick="">마감</button>
							 		</div>
							 	</div>
							 	
							 	<div class="status_type">
							 		<a href="" class="division">지원자 <strong class="applc_cnt">$</strong></a>
							 		<a href="" class="division">열람 <strong class="applc_cnt">$</strong></a>
							 		<a href="" class="division">미열람 <strong class="applc_cnt">$</strong></a>
							 		<a href="" class="division">최종합격 <strong class="applc_cnt">$</strong></a>
							 		
							 	</div>
							 </div>
						</div>
					</li>
					<li class="row">
						<img src="" alt="일반채용" class="badge_stat" />
						<div class="post_info" id="post_info_list1">
							 <a href="#"><h3>채용 공고 1 제목 </h3></a>
							 <div class="date">
							 	<dl>
							 		<dt class="blind">접수 기간</dt>
							 		<dd></dd>
							 		<dt class="blind">등록&수정일</dt>
							 		<dd></dd>
							 		<dt class="blind">모집분야</dt>
							 		<dd></dd>
							 	</dl>
							 </div>
							 <div class="membership">
							 	<span style="color: #949494;">이용중인 유료 서비스가 없습니다</span>
							 </div>
							 <div class="area_status">
							 	<div class="box_status">
							 		<strong class="onpost op_color">진행중 공고</strong>
							 		<div class="area_link">
							 			<a href="post_detail.jsp" target="_blank" class="link_status"><strong>보기</strong></a>
							 			<a href="" class="link_status">수정</a>
							 			<button type="button" class="link_status" onclick="">마감</button>
							 		</div>
							 	</div>
							 	
							 	<div class="status_type">
							 		<a href="" class="division">지원자 <strong class="applc_cnt">$</strong></a>
							 		<a href="" class="division">열람 <strong class="applc_cnt">$</strong></a>
							 		<a href="" class="division">미열람 <strong class="applc_cnt">$</strong></a>
							 		<a href="" class="division">최종합격 <strong class="applc_cnt">$</strong></a>
							 		
							 	</div>
							 </div>
						</div>
					</li>
				</div>
				<!-- 메인 공고 리스트 end -->
			</div>
		</div>
				
			
			<div class="sub">
			<!-- 서브 메뉴 -->
			
				<button class="btn_search" id="candi_search">후보자 검색</button>
				<ul class="sub_menu">
					<li class="menu_item">
						<button class="btn" id="btn1">인재 관리</button>
						<ul class="dept_menu" id="dmenu1" style="display: none;">
							<li><a href="#">관심 인재</a></li>
							<li><a href="#">오늘 본 인재</a></li>
							<li><a href="#">연락처 확인 인재</a></li>
						</ul>
					</li>
					<li class="menu_item">
						<button class="btn" id="btn2">인재 추천</button>
						<ul class="dept_menu" id="dmenu2" style="display: none;">
							<li><a href="#">추천인재</a></li>
							<li><a href="#">공고 기반 추천인재</a></li>
							<li><a href="#">공고 스크랩 인재</a></li>
						</ul>
					</li>
					<li class="menu_item">
						<button class="btn" id="btn3">유료서비스 관리</button>
						<ul class="dept_menu" id="dmenu3" style="display: none;">
							<li><a href="#">인재 선발 솔루션 관리</a></li>
							<li><a href="#">채용 공고 / 패키지 관리</a></li>
							<li><a href="#">추천 히스토리</a></li>
							<li><a href="#">검색 키워드 상품 관리</a></li>
						</ul>
					</li>
					<li class="menu_item">
						<button class="btn" id="btn4">인적성검사</button>
						<ul class="dept_menu" id="dmenu4" style="display: none;">
							<li><a href="#">검사 신청하기</a></li>
							<li><a href="#">인적성 검사 신청/관리</a></li>
							<li><a href="#">인적성 검사 사용 내역</a></li>
							<li><a href="#">인적성 검사 활용법</a></li>
							<li><a href="#">인적성 검사 이용절차</a></li>
						</ul>
					</li>
					<li class="menu_item">
						<button class="btn" id="btn5">결제내역</button>
						<ul class="dept_menu" id="dmenu5" style="display: none;">
							<li><a href="#">결제 내역 조회</a></li>
							<li><a href="#">전자세금계산서 조회</a></li>
							<li><a href="#">쿠폰 사용 내역 조회</a></li>
							<li><a href="#">원클릭 결제 관리</a></li>
						</ul>
					</li>
				</ul>
				
			</div>
			
		</div>			
</body>
</html>