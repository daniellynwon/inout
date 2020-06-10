<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Job Post New Last</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		
		jQuery('#age').change(function(){
			var state = jQuery('#age option:selected').val();
			if(state=='limit'){
				jQuery('.age_limit').show();
			}else {
				jQuery('.age_limit').hide();
			}
		});
		
		/* 근무 요일 */
		$('#work_shift_value').hide();
		jQuery('#work_shift_part').change(function(){
			var state = jQuery('#work_shift_part option:selected').val();
			if (state == 'wsh999') {
				jQuery('#work_shift_value').show();
			} else {
				jQuery('#work_shift_value').hide();
			}
		});
		
		/* 근무 시간 */
		
		$('#work_shift_time').hide();
		jQuery('#work_shift_time_cd').change(function(){
			var state = jQuery('#work_shift_time_cd option:selected').val();
			if (state == '5') {
				jQuery('#work_shift_time').show();
			} else {
				jQuery('#work_shift_time').hide();
			}
		});
		
		/* 급여 상세 */
		$('.salary_directly').hide();
		jQuery('.sal_list').change(function() {
			var state = jQuery('.sal_list option:selected').val();
			if (state == '98') {
				jQuery('.salary_directly').show();
			} else {
				jQuery('.salary_directly').hide();
			}
		});
		
		$('.industry_all_list').hide();
		$('.depth2').hide();
		$('.depth3').hide();
		
		jQuery('.on').change(function() {
			var state = jQuery('.on option:selected').val();
			if (state == '100') {
				jQuery('#100').show();
			} else if (state == '200') {
				jQuery('#200').show();
			} else if (state == '300'){
				jQuery('#300').show();
			} else if (state == '400'){
				jQuery('#400').show();
			} else if (state == '500'){
				jQuery('#500').show();
			} else if (state == '1000'){
				jQuery('#1000').show();
			}
		});
		
		/* 공고 대표 직무 추가하기 */
		$('#btn_add').click(function() {
			$('.wrap_layer_cat').toggle();
		});
		
		$('#btn_chk').click(function() {
			$('.wrap_layer_cat').toggle();
		});
		
		$('#btn_canc').click(function() {
			/* 키워드 삭제하기 */
			$('#cat_add').val("");
		});
		
		/* 대표 직무 분야 버튼 값 가져오기 */
		$('.btn_cat').click(function() {
			var cat = $(this).attr('value');
			console.log(cat);
			
			/* textfield에 value 넣기 */
			$('#cat_add').val(cat);
			
		});
		
		/* 업종 버튼 수정 추가하기 */
		$('#btn_cat_area').click(function() {
			$('#industry_all_list').toggle();
		});

		$('#btn_chk_area').click(function() {
			$('#industry_all_list').toggle();
		});
		
		$('#probation_term_wrap').hide();
		$('#contract_term_wrap').hide();
		$('#internship_term_wrap').hide();
		$('#dispatch_term_wrap').hide();
		
		
		/* 근무 형태 체크박스 */
		/* 정규직 */
		$('#prob').click(function(){
			console.log("정규");
			$('#probation_term_wrap').toggle();
		});
		
		/* 계약직 */
		$('#cont').click(function(){
			console.log("계약");
			$('#contract_term_wrap').toggle();
		});
		
		/* 인턴직 */
		$('#intern').click(function(){
			console.log("인턴");
			$('#internship_term_wrap').toggle();
		});
		
		/* 파견직 */
		$('#dispt').click(function(){
			console.log("파견");
			$('#dispatch_term_wrap').toggle();
		});
		
		
	});
	
</script>
<style type="text/css">
.step_recruit{
	border: 1px solid black;
}

.wrap_recruit_frm {
	padding-top: 175px;
}

.age_limit {
	display: none;
}

.wrap_recruit_frm .step_recruit {
	margin: 70px auto 0;
	width: 1260px;
}

.step_recruit .frm_header {
	position: relative;
	margin-bottom: 20px;
}

.step_recruit .frm_body {
	padding: 50px 0;
	border-radius: 6px;
	background: #fff;
	/* box-shadow: 0 6px 15px 0 rgba(180, 180, 180, 0.15); */
	min-height: 600px;
}

.step_recruit .frm_header .tit_step {
	margin-bottom: 1px;
	color: #2365f2;
	font-size: 16px;
	letter-spacing: -2px;
}

.step_recruit .frm_header .subhead {
	font-size: 30px;
	font-weight: bold;
	letter-spacing: -2.5px;
}

.step_recruit .frm_body .items {
	padding: 10px 60px;
	width: 100%;
	box-sizing: border-box;
}

.area_tit{
	border: 1px solid black;
}

.step_recruit .area_tit {
	float: left;
	padding: 13px 10px 0 0;
	width: 170px;
	font-size: 16px;
	line-height: 21px;
	vertical-align: top;
}

.step_recruit .area_data {
	float: left;
	width: 860px;
	min-height: 50px;
	box-sizing: border-box;
	vertical-align: top;
}

.frm_manager .manager_name {
	float: left;
	margin-right: 4px;
}

.frm_manager .manager_name .inpTypo, .frm_manager .manager_part .inpTypo
	{
	width: 380px;
}

.step_recruit .area_data .inpTypo, .step_recruit .area_data .inpSel {
	margin-right: 6px;
	margin-bottom: 10px;
}

input.inpTypo.sizeL {
	padding: 0 17px 2px;
	height: 50px;
	font-size: 15px;
	line-height: 46px;
}

input.inpTypo {
	padding: 0 13px 2px;
	height: 40px;
	border: 1px solid #ddd;
	border-radius: 5px;
	box-sizing: border-box;
	color: #222;
	font-family: "나눔 스퀘어", gulim, dotum, sans-serif;
	font-size: 14px;
	letter-spacing: -1px;
	line-height: 36px;
	vertical-align: middle;
	background-color: #fff;
}

.frm_manager .manager_phone .inpTypo {
	width: 80px;
}

.frm_manager .manager_phone .dash {
	display: inline-block;
	margin: 13px 2px 0 -5px;
	vertical-align: top;
}

.frm_manager .manager_email {
	position: relative;
}

.frm_manager .manager_email .inpTypo {
	width: 380px;
}

.step_recruit .selected_item.on, .step_recruit .selected_item.selected {
	border-color: #444;
}

.step_recruit .selected_item {
	position: relative;
	padding: 14px 108px 6px 19px;
	min-height: 28px;
	border: 1px solid #dfe1e5;
	border-radius: 5px;
	font-size: 15px;
	vertical-align: middle;
	background: #fff;
}

.step_recruit .selected_item.on .btn_reset, .step_recruit .selected_item.selected .list_selected_item
	{
	display: block;
}

.step_recruit .wrap_layer {
	position: relative;
	z-index: 5;
}

.step_recruit .wrap_layer .layer_frm {
	display: none;
	position: absolute;
	top: 0;
	width: 100%;
	border-radius: 5px;
	box-sizing: border-box;
	background: #fff;
	box-shadow: 0 0 8px 0 rgba(0, 0, 0, 0.15);
}

.step_recruit .layer_frm .area_keyword {
	padding: 20px 30px;
	border-bottom: 1px solid #dfe1e5;
}

.area_category_select {
	display: table;
	width: 100%;
	font-size: 14px;
	table-layout: fixed;
}

.area_category_select .depth1, .area_category_select .depth2 {
	display: table-cell;
	width: 215px;
	border-right: 1px solid #dfe1e5;
	box-sizing: border-box;
	vertical-align: top;
}

.area_category_select .area_scroll {
	overflow-x: hidden;
	overflow-y: auto;
	height: 229px;
	box-sizing: border-box;
}

.area_category_select .list_category {
	padding: 12px 0 9px;
}

.area_category_select .list_category li {
	margin-bottom: 3px;
}

.area_category_select .list_category li>button {
	display: block;
	padding: 7px 0 7px 30px;
	width: 100%;
	letter-spacing: -1px;
	text-align: left;
	vertical-align: top;
}

.area_category_select .area_scroll {
	overflow-x: hidden;
	overflow-y: auto;
	height: 229px;
	box-sizing: border-box;
}

.area_category_select .depth_check {
	display: table-cell;
	vertical-align: top;
}


.area_category_select .list_check {
	padding: 18px 0 4px 30px;
}

.area_category_select .list_check li {
	float: left;
	margin-bottom: 14px;
	width: 50%;
}

span.inpRdo, span.inpChk {
	display: inline-block;
	position: relative;
}

span.inpRdo>input, span.inpChk>input {
	position: absolute;
	top: 0;
	width: 5px;
	height: 5px;
	outline-color: #7a7f82;
	opacity: 0;
	pointer-events: none;
}

span[class^="inp"].sizeM>.lbl {
	font-size: 14px;
	line-height: 21px;
}

.step_recruit .layer_frm .area_btn {
	padding: 19px 30px 20px 0;
	border-top: 1px solid #dfe1e5;
	text-align: right;
}

.step_recruit .layer_frm .area_btn .btnSizeL {
	margin-left: 5px;
	width: 100px;
}

.frm_manager .manager_location {
	padding: 10px 0 10px;
}

span.inpRdo>.lbl, span.inpChk>.lbl {
	display: inline-block;
	color: #222;
	font-size: 15px;
	letter-spacing: -1px;
	line-height: 23px;
	vertical-align: top;
}

.frm_manager .manager_address2 .inpTypo {
	width: 390px;
}

/* 수정 추가하기 버튼 */
.step_recruit .selected_item .btn_add, .step_recruit .selected_item .btn_reset
	{
	position: absolute;
	top: 14px;
	right: 19px;
	height: 20px;
	letter-spacing: -1px;
	text-decoration: underline;
}

/* 여기서부터는 두번째 section */
.step_recruit .frm_division {
	padding: 0;
	border-radius: 0;
	background: none;
	box-shadow: none;
}

.frm_division .list_division>li {
	margin-top: 10px;
	border-radius: 6px;
	background: #fff;
	box-shadow: 0 6px 15px 0 rgba(180, 180, 180, 0.15);
}

.frm_division .list_division li.expand .fulldata {
	display: block;
}

.step_recruit .frm_body .items {
	padding: 10px 60px;
	width: 100%;
	box-sizing: border-box;
}

.frm_division .list_division .division_name {
	display: inline-block;
	position: relative;
}

.frm_division .list_division .division_collect .inpTypo {
	width: 90px;
}

.step_recruit .area_data.type_txt {
	padding-top: 13px;
}

.frm_division .list_division .fulldata .inpTypo {
	width: 100%;
}

.frm_division .list_division li.expand .fulldata {
	display: block;
}

/* 지원자 학력 */
.frm_condition .condition_edu .inpSel {
	width: 210px;
}

.inpSel.sizeL>select {
	padding: 10px 33px 13px 12px;
	height: 50px;
	font-size: 15px;
	letter-spacing: -1px;
	background-position-y: 0;
}

/* 셀렉트박스 모양 꾸밈새 */
.inpSel>select {
	padding: 6px 33px 9px 12px;
	width: 100%;
	height: 40px;
	border: 1px solid #ddd;
	border-radius: 5px;
	box-sizing: border-box;
	color: #222;
	font-family: "Malgun Gothic", gulim, dotum, sans-serif;
	font-size: 14px;
	letter-spacing: -1px;
	line-height: 26px;
	text-align: left;
	vertical-align: top;
	background: #fff
		url(//www.saraminimage.co.kr/sri/pattern/bg_select_default.png)
		no-repeat 100% -6px;
	-webkit-appearance: none;
	-moz-appearance: none;
}

.frm_condition .condition_edu .inpTypo {
	width: 240px;
}

/* 연봉 급여 */
.frm_condition .condition_salary .inpSel:first-of-type {
	width: 160px;
}

.frm_condition .condition_salary .inpSel {
	width: 210px;
}

.frm_condition .condition_salary .salary_directly {
	position: relative;
}

.frm_condition .condition_salary .salary_directly .inpTypo {
	padding-right: 68px;
	width: 220px;
	box-sizing: border-box;
}

.frm_condition .condition_salary .salary_directly .txt {
	position: absolute;
	top: 3px;
	right: 29px;
	color: #888;
	line-height: 17px;
}

.frm_condition .condition_salary .noti_salary {
	margin-top: 10px;
	color: #888;
	font-size: 14px;
	line-height: 22px;
}

/* 근무 형태 */
.step_recruit .list_checkbox {
	padding-bottom: 1px;
}

.step_recruit .list_checkbox li {
	float: left;
	position: relative;
	margin: 0 -1px -1px 0;
	width: 144px;
	box-sizing: border-box;
}

.step_recruit .list_checkbox input {
	position: absolute;
	opacity: 0;
}

.step_recruit .list_checkbox .lbl {
	display: block;
	position: relative;
	padding: 14px 0;
	height: 20px;
	border: 1px solid #dfe1e5;
	color: #888;
	font-size: 15px;
	line-height: 20px;
	text-align: center;
	background: #fff;
	border-radius: 5px;
	margin-right: 15px;
}

/* 근무 요일 */

/* 근무 시간 */
.frm_condition .condition_day .inpTypo {
	width: 310px;
}

/* 공고 대표 직무 */
.area_category_select {
	display: table;
	width: 100%;
	font-size: 14px;
	table-layout: fixed;
}

.area_category_select .depth1, .area_category_select .depth2 {
	display: table-cell;
	width: 215px;
	border-right: 1px solid #dfe1e5;
	box-sizing: border-box;
	vertical-align: top;
}

.area_category_select .area_scroll {
	overflow-x: hidden;
	overflow-y: auto;
	height: 229px;
	box-sizing: border-box;
}

.area_category_select .list_category {
	padding: 12px 0 9px;
}

.area_category_select .list_category li {
	margin-bottom: 3px;
}

.area_category_select .list_category li>button {
	display: block;
	padding: 7px 0 7px 30px;
	width: 100%;
	letter-spacing: -1px;
	text-align: left;
	vertical-align: top;
}

.area_category_select .depth_check {
	display: table-cell;
	vertical-align: top;
}

ol, ul, li {
	list-style: none;
}

button {
	border: 0;
	background: transparent;
	cursor: pointer;
}

body {
	font-family: "나눔스퀘어";
}

.job_type_check {
	width : 100px;
	height: 50px;
	left: -10px;
	top: -10px;
}
</style>
</head>
<body>
	
	<div class="wrap_recruit_frm">
		<div class="step_recruit" id="frmManager">
			<div id="manager">
				<!-- 제목 -->
				<div class="frm_header">
					<h2 class="tit_step">담당자 정보</h2>
					<p class="subhead">먼저 인사담당자님과 기업 정보가 맞는지 확인해주세요</p>
				</div>
				
				<div class="frm_body frm_manager">
					<div class="items">
						<div class="area_tit">
							<strong class="tit">담당자 성함</strong>
						</div>
						<div class="area_data">
							<span class="manager_name">
								<input type="text" name="manager_nm" id="manager_nm" class="inpTypo sizeL" title="담당자명 입력" placeholder="담당자명 입력" maxlength="30" style="width: 300px;"/>
							</span>
							<span class="manager_part">
								<input type="text" name="manager_dept" id="manager_dept" class="inpTypo sizeL" title="담당자 부서명 입력" placeholder="담당자 부서명" maxlength="30" style="width: 300px;"/>
							</span>
						</div>
					</div>
					
					<div class="items">
						<div class="area_tit">
							<strong class="tit">전화번호</strong>
						</div>
						<div class="area_data">
							<span class="manager_phone">
								<input type="text" id="tel1" name="tel1" class="inpTypo sizeL _filter" title="전화번호 첫번째 자리 입력" maxlength="3" placeholder="070">
							</span>
							<span class="manager_phone"> <p class="dash">-</p>
								<input type="text" id="tel2" name="tel2" class="inpTypo sizeL _filter" title="전화번호 두번째 자리 입력" maxlength="4" placeholder="1234">							
							</span>
							<span class="manager_phone"> <p class="dash">-</p>
								<input type="text" id="tel3" name="tel3" class="inpTypo sizeL _filter" title="전화번호 세번째 자리 입력" maxlength="4" placeholder="5678">							
							</span>
						</div>
					</div>
					
					<div class="items">
						<div class="area_tit">
							<strong class="tit">담당자 휴대폰</strong>
						</div>
						<div class="area_data">
							<span class="manager_phone">
								<input type="text" name="cell1" id="cell1" class="inpTypo sizeL" title="휴대폰 첫번째 자리 입력" maxlength="3" placeholder="010"/>
							</span>
							<span class="manager_phone"> <p class="dash">-</p>
								<input type="text" name="cell2" id="cell2" class="inpTypo sizeL" title="휴대폰 두번째 자리 입력" maxlength="4" placeholder="1234"/>
							</span>
							<span class="manager_phone"> <p class="dash">-</p>
								<input type="text" name="cell3" id="cell3" class="inpTypo sizeL" title="휴대폰 세번째 자리 입력" maxlength="4" placeholder="5678"/>
							</span>
						</div>
					</div>
					
					<div class="items">
						<div class="area_tit"><strong class="tit">이메일 주소</strong></div>
						<div class="area_data">
							<div class="manager_email">
								<input type="text" id="email" name="email" class="inpTypo sizeL" title="이메일 주소 입력" placeholder="이메일 주소를 입력해주세요.">
							</div>
						</div>
					</div>
					
					<div class="items">
						<div class="area_tit"><strong class="tit">업종</strong></div>
						<div class="area_data" id="industry">
							<div class="selected_item" id="industry_summary">
								<!-- <p class="txt_placeholder">업종은 최대 1개 선택할 수 있습니다.</p> -->
								<ul class="list_selected_item frm_box_list" data-help_target="industry">
									
								</ul>
								<button type="button" class="btn_add btn btn-link btn_more_ly" id="btn_cat_area" >수정·추가하기</button>
							</div>
							
							<div class="wrap_layer">
								<div class="layer_frm layer_add_industry" id="industry_all_list">
									<div class="area_keyword">
										<div class="wrap_search" id="industry_auto_complete_wrap">
											<input type="text" id="industry_search_input" class="inpTypo sizeL inp_keyword" title="업종명" placeholder="업종명을 입력하세요">
										</div>
									</div>
									
									<div class="area_category_select">
										<div class="depth1">
											<div class="area_scroll category_step">
												<ul class="list_category">
													<li class="on" data-depth="0" data-mcode="1" id="100" >
													<button type="button" class="btn btn-default">서비스업</button></li>

													<li class="on" data-depth="0" data-mcode="2" id="200">
													<button type="button" class="btn btn-default">제조·화학</button></li>

													<li class="on" data-depth="0" data-mcode="3" id="300" >
													<button type="button" class="btn btn-default">IT·웹·통신</button></li>

													<li class="on" data-depth="0" data-mcode="4" id="400" >
													<button type="button" class="btn btn-default">은행·금융업</button></li>

													<li class="on" data-depth="0" data-mcode="5" id="500">
													<button type="button" class="btn btn-default">미디어·디자인</button></li>
													
													<li class="on" data-depth="0" data-mcode="10" id="1000" >
													<button type="button" class="btn btn-default">기관·협회</button></li>
												</ul>
											</div>
										</div>
										
										<!-- 두번째 카테고리 -->
										<div class="depth2" id="100" style="display: table-cell;">
											<div class="area_scroll category_step">
												<ul class="list_category">
													<li class="on" data-depth="1" data-mcode="1" data-bcode="108">
													<button type="button">호텔·여행·항공</button></li>

													<li class="on" data-depth="1" data-mcode="1" data-bcode="109">
													<button type="button">외식업·식음료</button></li>

													<li class="on" data-depth="1" data-mcode="1" data-bcode="111">
													<button type="button">시설관리·경비·용역</button></li>

													<li class="on" data-depth="1" data-mcode="1" data-bcode="115">
													<button type="button">레저·스포츠·여가</button></li>

													<li class="on" data-depth="1" data-mcode="1" data-bcode="118">
													<button type="button">AS·카센터·주유</button></li>

													<li class="on" data-depth="1" data-mcode="1" data-bcode="119">
													<button type="button">렌탈·임대</button></li>

													<li class="on" data-depth="1" data-mcode="1" data-bcode="120">
													<button type="button">웨딩·장례·이벤트</button></li>

													<li class="on" data-depth="1" data-mcode="1" data-bcode="121">
													<button type="button">기타서비스업</button></li>

													<li class="on" data-depth="1" data-mcode="1" data-bcode="122">
													<button type="button">뷰티·미용</button></li>
												</ul>
											</div>
										</div>
										
										<div class="depth2" id="200" style="display: table-cell;">
											<div class="area_scroll category_step">
												<ul class="list_category">
													<li class="on" data-depth="1" data-mcode="2" data-bcode="201">
														<button type="button">전기·전자·제어</button>
													</li>

													<li class="on" data-depth="1" data-mcode="2" data-bcode="202">
														<button type="button">기계·설비·자동차</button>
													</li>

													<li class="on" data-depth="1" data-mcode="2" data-bcode="204">
														<button type="button">석유·화학·에너지</button>
													</li>

													<li class="on" data-depth="1" data-mcode="2" data-bcode="205">
														<button type="button">섬유·의류·패션</button>
													</li>

													<li class="on" data-depth="1" data-mcode="2" data-bcode="207">
														<button type="button">화장품·뷰티</button>
													</li>

													<li class="on" data-depth="1" data-mcode="2" data-bcode="208">
														<button type="button">생활용품·소비재·사무</button>
													</li>

													<li class="on" data-depth="1" data-mcode="2" data-bcode="209">
														<button type="button">가구·목재·제지</button>
													</li>

													<li class="on" data-depth="1" data-mcode="2" data-bcode="210">
														<button type="button">농업·어업·광업·임업</button>
													</li>

													<li class="on" data-depth="1" data-mcode="2" data-bcode="211">
														<button type="button">금속·재료·철강·요업</button>
													</li>

													<li class="on" data-depth="1" data-mcode="2" data-bcode="212">
														<button type="button">조선·항공·우주</button>
													</li>

													<li class="on" data-depth="1" data-mcode="2" data-bcode="213">
														<button type="button">기타제조업</button>
													</li>

													<li class="on" data-depth="1" data-mcode="2" data-bcode="214">
														<button type="button">식품가공·개발</button>
													</li>

													<li class="on" data-depth="1" data-mcode="2" data-bcode="215">
														<button type="button">반도체·광학·LCD</button>
													</li>

													<li class="on" data-depth="1" data-mcode="2" data-bcode="216">
														<button type="button">환경</button>
													</li>
												</ul>
											</div>
										</div>
										
										<div class="depth2" id="300" style="display: table-cell;">
											<div class="area_scroll category_step">
												<ul class="list_category">
													<li class="on" data-depth="1" data-mcode="3" data-bcode="301">
														<button type="button">솔루션·SI·ERP·CRM</button>
													</li>

													<li class="on" data-depth="1" data-mcode="3" data-bcode="302">
														<button type="button">웹에이젼시</button>
													</li>

													<li class="on" data-depth="1" data-mcode="3" data-bcode="304">
														<button type="button">쇼핑몰·오픈마켓</button>
													</li>

													<li class="" data-depth="1" data-mcode="3" data-bcode="305">
														<button type="button">포털·인터넷·컨텐츠</button>
													</li>

													<li class="" data-depth="1" data-mcode="3" data-bcode="306">
														<button type="button">네트워크·통신·모바일</button>
													</li>

													<li class="" data-depth="1" data-mcode="3" data-bcode="307">
														<button type="button">하드웨어·장비</button>
													</li>

													<li class="" data-depth="1" data-mcode="3" data-bcode="308">
														<button type="button">정보보안·백신</button>
													</li>

													<li class="" data-depth="1" data-mcode="3" data-bcode="313">
														<button type="button">IT 컨설팅</button>
													</li>

													<li class="" data-depth="1" data-mcode="3" data-bcode="314">
														<button type="button">게임</button>
													</li>
                            
												</ul>
											</div>
										</div>
										
										<div class="depth2" id="400" style="display: table-cell;">
											<div class="area_scroll category_step">
												<ul class="list_category">
													<li class="" data-depth="1" data-mcode="4" data-bcode="401">
														<button type="button">은행·금융·저축</button>
													</li>

													<li class="" data-depth="1" data-mcode="4" data-bcode="402">
														<button type="button">대출·캐피탈·여신</button>
													</li>

													<li class="" data-depth="1" data-mcode="4" data-bcode="405">
														<button type="button">기타금융</button>
													</li>

													<li class="" data-depth="1" data-mcode="4" data-bcode="406">
														<button type="button">증권·보험·카드</button>
													</li>

												</ul>
											</div>
										</div>
										
										<div class="depth2" id="500" style="display: table-cell;">
											<div class="area_scroll category_step">
												<ul class="list_category">
													<li class="" data-depth="1" data-mcode="5" data-bcode="501">
														<button type="button">신문·잡지·언론사</button>
													</li>

													<li class="" data-depth="1" data-mcode="5" data-bcode="502">
														<button type="button">방송사·케이블</button>
													</li>

														<li class="" data-depth="1" data-mcode="5" data-bcode="503">
														<button type="button">연예·엔터테인먼트</button>
													</li>

													<li class="" data-depth="1" data-mcode="5" data-bcode="504">
														<button type="button">광고·홍보·전시</button>
													</li>

													<li class="" data-depth="1" data-mcode="5" data-bcode="505">
														<button type="button">영화·배급·음악</button>
													</li>

													<li class="" data-depth="1" data-mcode="5" data-bcode="506">
														<button type="button">공연·예술·문화</button>
													</li>

													<li class="" data-depth="1" data-mcode="5" data-bcode="509">
														<button type="button">출판·인쇄·사진</button>
													</li>

													<li class="" data-depth="1" data-mcode="5" data-bcode="510">
														<button type="button">캐릭터·애니메이션</button>
													</li>

													<li class="" data-depth="1" data-mcode="5" data-bcode="511">
														<button type="button">디자인·설계</button>
													</li>

												</ul>
											</div>
										</div>
										
										<div class="depth2" id="1000" style="display: table-cell;">
											<div class="area_scroll category_step">
												<ul class="list_category">
													<li class="" data-depth="1" data-mcode="10" data-bcode="1001">
														<button type="button">정부·공공기관·공기업</button>
													</li>

													<li class="" data-depth="1" data-mcode="10" data-bcode="1002">
														<button type="button">협회·단체</button>
													</li>
													
													<li class="" data-depth="1" data-mcode="10" data-bcode="1003">
														<button type="button">법률·법무·특허</button>
													</li>
													
													<li class="" data-depth="1" data-mcode="10" data-bcode="1004">
														<button type="button">세무·회계</button>
													</li>

													<li class="" data-depth="1" data-mcode="10" data-bcode="1005">
														<button type="button">연구소·컨설팅·조사</button>
													</li>

												</ul>
											</div>
										</div>
										<!-- 두번째 카테고리 끝 -->
										
									</div>
									<!-- area_category_select end -->
									
									<div class="area_btn">
										<button type="button" class="btnSizeL colorWhite close_layer">취소</button>
										<button type="button" class="btnSizeL colorBlue confirm_layer">확인</button>
									</div>
									<!-- area_btn end -->
									
								</div>
								<!-- layer_frm layer_add_industry end -->
							</div>
							<!-- wrap_layer end -->
						</div>
						<!-- 업종 div의 area_data end -->
						
					</div>
					<!-- 업종 items end -->
					
					<!-- 대표 근무지역 -->
					<div class="items">
						<div class="area_tit"><strong class="tit">대표 근무지역</strong></div>
						<div class="area_data" id="address">
							<div class="manager_location">
								<span class="inpChk">
									<input type="checkbox" id="chk_typ3_01" name="work-site-cd" value="site050" data-help_target="company_address">
									<label class="lbl" for="chk_typ3_01">재택근무 가능</label>
								</span>
							</div>
							
							<!-- 근무지역 input -->
							<div class="input_address internal">
								<span class="manager_address">
									<input type="text" class="inpTypo sizeL address01 _inputWrapper" id="address_depth1" name="address" data-help_target="company_address" title="주소 입력" placeholder="서울특별시 구로구 구로3동 시흥대로 ">
								</span>
								<span class="manager_address2">
									<input type="text" class="inpTypo sizeL address02 _inputWrapper" id="address_depth2" name="address_detail" data-help_target="company_address" title="상세주소 입력" placeholder="상세주소 : 예) 187-10 코오롱싸이언스밸리">
								</span>
								<span class="manager_address3">
									<input type="text" class="inpTypo sizeL address02 _inputWrapper" id="address_depth3" name="address_detail" data-help_target="company_address" title="인근 지역" placeholder="인근지역: 예) 관악구">
								</span>
							</div>
						</div>
					</div>
					<!-- 대표 근무지역 end -->
					
				</div>
				<!-- frm_body frm_manager end -->
				
			</div>
			<!-- div#manager end -->
			
		</div>
		<!-- #frmManager .step_recruit end -->
		
		
		<!-- 자격/조건 -->
		<div id="frmQualification" class="step_recruit">
			<div class="frm_header" style="float: left; width: 1260px;">
				<h2 class="tit_step">자격 / 조건</h2>
				<p class="subhead">지원자격과 근무조건은 어떻게 되나요?</p>
			</div>
			
			<div class="frm_body frm_condition">
				<div class="items" id="eduItem">
					<div class="area_tit"><strong class="tit">지원자 학력</strong></div>
					<div class="area_data">
						<div class="condition_edu">
							<div class="inpSel sizeL">
								<select id="edu_select" title="학력">
									<option value="irr">학력무관</option>

									<option value="_6">고등학교졸업이상</option>

									<option value="_7">대학졸업(2,3년)이상</option>

									<option value="_8">대학교졸업(4년)이상</option>

									<option value="_9">석사졸업이상</option>

									<option value="_5">박사졸업</option>
								</select>
							</div>
							<input type="text" id="etc_education" class="inpTypo sizeL" 
								title="(선택) 기타 학력사항 입력" placeholder="(선택) 기타 학력사항" maxlength="20">
						</div>
					</div>
				</div>
				<!-- items eduItem end -->
				
				<div class="items" id="salary">
					<div class="area_tit"><strong class="tit">연봉/급여</strong></div>
					<div class="area_data">
						<div class="condition_salary">
							<div class="inpSel sizeL">
								<select id="salary_category" title="연봉/급여">
									<option value="100">연봉</option>

									<option value="101">월급</option>

									<option value="102">주급</option>

									<option value="103">일급</option>

									<option value="104">시급</option>

									<option value="105">건당</option>
								</select>
							</div>
							<div class="inpSel sizeL" id="select_salary_cd">
								<select class="sal_list" id="salary_cd" title="급여 상세">
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
							<!-- 급여 직접입력 -->
							<span class="salary_directly" id="input_salary" style="display: none;">
								<input type="text" id="salary_ipt" name="salary" class="inpTypo sizeL _filter"
									data-filter="numeric" maxlength="6" title="급여 직접 입력">
								<span class="txt" id="salary_unit">만원</span>
							</span>
							<p class="noti_salary">
								<strong id="salary_msg">최저시급 8,590원, 주 40시간 기준 최저연봉 약 21,543,720원</strong>
								<a href="http://www.minimumwage.go.kr/index.jsp" target="_blank" class="link_info" title="새창으로 이동">최저임금제도 안내</a><br>
								최저임금을 준수하지 않는 경우, 공고 강제 마감 및 행정처분을 받을 수 있습니다.
							</p>
						</div> <!-- condition salary end -->
					</div>
				</div> <!-- salary items end -->
				
				<div class="items" id="job_type">
					<div class="area_tit"><strong class="tit">근무형태</strong></div>
					<div class="are_data"> 
						<div class="row">
							<ul class="list_checkbox job_type_chk_list" id="job_type_list">
								<li>
									<label for="job_type_1" class="lbl" id="prob">
										<input type="checkbox" id="job_type_1" class="job_type_check" value="1" >정규직
									</label>
								</li>

								<li>
									<label for="job_type_2" class="lbl" id="cont">
										<input type="checkbox" id="job_type_2" class="job_type_check" value="2">계약직
									</label>
								</li>
								<li>
									<label for="job_type_3" class="lbl" id="intern">
										<input type="checkbox" id="job_type_3" class="job_type_check" value="3">인턴직
									</label>
								</li>
									
								<li>
									<label for="job_type_4" class="lbl" id="dispt">
										<input type="checkbox" id="job_type_4" class="job_type_check" value="4">파견직
									</label>
								</li>

							</ul>
							<div class="optional_item" id="term">
								<dl id="probation_term_wrap">
									<dt>정규직</dt>
									<dt>수습기간</dt>
									<dd>
										 <input type="text" class="inpTypo sizeS _filter"
											id="probation_term" data-filter="numeric" maxlength="2"
											title="수습기간 입력" style="margin-right: 5px;">개월
									</dd>
								</dl>
								<dl id="contract_term_wrap">
									<dt>계약직</dt>
										
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
								<!-- 	</dt> -->
									<dd>
										계약기간 <input type="text" class="inpTypo sizeS _filter"
											id="contract_term" data-filter="numeric" maxlength="2"
											title="계약기간 입력">개월 <span class="optional_inpchk">
											<span class="inpChk"><input type="checkbox"
												id="chk_term_jt_10" value="10"><label class="lbl"
												for="chk_term_jt_10">정규직 전환 가능</label></span> <span class="inpChk"><input
												type="checkbox" id="chk_term_jt_16" value="16"><label
												class="lbl" for="chk_term_jt_16">기간제</label></span> <span
											class="inpChk"><input type="checkbox"
												id="chk_term_jt_17" value="17"><label class="lbl"
												for="chk_term_jt_17">무기계약직</label></span>
										</span>
									</dd>
								</dl>
								<dl id="internship_term_wrap">
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
												id="chk_term_jt_11" value="11"><label class="lbl"
												for="chk_term_jt_11">정규직 전환 가능</label></span>
										</span>
									</dd>
								</dl>
								<dl id="dispatch_term_wrap">
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
														'파견근로자'란 파견사업주가 고용한 근로자로서 근로자파견의 대상이 되는 자를 말합니다. (「파견근로자보호
														등에 관한 법률」 제2조제5호) 근로자 파견의 기간은 <a
															href="http://www.law.go.kr/LSW/LsiJoLinkP.do?docType=JO&amp;lsNm=%ED%8C%8C%EA%B2%AC%EA%B7%BC%EB%A1%9C%EC%9E%90%EB%B3%B4%ED%98%B8+%EB%93%B1%EC%97%90+%EA%B4%80%ED%95%9C+%EB%B2%95%EB%A5%A0&amp;joNo=000600000&amp;languageType=KO&amp;paras=1"
															target="_blank" class="link" title="새창으로 이동">제 5조 제2항</a>에
														해당하는 경우를 제외하고는 1년을 초과해서는 아니 됩니다.
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
												id="chk_term_jt_23" value="23"><label class="lbl"
												for="chk_term_jt_23">정규직 전환 가능</label></span>
										</span>
									</dd>
								</dl>
								
							</div>
							<!-- 누르면 뜨는 부분 end -->
							
						</div> <!-- div row end -->
						
					</div> <!-- area_data end -->
					
				</div>
				<!-- items job_type end -->
				
				<div class="items" id="work_shift_part">
					<div class="area_tit"><strong class="tit">근무요일</strong></div>
					<div class="area_data">
						<div class="condition_day">
							<div class="inpSel sizeL">
								<select id="work_shift_cd" name="work_shift_cd" style="width: 300px;" title="근무요일">
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
							<!-- 직접입력  선택 시 나옴 -->
							<input type="text" id="work_shift_value" name="work_shift_value" maxlength="30" class="inpTypo sizeL" title="근무요일 직접입력" placeholder="예) 월 4회 휴일, 주5일(매주 금요일 휴일) 등" style="display: none;">
							
						</div> <!-- condition_day end -->
					</div>	<!-- area_data end -->
				</div>
				
				<div class="items" id="work_shift_time_part">
					<div class="area_tit"><strong class="tit">근무시간</strong></div>
					<div class="area_data">
						<!-- 근무시간 체크시 노출 -->
						<div class="condition_day">
							<div class="condition_day">
								<div class="inpSel sizeL">
									<select id="work_shift_time_cd" name="work_shift_time_cd" style="width: 300px;" title="근무시간">
										<option value="">선택</option>
										<option value="1">오전 9시~오후 6시</option>
										<option value="2">오전 8시 30분~오후 5시 30분</option>
										<option value="3">오전 10시~오후 7시</option>
										<option value="4">탄력근무제</option>
										<option value="5">직접입력</option>
									</select>
								</div>
								<input type="text" id="work_shift_time" name="work_shift_time" maxlength="30" class="inpTypo sizeL" title="근무시간 직접입력"
									placeholder="예) 1주일 순환근무, 교대 근무" style="display: none;">
							</div>
						</div>
					</div>
				</div>		<!-- work_shift_time_part end -->
				
				<!-- 성별 -->
				<div class="items" id="genderItem">
					<div class="area_tit"><strong class="tit">성별</strong></div>
					<div class="area_data">
						<div class="condition_day" id="applicant_sex_part">
							<div class="inpSel sizeL">
								<select id="sex" title="성별" style="width: 300px;">
									<option value="irr">성별무관</option>
									<option value="male">남성</option>
									<option value="female">여성</option>
								</select>
							</div>
						</div>
					</div>
				</div>
				
				<!-- 연령 -->
				<div class="items" id="ageItem">
					<div class="area_tit">
						<strong class="tit">연령</strong>
					</div>
					<div class="area_data">
						<div class="condition_day" id="age_section">
							<div class="inpSel sizeL">
								<select id="age" title="연령" style="width: 300px;">
									<option value="irr" id="irr">연령무관</option>
									<option value="limit" id="lim">연령제한</option>
								</select>
							</div>
							<div class="age_limit">
								<div class="inpSel sizeL">
									<input type="text" class="inpTypo sizeL max_age" name="max_age" id="max_age" title="최소 나이" placeholder="최소나이 만나이로 작성하세요. 예) 만 20세" />
								</div>
								<span class="txt">~</span>
								<div class="inpSel sizeL">
									<input type="text" class="inpTypo sizeL min_age" name="min_age" id="min_age" title="최대 나이" placeholder="최대나이 만나이로 작성하세요. 예) 만 20세" />
								</div>
							</div>
						</div>
					</div>
				</div>


			</div>
			<!-- frm_body frm_condition end -->
			
		</div>
		<!-- 자격 조건 section end -->
		
		<div class="step_recruit" id="frmHiring">
			<div class="frm_body frm_hiring">
				<div class="items" id="jobCategory">
					<div class="area_tit"><strong class="tit">공고 대표 직무</strong></div>
					<div class="area_data">
						<input type="text" id="cat_add" class="inpTypo sizeL add-part" placeholder="대표 직종/직업을 선택하세요" />
						<button type="button" id="btn_add" class="btn btn-primary">추가하기</button>
					</div>
					
					<div class="wrap_layer wrap_layer_cat" style="display: none;">
						<div class="layer_frm layer_add_job">
							<div class="area_category_select" id="job_category_all_list">
								<div class="depth1">
									<div class="area_scroll">
										<ul class="list_category" style="display: block;">
											<li class="cat_list"><button type="button" class="btn_cat" data-depth="0" value="경영·사무">경영·사무</button></li>
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
										<!-- <p class="txt_noti">← 직종을 선택해주세요</p> -->
										<ul class="list_check" style="display: none;"></ul>
									</div>
								</div>
							</div>
							
							<div class="area_btn">
								<button type="button" class="btnSizeL colorWhite btn_cancel close_layer" id="btn_canc" data-layer_type="jobCategory">취소</button>
								<button type="button" class="btnSizeL colorBlue btn_complete" id="btn_chk">확인</button>
							</div>
						</div>
					</div>	<!-- layer_frm end -->
				</div>
				<!-- wrap_layer end -->
				
				<div class="items" id="applyPeriod">
					<div class="area_tit"><strong class="tit">지원 접수 기간</strong></div>
					<div class="area_data">
						<input type="date" class="inpTypo sizeL type_calendar" name="apply_start_date" title="접수시작" /> ~ 
						<input type="date" class="inpTypo sizeL type_calendar" name="apply_end_date" title="접수마감" />
					</div>
				</div>
				
			</div>
		</div>
		

		
		
		
		
		
		
	</div>
	<!-- wrap_recruit_frm end -->
	
</body>
</html>