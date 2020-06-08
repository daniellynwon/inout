<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/main/mainPage/mp_naviBar.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jo_job_post.jsp</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		

	jQuery('#age_select').change(function() {
			var state = jQuery('#age_select option:selected').val();
			if (state == 'limit') {
				jQuery('.age_limit').show();
			} else {
				jQuery('.age_limit').hide();
			}
		});

		$('#btn_add').click(function() {
			$('.wrap_layer').toggle();
		});

		$('.btn_close').click(function() {
			$('.wrap_layer').toggle();
		});

		$('#btn_del').click(function() {
			/* 키워드 삭제하기 */
		});

		$('.btn_cat').click(function() {
			var cat = $(this).attr('value');
			console.log(cat);
			
		});
		
		$('#btn_cat_area').click(function(){
			$('#industry_all_list').toggle();
		});

		

	});
</script>
<style type="text/css">
.ftco-section form-control1 {
	float: left;
	width: 860px; !
	important min-height: 50px; !
	important box-sizing: border-box;
	vertical-align: top;
}

.age_limit, .job_cat_sec {
	display: none;
}

.row form-group {
	float: left;
}

.row form-group .mng_phone {
	display: inline-block;
	margin: 13px 2px 0 -5px;
	vertical-align: top;
	content: "-";
}

.form-control1 btn btn-primary {
	width: 100%;
}
/* 
.form-control1{
	float: left;
	width: 860px;
	min-height: 50px;
	vertical-align: top;
} */
.form-control2 add-part {
	width: 800px;
}

.cat_list {
	/* width: 500px; */
	/* height: 300px; */
	float: left;
}

.list_category button {
	color: white;
}

.col-md-12 mb-3 mb-md-0 {
	width: 500px;
}

.btn_cat, .btn_close, #btn_del, #btn_canc, #btn_chk {
	border: 1px solid #ebebeb;
	border-radius: 5px;
	padding: 5px;
	color: black;
}

.wrap_layer .layer_frm .area_category_select {
	display: table;
	width: 100%;
	font-size: 14px;
	table-layout: fixed;
}

.wrap_layer .layer_frm .area_category_select .depth1, .wrap_layer .layer_frm .area_category_select .depth2 {
	display: table-cell;
	width: 215px;
	border-right: 1px solid #dfe1e5;
	box-sizing: border-box;
	vertical-align: top;
}

.wrap_layer .layer_frm .area_category_select .area_scroll {
	overflow-x: hidden;
	overflow-y: auto;
	height: 229px;
	box-sizing: border-box;
}

.wrap_layer .layer_frm .area_category_select .list_category {
	padding: 12px 0 9px;
}

.wrap_layer .layer_frm .area_category_select .depth1, .area_category_select .depth2 {
	display: table-cell;
	width: 215px;
	border-right: 1px solid #dfe1e5;
	box-sizing: border-box;
	vertical-align: top;
}

.wrap_layer .layer_frm .area_category_select .area_scroll {
	overflow-x: hidden;
	overflow-y: auto;
	height: 229px;
	box-sizing: border-box;
}

.wrap_layer .layer_frm .area_category_select .list_category {
	padding: 12px 0 9px;
}

.wrap_layer .layer_frm .area_category_select .depth_check {
	display: table-cell;
	vertical-align: top;
}

.wrap_layer .layer_frm .area_category_select .area_scroll {
	overflow-x: hidden;
	overflow-y: auto;
	height: 229px;
	box-sizing: border-box;
}

.wrap_layer .layer_frm .area_category_select .list_check {
	padding: 18px 0 4px 30px;
}

.wrap_layer .layer_frm .area_category_select .list_check li {
	float: left;
	margin-bottom: 14px;
	width: 50%;
}

.form-group .col .area_btn {
	padding: 19px 30px 20px 0;
	border-top: 1px solid #dfe1e5;
	text-align: right;
}

.ftco-section .wrap_layer .layer_frm {
	display: none;
	position: absolute;
	top: 0;
	width: 100%;
	border-radius: 5px;
	box-sizing: border-box;
	background: #fff;
	box-shadow: 0 0 8px 0 rgba(0, 0, 0, 0.15);
}

body {
	font-family: "나눔스퀘어";
}
</style>
</head>
<body>
	<!-- style="background-image: url('images/bg_1.jpg');" -->
	<div class="hero-wrap hero-wrap-2"
		style="background-image: url('/resources/images/bg_1.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-end justify-content-start">
				<div class="col-md-12 ftco-animate text-center mb-5">
					<p class="breadcrumbs mb-0">
						<span class="mr-3"><a href="index.html">Home <i
								class="ion-ios-arrow-forward"></i></a></span> <span>Job Post</span>
					</p>
					<h1 class="mb-3 bread">채용 공고 등록</h1>
				</div>
			</div>
		</div>
	</div>

	<section class="ftco-section bg-light">
		<div class="container">
			<div class="row">

				<div class="col-lg-12 col-lg-8 mb-5">

					<!-- 부분 헤더 -->
					<div class="frm_header">
						<h2 class="tit_step">담당자 정보</h2>
						<p class="subhead">먼저 인사담당자님과 기업 정보가 맞는지 확인해주세요</p>
					</div>

					<form action="#" class="p-5 bg-white">

						<section class="ftco-section">
							<div class="row form-group">
								<div class="col-md-12 mb-3 mb-md-0">
									<label class="font-weight-bold" for="fullname">담당자 이름</label>
									<input type="text" id="fullname" class="form-control1" placeholder="담당자명 입력" maxlength="15" size="15">
									<input type="text" id="available" class="form-control1" placeholder="담당자 부서명 입력" size="15" />
								</div>
							</div>

							<div class="row form-group">
								<div class="col-md-12 mb-3 mb-md-0">
									<label class="font-weight-bold" for="fullname">담당자 전화번호</label>
									<span class="mng_phone">
										<input type="text" id="tel1" class="form-control1" placeholder="070" maxlength="3" size="3">
									</span>
									<span class="mng_phone"> - 
										<input type="text" id="tel2" class="form-control1" placeholder="1234" maxlength="4" size="5">
									</span>
									<span class="mng_phone"> - 
										<input type="text" id="tel3" class="form-control1" placeholder="5678" maxlength="4" size="5">
									</span>
								</div>
								
								<div class="col-md-12 mb-3 mb-md-0">
									<label class="font-weight-bold" for="fullname">담당자 휴대폰번호</label>
									<span class="mng_phone">
										<input type="text" id="cell1" class="form-control1" placeholder="010" maxlength="3" size="3">
									</span>
									<span class="mng_phone"> - 
										<input type="text" id="cell2" class="form-control1" placeholder="1234" maxlength="4" size="5">
									</span>
									<span class="mng_phone"> - 
										<input type="text" id="cell3" class="form-control1" placeholder="5678" maxlength="4" size="5">
									</span>
								</div>
							</div>


							<div class="row form-group">
								<div class="col-md-12 mb-3 mb-md-0">
									<label class="font-weight-bold" for="fullname">담당자 이메일</label>
									<input type="text" id="fullname" class="form-control1" placeholder="hong@naver.com">
								</div>
							</div>

							<div class="row form-group mb-5">
								<div class="col-md-12 mb-3 mb-md-0">
									<label class="font-weight-bold" for="fullname">업종</label>
									<!-- 업종은 txtfld에 업종 선택하면 그 값 보이게 하기 -->
									<!-- 업종 선택하기 버튼 -->
									<button type="button" class="btn btn-link" id="btn_cat_area">업종 선택하기</button>
									<p class="txt_placeholder">업종은 최대 1개 선택할 수 있습니다.</p>
									
									<!-- ul>li 사용하여 업종 선택. -->
									<!-- 업종 선택 -->
									
									<div class="wrap_layer">
										<div class="layer_frm layer_add_industry" id="industry_all_list">
											<div class="area_category_select">
												<div class="depth1">
													<div class="area_scroll category_step">
														<ul class="list_category">
															<li class="on" data-depth="0" data-mcode="1" data-bcode=""><button
																	type="button">서비스업</button></li>
		
															<li class="" data-depth="0" data-mcode="2" data-bcode=""><button
																	type="button">제조·화학</button></li>
		
															<li class="" data-depth="0" data-mcode="3" data-bcode=""><button
																	type="button">IT·웹·통신</button></li>
		
															<li class="" data-depth="0" data-mcode="4" data-bcode=""><button
																	type="button">은행·금융업</button></li>
		
															<li class="" data-depth="0" data-mcode="5" data-bcode=""><button
																	type="button">미디어·디자인</button></li>
		
															<li class="" data-depth="0" data-mcode="6" data-bcode=""><button
																	type="button">교육업</button></li>
		
															<li class="" data-depth="0" data-mcode="7" data-bcode=""><button
																	type="button">의료·제약·복지</button></li>
		
															<li class="" data-depth="0" data-mcode="8" data-bcode=""><button
																	type="button">판매·유통</button></li>
		
															<li class="" data-depth="0" data-mcode="9" data-bcode=""><button
																	type="button">건설업</button></li>
		
															<li class="" data-depth="0" data-mcode="10" data-bcode=""><button
																	type="button">기관·협회</button></li>
														</ul>
													</div>
												</div>
												<div class="depth2">
													<div class="area_scroll category_step">
														<ul class="list_category">
															<li class="on" data-depth="1" data-mcode="1"
																data-bcode="108"><button type="button">호텔·여행·항공</button></li>
		
															<li class="" data-depth="1" data-mcode="1" data-bcode="109"><button
																	type="button">외식업·식음료</button></li>
		
															<li class="" data-depth="1" data-mcode="1" data-bcode="111"><button
																	type="button">시설관리·경비·용역</button></li>
		
															<li class="" data-depth="1" data-mcode="1" data-bcode="115"><button
																	type="button">레저·스포츠·여가</button></li>
		
															<li class="" data-depth="1" data-mcode="1" data-bcode="118"><button
																	type="button">AS·카센터·주유</button></li>
		
															<li class="" data-depth="1" data-mcode="1" data-bcode="119"><button
																	type="button">렌탈·임대</button></li>
		
															<li class="" data-depth="1" data-mcode="1" data-bcode="120"><button
																	type="button">웨딩·장례·이벤트</button></li>
		
															<li class="" data-depth="1" data-mcode="1" data-bcode="121"><button
																	type="button">기타서비스업</button></li>
		
															<li class="" data-depth="1" data-mcode="1" data-bcode="122"><button
																	type="button">뷰티·미용</button></li>
														</ul>
													</div>
												</div>
												<div class="depth_check">
													<div class="area_scroll category_step">
														<p class="txt_noti no_industry_bcode" style="display: none;">←
															업종을 선택해주세요</p>
														<ul class="list_check industry_bcode"
															style="display: block;">
															<li><span class="inpChk sizeM"> <input
																	type="checkbox" id="i_keyword_10803" data-depth="2"
																	value="10803"><label class="lbl"
																	for="i_keyword_10803">호텔</label>
															</span></li>
		
															<li><span class="inpChk sizeM"> <input
																	type="checkbox" id="i_keyword_10804" data-depth="2"
																	value="10804"><label class="lbl"
																	for="i_keyword_10804">콘도</label>
															</span></li>
		
															<li><span class="inpChk sizeM"> <input
																	type="checkbox" id="i_keyword_10805" data-depth="2"
																	value="10805"><label class="lbl"
																	for="i_keyword_10805">카지노</label>
															</span></li>
		
															<li><span class="inpChk sizeM"> <input
																	type="checkbox" id="i_keyword_10806" data-depth="2"
																	value="10806"><label class="lbl"
																	for="i_keyword_10806">여행사</label>
															</span></li>
		
															<li><span class="inpChk sizeM"> <input
																	type="checkbox" id="i_keyword_10807" data-depth="2"
																	value="10807"><label class="lbl"
																	for="i_keyword_10807">항공사</label>
															</span></li>
		
															<li><span class="inpChk sizeM"> <input
																	type="checkbox" id="i_keyword_10813" data-depth="2"
																	value="10813"><label class="lbl"
																	for="i_keyword_10813">관광</label>
															</span></li>
		
															<li><span class="inpChk sizeM"> <input
																	type="checkbox" id="i_keyword_10814" data-depth="2"
																	value="10814"><label class="lbl"
																	for="i_keyword_10814">관광통역</label>
															</span></li>
		
															<li><span class="inpChk sizeM"> <input
																	type="checkbox" id="i_keyword_10818" data-depth="2"
																	value="10818"><label class="lbl"
																	for="i_keyword_10818">면세점</label>
															</span></li>
		
															<li><span class="inpChk sizeM"> <input
																	type="checkbox" id="i_keyword_10819" data-depth="2"
																	value="10819"><label class="lbl"
																	for="i_keyword_10819">유학·이민</label>
															</span></li>
														</ul>
													</div>
												</div>
											</div>
	
											<div class="area_btn">
												<button type="button" class="btnSizeL colorWhite close_layer">취소</button>
												<button type="button" class="btnSizeL colorBlue confirm_layer">확인</button>
											</div>
										</div>
									</div>




								</div>
							</div>



							<!-- 근무 지역 상세는 input:text / 시, 구는 체크박스!!!! -->

							<!-- <section class="ftco-section"> -->

							<div class="row form-group mb-5">
								<div class="col-md-12 mb-3 mb-md-0" id="loc">
									<label class="font-weight-bold" for="fullname">대표 근무지역</label>
									<input type="text" id="loc_addr1" class="form-control1"
										placeholder="서울시 구로구"> <label class="font-weight-bold"
										for="fullname">대표 근무지역 상세</label> <input type="text"
										id="loc_addr2" class="form-control1" placeholder="구로3동">

									<label class="font-weight-bold" for="fullname">인근 지역</label> <input
										type="text" id="loc_addr3" class="form-control1"
										placeholder="관악구">

									<!-- 
								<span class="form-group" id="inpChk">
									<input type="checkbox" id="fullname" class="form-control" value="0_1" />
									<label class="lbl" for="career_0_1">재택근무</label>
								</span>
								<span class="form-group" id="inpChk">
									<input type="checkbox" id="fullname" class="form-control" value="0_2" />
									<label class="lbl" for="career_0_2">경력</label>
								</span>
								 -->
								</div>
							</div>

							<div class="row form-group mb-5">
								<div class="col-md-12 mb-3 mb-md-0" id="benefit">
									<label class="font-weight-bold" for="fullname">복리후생</label>
									<textarea class="form-control" rows="3"></textarea>
								</div>
							</div>

						</section>



						<section class="ftco-section">
							<div class="frm_header">
								<h2 class="tit_step">모집 분야</h2>
								<p class="subhead">어떤일을 담당할 직원을 찾으시나요?</p>
							</div>
							<div class="row form-group">
								<div class="col-md-12 mb-3 mb-md-0">
									<label class="font-weight-bold" for="fullname">모집 분야명</label> <input
										type="text" id="fullname" class="form-control1"
										placeholder="eg. 경영지원, R&D">
									<!-- <input type="text" id="available" class="form-control" placeholder="0"/>명 지원 -->
								</div>
							</div>

							<div class="row form-group mb-5">
								<div class="col-md-12 mb-3 mb-md-0">
									<label class="font-weight-bold" for="fullname">경력 여부</label> <span
										class="form-group" id="chk_career_0"> <input
										type="checkbox" id="fullname" class="chkBox" value="0_1" /> <label
										class="lbl" for="career_0_1">신입</label>
									</span> <span class="chk_career_0"> <input type="checkbox"
										id="fullname" class="chkBox" value="0_2" /> <label
										class="lbl" for="career_0_2">경력</label>
									</span>
								</div>
							</div>

							<div class="row form-group mb-5">
								<div class="col-md-12 mb-3 mb-md-0">
									<label class="font-weight-bold" for="fullname">담당 업무</label> <input
										type="text" id="fullname" class="form-control1"
										placeholder="담당업무를 기재해주세요">
								</div>
							</div>
						</section>


						<!-- 지원 자격 / 조건 -->
						<section class="ftco-section">
							<div class="row form-group">
								<div class="col-md-12 mb-3 mb-md-0">
									<label class="font-weight-bold" for="fullname">지원자 학력</label> <select
										class="form-group" title="학력">
										<option value="none">학력무관</option>
										<option value="_6">고등학교 졸업 이상</option>
										<option value="_7">대학졸업 (2,3년) 이상</option>
										<option value="_8">대학교 졸업(4년) 이상</option>
										<option value="_9">석사 졸업 이상</option>
										<option value="_5">박사 졸업</option>
									</select>
								</div>
							</div>

							<!-- 연봉 / 급여 -->

							<div class="row form-group">
								<div class="col-md-12 mb-3 mb-md-0">
									<label class="font-weight-bold" id="sal_list" for="fullname">연봉
										/ 급여</label> <select class="form-group" title="연봉/급여">
										<option value="100">연봉</option>
										<option value="101">월급</option>
										<option value="102">주급</option>
										<option value="103">일급</option>
										<option value="104">시급</option>
										<option value="105">건당</option>
									</select>
								</div>
								<div class="col-md-12 mb-3 mb-md-0">
									<select class="form-group" id="sal_list" title="급여 상세">
										<option value="">급여를 선택하세요</option>
										<option value="3">1,400 만원 이하</option>
										<option value="4">1,400~1,600만원</option>
										<option value="5">1,600~1,800만원</option>
										<option value="6">1,800~2,000만원</option>
										<option value="7">2,000~2,200만원</option>
										<option value="8">2,200~2,400만원</option>
										<option value="9">2,400~2,600만원</option>
										<option value="10">2,600~2,800만원</option>
										<option value="11">2,800~3,000만원</option>
										<option value="12">3,000~3,200만원</option>
										<option value="13">3,200~3,400만원</option>
										<option value="14">3,400~3,600만원</option>
										<option value="15">3,600~3,800만원</option>
										<option value="16">3,800~4,000만원</option>
										<option value="17">4,000~5,000만원</option>
										<option value="18">5,000~6,000만원</option>
										<option value="19">6,000~7,000만원</option>
										<option value="20">7,000~8,000만원</option>
										<option value="21">8,000~9,000만원</option>
										<option value="22">9,000~1억원</option>
										<option value="23">1억원 이상</option>
										<option value="99">면접 후 결정</option>
										<option value="0">회사내규에 따름</option>
										<option value="98">직접입력</option>
									</select>
								</div>
							</div>



							<div class="row form-group">
								<div class="col-md-12">
									<label class="font-weight-bold" for="fullname">근무 형태</label>
								</div>
								<div class="col-md-12 mb-3 mb-md-0">
									<label for="option-job-type-1"> <input type="checkbox"
										id="option-job-type-1" name="job-type" value="1"> 정규직
									</label> <label for="option-job-type-2"> <input type="checkbox"
										id="option-job-type-2" name="job-type" value="2"> 계약직
									</label> <label for="option-job-type-3"> <input type="checkbox"
										id="option-job-type-3" name="job-type" value="3"> 인턴직
									</label> <label for="option-job-type-4"> <input type="checkbox"
										id="option-job-type-4" name="job-type" value="4"> 파견직
									</label>

									<!-- 체크박스 내부 부분 -->
									<!-- 정규직 수습기간 / 계약직 계약기간, 정규직 전환여부 / 인턴기간, 정규직 전환여부 / 파견기간, 정규직 전환여부 -->

									<div class="optional_item" id="term" style="display: none;">
										<dl id="probation_term_wrap" style="display: none;">
											<dt>정규직</dt>
											<dd>
												수습기간 <input type="text" class="inpTypo sizeS _filter"
													id="probation_term" data-filter="numeric" maxlength="2"
													title="수습기간 입력">개월
											</dd>
										</dl>
										<dl id="contract_term_wrap" style="display: none;">
											<dt>
												계약직
												<div class="toolTipWrap over">
													<button type="button">
														<span class="blind">도움말</span>
													</button>
													<div class="toolTip">
														<span class="tail tail_top_left"></span>
														<div class="tooltipCont">
															<strong class="tit_tooltip">기간제법 주요내용</strong>
															<p class="desc_tooltip">
																'기간제근로자'란 근로기간이 정해져 있는 근로 계약을 체결한 근로자를 말합니다. <a
																	href="http://www.law.go.kr/LSW/LsiJoLinkP.do?docType=JO&amp;lsNm=%EA%B8%B0%EA%B0%84%EC%A0%9C+%EB%B0%8F+%EB%8B%A8%EC%8B%9C%EA%B0%84%EA%B7%BC%EB%A1%9C%EC%9E%90+%EB%B3%B4%ED%98%B8+%EB%93%B1%EC%97%90+%EA%B4%80%ED%95%9C+%EB%B2%95%EB%A5%A0&amp;joNo=000200000&amp;languageType=KO&amp;paras=1"
																	target="_blank" class="link" title="새창으로 이동">(기간제 및
																	단시간근로자. 보호 등에 관한 법률)</a><br> 따라서, 계약직, 임시직, 일용직, 촉박직 등
																명칭에 관계없이 기간의 정함이 있는 근로계약을 체결한 근로자는 모두 기간제 근로자에 해당합니다.<br>
																2년 이상 근로계약시에는 무기근로계약으로 체결해야 합니다.
															</p>
														</div>
													</div>
												</div>
											</dt>
											<dd>
												계약기간 <input type="text" class="inpTypo sizeS _filter"
													id="contract_term" data-filter="numeric" maxlength="2"
													title="계약기간 입력">개월 <span class="optional_inpchk">
													<span class="inpChk"><input type="checkbox"
														id="chk_term_jt_10" value="10"> <label class="lbl"
														for="chk_term_jt_10">정규직 전환 가능</label></span> <span
													class="inpChk"><input type="checkbox"
														id="chk_term_jt_16" value="16"> <label class="lbl"
														for="chk_term_jt_16">기간제</label></span> <span class="inpChk"><input
														type="checkbox" id="chk_term_jt_17" value="17"> <label
														class="lbl" for="chk_term_jt_17">무기계약직</label></span>
												</span>
											</dd>
										</dl>
										<dl id="internship_term_wrap" style="display: none;">
											<dt>
												인턴직
												<div class="toolTipWrap over">
													<button type="button">
														<span class="blind">도움말</span>
													</button>
													<div class="toolTip">
														<span class="tail tail_top_left"></span>
														<div class="tooltipCont">
															<strong class="tit_tooltip">기간제법 주요내용</strong>
															<p class="desc_tooltip">
																'기간제근로자'란 근로기간이 정해져 있는 근로 계약을 체결한 근로자를 말합니다. <a
																	href="http://www.law.go.kr/LSW/LsiJoLinkP.do?docType=JO&amp;lsNm=%EA%B8%B0%EA%B0%84%EC%A0%9C+%EB%B0%8F+%EB%8B%A8%EC%8B%9C%EA%B0%84%EA%B7%BC%EB%A1%9C%EC%9E%90+%EB%B3%B4%ED%98%B8+%EB%93%B1%EC%97%90+%EA%B4%80%ED%95%9C+%EB%B2%95%EB%A5%A0&amp;joNo=000200000&amp;languageType=KO&amp;paras=1"
																	target="_blank" class="link" title="새창으로 이동">(기간제 및
																	단시간근로자. 보호 등에 관한 법률)</a><br> 따라서, 계약직, 임시직, 일용직, 촉박직 등
																명칭에 관계없이 기간의 정함이 있는 근로계약을 체결한 근로자는 모두 기간제 근로자에 해당합니다.<br>
																2년 이상 근로계약시에는 무기근로계약으로 체결해야 합니다.
															</p>
														</div>
													</div>
												</div>
											</dt>
											<dd>
												계약기간 <input type="text" class="inpTypo sizeS _filter"
													id="internship_term" data-filter="numeric" maxlength="2"
													title="계약기간 입력">개월 <span class="optional_inpchk">
													<span class="inpChk"><input type="checkbox"
														id="chk_term_jt_11" value="11"> <label class="lbl"
														for="chk_term_jt_11">정규직 전환 가능</label></span>
												</span>
											</dd>
										</dl>
										<dl id="dispatch_term_wrap" style="display: none;">
											<dt>
												파견직
												<div class="toolTipWrap over">
													<button type="button">
														<span class="blind">도움말</span>
													</button>
													<div class="toolTip">
														<span class="tail tail_top_left"></span>
														<div class="tooltipCont">
															<strong class="tit_tooltip">파견법 주요내용</strong>
															<p class="desc_tooltip">
																'파견근로자'란 파견사업주가 고용한 근로자로서 근로자파견의 대상이 되는 자를 말합니다.
																(「파견근로자보호 등에 관한 법률」 제2조제5호) 근로자 파견의 기간은 <a
																	href="http://www.law.go.kr/LSW/LsiJoLinkP.do?docType=JO&amp;lsNm=%ED%8C%8C%EA%B2%AC%EA%B7%BC%EB%A1%9C%EC%9E%90%EB%B3%B4%ED%98%B8+%EB%93%B1%EC%97%90+%EA%B4%80%ED%95%9C+%EB%B2%95%EB%A5%A0&amp;joNo=000600000&amp;languageType=KO&amp;paras=1"
																	target="_blank" class="link" title="새창으로 이동">제 5조
																	제2항</a>에 해당하는 경우를 제외하고는 1년을 초과해서는 아니 됩니다.
															</p>
														</div>
													</div>
												</div>
											</dt>
											<dd>
												계약기간 <input type="text" class="inpTypo sizeS _filter"
													id="dispatch_term" data-filter="numeric" maxlength="2"
													title="계약기간 입력">개월 <span class="optional_inpchk">
													<span class="inpChk"><input type="checkbox"
														id="chk_term_jt_23" value="23"> <label class="lbl"
														for="chk_term_jt_23">정규직 전환 가능</label></span>
												</span>
											</dd>
										</dl>
									</div>
									<!-- <em class="msgInvalid msgarea_type _invalid_msg" style="display: none;">근무형태를 선택해주세요.</em> -->
								</div>
							</div>


							<!-- 근무 요일 -->
							<div class="row form-group">
								<div class="col-md-12 mb-3 mb-md-0">
									<label class="font-weight-bold" for="fullname">근무 요일</label> <select
										class="form-group" name="work_shift_cd" title="근무요일">
										<option value="">선택</option>
										<option value="wsh010">주 5일(월~금)</option>
										<option value="wsh020">토요일 격주휴무(월~토)</option>
										<option value="wsh030">주 6일(월~토)</option>
										<option value="wsh040">주 3일(격일제)</option>
										<option value="wsh050">탄력적근무제</option>
										<option value="wsh060">2교대</option>
										<option value="wsh070">3교대</option>
										<option value="wsh080">4교대</option>
										<option value="wsh999">직접입력</option>
									</select>
								</div>
								<!-- 직접입력 선택했을 때 뜨게하기 -->
								<input type="text" name="work_shift_value" id="form-group"
									maxlength="30" title="근무요일 직접입력"
									placeholder="예) 월 4일 휴일, 주 5일(매주 금요일 휴일) 등"
									style="display: none;" />
							</div>


							<!-- 근무 시간 -->
							<div class="row form-group">
								<div class="col-md-12 mb-3 mb-md-0">
									<label class="font-weight-bold" for="fullname">근무 시간</label> <select
										class="form-group" name="work_shift_time" title="근무시간">
										<option value="">선택</option>
										<option value="1">오전 9시~오후 6시</option>
										<option value="2">오전 8시 30분~오후 5시 30분</option>
										<option value="3">오전 10시~오후 7시</option>
										<option value="4">탄력근무제</option>
										<option value="5">직접입력</option>
									</select>
								</div>
								<!-- 직접입력 선택했을 때 뜨게하기 -->
								<input type="text" name="work_shift_time" id="form-group"
									maxlength="30" title="근무시간 직접입력"
									placeholder="예) 1주일 순환근무, 교대 근무" style="display: none;" />
							</div>


							<!-- 성별 / 연령  -->

							<div class="row form-group mb-5">
								<div class="col-md-12 mb-3 mb-md-0">
									<label class="font-weight-bold" for="fullname">성별</label> <span
										class="form-group" id="" name="application_sex"> <select
										name="sex" id="fullname" title="성별">
											<option value="irr">성별무관</option>
											<option value="male">남성</option>
											<option value="female">여성</option>
									</select>
									</span>
								</div>
							</div>

							<div class="row form-group mb-5">
								<div class="col-md-12 mb-3 mb-md-0">
									<label class="font-weight-bold" for="fullname">연령</label>
									<span class="form-group" id="age" name="application_age">
									<select name="age" id="age_select" title="연령">
											<option value="irr" id="irr">연령무관</option>
											<option value="limit" id="lim">연령제한</option>
									</select>
									</span>
									<!-- 연령제한 선택했을 때 뜨게하기 -->
									<!-- 최소 나이 -->
									<div class="age_limit">
										<input type="text" class="max_age" name="max_age"
											id="form-group" title="최소 나이"
											placeholder="만나이로 작성하세요. 예) 만 20세" />
										<!-- style="display: none;"  -->
										<!-- 최대 나이 -->
										~ <input type="text" class="min_age" name="min_age"
											id="form-group" title="최대 나이"
											placeholder="만나이로 작성하세요. 예) 만 20세" />
									</div>
								</div>

							</div>
						</section>


						<!-- 채용 절차 -->

						<!-- 공고 대표 직무 -->
						<section class="ftco-section">
							<div class="row form-group mb-5">
								<div class="col-md-12 mb-3 mb-md-0">
									<label class="font-weight-bold" for="fullname">공고 대표 직무</label>
									<!-- 이 버튼을 누르면 체크박스 리스트가 아래로 내려옴 -->
									<input type="text" id="cat_add" class="form-control1 add-part" placeholder="대표 직종/직업을 선택하세요" />
									<button type="button" id="btn_add" class="form-control2 btn btn-primary">추가하기</button>

								</div>

								<!-- 대표 직무 리스트 -->

								<div class="wrap_layer" style="display: none;">
									<div class="layer_frm layer_add_job">
									<!-- 
										<div class="area_keyword">
											<div class="wrap_search" id="job_category_search_list">
												<input type="text" id="" class="inpTypo sizeL inp_keyword"
													title="직종명" placeholder="직종명을 입력하세요">
												<button type="button"
													class="btn_del_keyword btnDeleteSearch"
													data-target-input=".inp_keyword" id="btn_del">키워드
													삭제</button>
												<div class="layer_suggestion">
													<div class="area_scroll" id="if_nomatch_cat">
														<p class="txt_noti">일치하는 직종이 없습니다. 다시 검색해주세요.</p>
														<ul class="list_check"></ul>
													</div>
													<div class="util_search">
														<button type="button" class="btn_close">닫기</button>
													</div>
												</div>
											</div>
										</div> -->
										
										<div class="area_category_select" id="job_category_all_list">
											<div class="depth1">
												<div class="area_scroll">
													<ul class="list_category" style="display: block;">
														<li class="cat_list" style="float: left;"><button type="button" class="btn_cat" data-depth="0" value="경영·사무">경영·사무</button></li>
														<li class="cat_list"><button type="button" class="btn_cat" data-depth="0" value="영업·고객상담">영업·고객상담</button></li>
														<li class="cat_list"><button type="button" class="btn_cat" data-depth="0" value="생산·제조">생산·제조</button></li>
														<li class="cat_list"><button type="button" class="btn_cat" data-depth="0" value="IT·인터넷">IT·인터넷</button></li>
														<li class="cat_list"><button type="button" class="btn_cat" data-depth="0" value="전문직">전문직</button></li>
														<li class="cat_list"><button type="button" class="btn_cat" data-depth="0" value="교육">교육</button></li>
														<li class="cat_list"><button type="button" class="btn_cat" data-depth="0" value="미디어">미디어</button></li>
														<li class="cat_list"><button type="button" class="btn_cat" data-depth="0" value="특수계층·공공">특수계층·공공</button></li>
														<li class="cat_list"><button type="button" class="btn_cat" data-depth="0" value="건설">건설</button></li>
														<li class="cat_list"><button type="button" class="btn_cat" data-depth="0" value="유통·무역">유통·무역</button></li>
														<li class="cat_list"><button type="button" class="btn_cat" data-depth="0" value="서비스">서비스</button></li>
														<li class="cat_list"><button type="button" class="btn_cat" data-depth="0" value="디자인">디자인</button></li>
														<li class="cat_list"><button type="button" class="btn_cat" data-depth="0" value="의료">의료</button></li>
													</ul>
												</div>
											</div>
											<div class="depth2" style="display: none;">
												<div class="area_scroll">
													<ul class="list_category" style="display: none;"></ul>
												</div>
											</div>
											<div class="depth_check">
												<div class="area_scroll">
													<p class="txt_noti">← 직종을 선택해주세요</p>
													<ul class="list_check" style="display: none;"></ul>
												</div>
											</div>
										</div>
										<div class="area_btn">
											<button type="button" class="btnSizeL colorWhite btn_cancel close_layer" id="btn_canc" data-layer_type="jobCategory">취소</button>
											<button type="button" class="btnSizeL colorBlue btn_complete" id="btn_chk">확인</button>
										</div>
									</div>
								</div>
							</div>


							<!-- 접수 시작 기간 / 접수 종료 기간 -->
							<div class="row form-group mb-5">
								<div class="col-md-12 mb-3 mb-md-0">
									<label class="font-weight-bold" for="fullname">접수 기간</label> <input
										type="date" name="apply_start_date" title="접수시작" /> ~ <input
										type="date" name="apply_end_date" title="접수마감" />

								</div>
							</div>

							<div class="form-group">
								<div class="form-field">
									<button type="submit" class="form-control1 btn btn-primary"
										style="align-self: center;">공고등록</button>
								</div>
							</div>
						</section>

					</form>
				</div>


				<!-- 
				<div class="col-lg-4">	
					<div class="p-4 mb-3 bg-white">
						<h3 class="h5 text-black mb-3">Contact Info</h3>
						<p class="mb-0 font-weight-bold">Address</p>
						<p class="mb-4">203 Fake St. Mountain View, San Francisco,
							California, USA</p>
						<p class="mb-0 font-weight-bold">Phone</p>
						<p class="mb-4">
							<a href="#">+1 232 3235 324</a>
						</p>
						<p class="mb-0 font-weight-bold">Email Address</p>
						<p class="mb-0">
							<a href="#"><span class="__cf_email__"
								data-cfemail="671e081215020a060e0b2703080a060e094904080a">[email&#160;protected]</span></a>
						</p>
					</div>
					<div class="p-4 mb-3 bg-white">
						<h3 class="h5 text-black mb-3">More Info</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Ipsa ad iure porro mollitia architecto hic consequuntur.
							Distinctio nisi perferendis dolore, ipsa consectetur</p>
						<p>
							<a href="#" class="btn btn-primary  py-2 px-4">Learn More</a>
						</p>
					</div>
				</div> -->

			</div>


		</div>



	</section>





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


	<%@ include file="/main/mainPage/mp_footer.jsp"%>
</body>
</html>