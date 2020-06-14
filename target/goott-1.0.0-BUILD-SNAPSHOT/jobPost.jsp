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
		
		$('.age_limit').hide();
		jQuery('#age').change(function(){
			var state = jQuery('#age option:selected').val();
			if(state=='limit'){
				jQuery('.age_limit').show();
			}else {
				jQuery('.age_limit').hide();
			}
		});
		
		/* 근무 요일 */
	 
	/*	$('#work_shift_value').hide();
		jQuery('#work_shift_part').change(function(){
			var state = jQuery('#work_shift_part option:selected').val();
			if (state == 'wsh999') {
				jQuery('#work_shift_value').show();
			} else {
				jQuery('#work_shift_value').hide();
			}
		}); */
		
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
		
		$('#industry_all_list').hide();
		$('.depth2').hide();
		$('.depth3').hide();
		
		
		
		
		/* 업종 카테고리 분류별로 보여지게 하기 */
		/* depth2 클래스의 버튼들 클래스 class="btn_depth2" */
		$('.on').click(function() {
			var state = this.value;
			console.log('state', state);
			if(state && $('#'+state).length > 0){
				$('.depth2').hide();
				$('#'+state).show();
			}

		});
			
		var selected;
		/* 업종 카테고리 textfield에 올릴려고 시도ing... */
		$('.on1').click(function(){
			//console.log($(this)[0].innerText);
			selected = $(this)[0].innerText;
			console.log(selected);
			
			/* 업종 카테고리에 확인 버튼 누르면, textfield에 올라오게 하기 */
			$('#btn_lit_chk').click(function(){
				console.log("확인");
				$("#list_selected_item").val(selected);
			});
			
		});
		
		
		

		$('#wrap_layer_cat').hide();
		/* 공고 대표 직무 추가하기 */
		$('#btn_add').click(function() {
			console.log("click");
			$('#wrap_layer_cat').toggle();
		});

		$('#btn_chk').click(function() {
			$('#wrap_layer_cat').toggle();
		});

		$('#btn_canc').click(function() {
			/* 키워드 삭제하기 */
			$('#cat_add').val("");
			$('#wrap_layer_cat').toggle();
		});

		/* 대표 직무 분야 버튼 값 가져오기 */
		$('.btn_cat').click(function() {
			var cat = $(this).attr('value');
			console.log(cat);

			/* textfield에 value 넣기 */
			$('#cat_add').val(cat);

			var val = $(this).attr("id");
			console.log(val);
			if (val == '1') {
				$('#1').show();
			}

		});

		/* 업종 버튼 수정 추가하기 */
		$('#btn_cat_area').click(function() {
			$('#industry_all_list').toggle();

		});

		$('#btn_chk_area').click(function() {
			$('#industry_all_list').toggle();
		});

		/* 취소, 확인 버튼 누르면 업종 div 사라지게 */
		$('.close_layer').click(function() {
			$('#industry_all_list').toggle();
		});

		$('.confirm_layer').click(function() {
			$('#industry_all_list').toggle();
		});

		$('#probation_term_wrap').hide();
		$('#contract_term_wrap').hide();
		$('#internship_term_wrap').hide();
		$('#dispatch_term_wrap').hide();

		/* 근무 형태 체크박스 */
		/* 정규직 */
		$('#prob').click(function() {
			console.log("정규");
			$('#probation_term_wrap').toggle();
		});

		/* 계약직 */
		$('#cont').click(function() {
			console.log("계약");
			$('#contract_term_wrap').toggle();
		});

		/* 인턴직 */
		$('#intern').click(function() {
			console.log("인턴");
			$('#internship_term_wrap').toggle();
		});

		/* 파견직 */
		$('#dispt').click(function() {
			console.log("파견");
			$('#dispatch_term_wrap').toggle();
		});
		
		/* submit(); */
		$('#btn_next').click(function(){
			frm.submit();
		});
		

	});
</script>
<style type="text/css">
/* .step_recruit{
	border: 1px solid black;
} */
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

/* .area_tit{
	border: 1px solid black;
}
 */
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
	/* z-index: 5; */
}

.step_recruit .wrap_layer .layer_frm {
	/* display: none;
	position: absolute; */
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

/* .step_recruit .frm_body .items {
	padding: 10px 60px;
	width: 100%;
	box-sizing: border-box;
} */
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

/* 정규직 등 근무 형태 */
.step_recruit .optional_item {
	/* position: relative; */
	margin-top: 20px;
	padding: 0 20px;
	border-radius: 6px;
	background: #fafbfc;
}

.step_recruit .optional_item dl {
	padding: 20px 10px;
	border-top: 1px solid #eaeaea;
	line-height: 24px;
}

.step_recruit .optional_item dt {
	float: left;
	font-weight: bold;
}

.step_recruit .optional_item dd {
	margin-left: 119px;
}

.toolTipWrap {
	display: inline-block;
	position: relative;
}

.recruit_add .toolTipWrap>button, .modalDrawer .toolTipWrap>button {
	overflow: hidden;
	width: 19px;
	height: 17px;
	vertical-align: middle;
}

.frm_condition .optional_item .toolTip {
	width: 479px;
}

.toolTipWrap .toolTip .tail_top_left {
	top: -9px;
	left: 25px;
	width: 15px;
	height: 9px;
}

.frm_condition .optional_item .tit_tooltip {
	display: block;
	font-size: 16px;
	line-height: 18px;
}

.frm_condition .optional_item .desc_tooltip {
	margin-top: 10px;
	font-size: 14px;
	font-weight: normal;
	line-height: 20px;
}

.step_recruit .list_checkbox input:checked+.lbl {
    /* z-index: 2; */
    border-color: #2365f2;
    color: #2365f2;
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
	/* border-radius: 5px;
	margin-right: 15px; */
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
	width: 100px;
	height: 50px;
	left: -10px;
	top: -10px;
}

/* 정규직 전환 가능 체크했을 때 표시나게 해줌 */
input[type=checkbox] + label {
	border: 1px solid #bcbcbc;
	border-radius: 5px;
}

input[type=checkbox]:checked + label{
	background-color: #bcbcbc;
}

</style>
</head>
<body>
	
	<div class="wrap_recruit_frm">
		<form id="frm" action="./newNoticeStep1.do" method="post">
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
							<strong class="tit">회사 이름</strong>
						</div>
						<div class="area_data">
							<span class="manager_name">
								<input type="text" name="comp_name" id="" class="inpTypo sizeL" title="회사 이름 입력" placeholder="회사 이름 입력" maxlength="30" style="width: 300px;"/>
							</span>
						</div>
					</div>
					
					<div class="items">
						<div class="area_tit">
							<strong class="tit">채용공고 이름</strong>
						</div>
						<div class="area_data">
							<span class="manager_name">
								<input type="text" name="notice_title" id="" class="inpTypo sizeL" title="채용 공고 이름 입력" placeholder="채용 공고 이름 입력" maxlength="50" style="width: 600px;"/>
							</span>
						</div>
					</div>
					
					<div class="items">
						<div class="area_tit">
							<strong class="tit">담당자 성함</strong>
						</div>
						<div class="area_data">
							<span class="manager_name">
								<input type="text" name="notice_man" id="manager_nm" class="inpTypo sizeL" title="담당자명 입력" placeholder="담당자명 입력" maxlength="30" style="width: 300px;"/>
							</span>
							<span class="manager_part">
								<input type="text" name="notice_man_dept" id="manager_dept" class="inpTypo sizeL" title="담당자 부서명 입력" placeholder="담당자 부서명" maxlength="30" style="width: 300px;"/>
							</span>
						</div>
					</div>
					
					<div class="items">
						<div class="area_tit">
							<strong class="tit">전화번호</strong>
						</div>
						<div class="area_data">
							<span class="manager_phone">
								<input type="text" id="tel1" name="notice_man_tel1" class="inpTypo sizeL _filter" title="전화번호 첫번째 자리 입력" maxlength="3" placeholder="070">
							</span>
							<span class="manager_phone"> <p class="dash">-</p>
								<input type="text" id="tel2" name="notice_man_tel2" class="inpTypo sizeL _filter" title="전화번호 두번째 자리 입력" maxlength="4" placeholder="1234">							
							</span>
							<span class="manager_phone"> <p class="dash">-</p>
								<input type="text" id="tel3" name="notice_man_tel3" class="inpTypo sizeL _filter" title="전화번호 세번째 자리 입력" maxlength="4" placeholder="5678">							
							</span>
						</div>
					</div>
					
					<div class="items">
						<div class="area_tit">
							<strong class="tit">담당자 휴대폰</strong>
						</div>
						<div class="area_data">
							<span class="manager_phone">
								<input type="text" name="cell1" id="notice_man_mp1" class="inpTypo sizeL" title="휴대폰 첫번째 자리 입력" maxlength="3" placeholder="010"/>
							</span>
							<span class="manager_phone"> <p class="dash">-</p>
								<input type="text" name="cell2" id="notice_man_mp2" class="inpTypo sizeL" title="휴대폰 두번째 자리 입력" maxlength="4" placeholder="1234"/>
							</span>
							<span class="manager_phone"> <p class="dash">-</p>
								<input type="text" name="cell3" id="notice_man_mp3" class="inpTypo sizeL" title="휴대폰 세번째 자리 입력" maxlength="4" placeholder="5678"/>
							</span>
						</div>
					</div>
					
					<div class="items">
						<div class="area_tit"><strong class="tit">이메일 주소</strong></div>
						<div class="area_data">
							<div class="manager_email">
								<input type="text" id="email" name="notice_man_email" class="inpTypo sizeL" title="이메일 주소 입력" placeholder="이메일 주소를 입력해주세요.">
							</div>
						</div>
					</div>
					
					<div class="items">
						<div class="area_tit"><strong class="tit">업종</strong></div>
						<div class="area_data" id="industry">
							<div class="selected_item" id="industry_summary">
								<!-- <p class="txt_placeholder">업종은 최대 1개 선택할 수 있습니다.</p> -->
								<!-- <ul class="list_selected_item frm_box_list" data-help_target="industry"> -->
								<input type="text" name="" id="list_selected_item" class=" inpTypo sizeL inp_keyword"
									style="border: none;" title="업종명" placeholder="업종명을 입력하세요">
								<button type="button" class="btn_add btn btn-link btn_more_ly" id="btn_cat_area" >수정·추가하기</button>
							</div>
							
							<div class="wrap_layer">
								<div class="layer_frm layer_add_industry" id="industry_all_list">
									<div class="area_keyword">
										<div class="wrap_search" id="industry_auto_complete_wrap">
										</div>
									</div>
									
									<div class="area_category_select">
										<div class="depth1">
											<div class="area_scroll category_step">
												<ul class="list_category" id="ul_cat_list">
													<li class="on" data-depth="0" value="100" >
													<button type="button" class="btn btn-default">서비스업</button></li>

													<li class="on" data-depth="0" value="200" >
													<button type="button" class="btn btn-default">제조·화학</button></li>

													<li class="on" data-depth="0" value="300">
													<button type="button" class="btn btn-default">IT·웹·통신</button></li>

													<li class="on" data-depth="0" value="400">
													<button type="button" class="btn btn-default" >은행·금융업</button></li>

													<li class="on" data-depth="0" value="500">
													<button type="button" class="btn btn-default">미디어·디자인</button></li>
													
													<li class="on" data-depth="0" value="1000" >
													<button type="button" class="btn btn-default" >기관·협회</button></li>
												</ul>
											</div>
										</div>
										
										<!-- 두번째 카테고리 -->
										<div class="depth2" id="100" style="display: table-cell;">
											<div class="area_scroll category_step">
												<ul class="list_category">
													<li class="on1" data-depth="1" data-mcode="1" data-bcode="108" value="호텔·여행·항공">
													<button type="button" class="btn_depth2" value="호텔·여행·항공">호텔·여행·항공</button></li>

													<li class="on1" data-depth="1" data-mcode="1" data-bcode="109" value="외식업·식음료">
													<button type="button" class="btn_depth2" value="외식업·식음료">외식업·식음료</button></li>

													<li class="on1" data-depth="1" data-mcode="1" data-bcode="111" value="시설관리·경비·용역">
													<button type="button" class="btn_depth2" value="시설관리·경비·용역">시설관리·경비·용역</button></li>

													<li class="on1" data-depth="1" data-mcode="1" data-bcode="115" value="레저·스포츠·여가">
													<button type="button" class="btn_depth2" value="레저·스포츠·여가">레저·스포츠·여가</button></li>

													<li class="on1" data-depth="1" data-mcode="1" data-bcode="118" value="AS·카센터·주유">
													<button type="button" class="btn_depth2" value="AS·카센터·주유">AS·카센터·주유</button></li>

													<li class="on1" data-depth="1" data-mcode="1" data-bcode="119" value="렌탈·임대">
													<button type="button" class="btn_depth2" value="렌탈·임대">렌탈·임대</button></li>

													<li class="on1" data-depth="1" data-mcode="1" data-bcode="120" value="웨딩·장례·이벤트">
													<button type="button" class="btn_depth2" value="웨딩·장례·이벤트">웨딩·장례·이벤트</button></li>

													<li class="on1" data-depth="1" data-mcode="1" data-bcode="121" value="기타서비스업">
													<button type="button" class="btn_depth2" value="기타서비스업">기타서비스업</button></li>

													<li class="on1" data-depth="1" data-mcode="1" data-bcode="122" value="뷰티·미용">
													<button type="button" class="btn_depth2" value="뷰티·미용">뷰티·미용</button></li>
												</ul>
											</div>
										</div>
										
										<div class="depth2" id="200" style="display: table-cell;">
											<div class="depth2" id="200" style="display: table-cell;">
											<div class="area_scroll category_step">
												<ul class="list_category">
													<li class="on1" data-depth="1" data-mcode="2" data-bcode="201" value="전기·전자·제어">
														<button type="button">전기·전자·제어</button>
													</li>

													<li class="on1" data-depth="1" data-mcode="2" data-bcode="202" value="기계·설비·자동차">
														<button type="button">기계·설비·자동차</button>
													</li>

													<li class="on1" data-depth="1" data-mcode="2" data-bcode="204" value="석유·화학·에너지">
														<button type="button">석유·화학·에너지</button>
													</li>

													<li class="on1" data-depth="1" data-mcode="2" data-bcode="205" value="섬유·의류·패션">
														<button type="button">섬유·의류·패션</button>
													</li>

													<li class="on1" data-depth="1" data-mcode="2" data-bcode="207" value="화장품·뷰티">
														<button type="button">화장품·뷰티</button>
													</li>

													<li class="on1" data-depth="1" data-mcode="2" data-bcode="208" value="생활용품·소비재·사무">
														<button type="button">생활용품·소비재·사무</button>
													</li>

													<li class="on" data-depth="1" data-mcode="2" data-bcode="209" value="가구·목재·제지">
														<button type="button">가구·목재·제지</button>
													</li>

													<li class="on" data-depth="1" data-mcode="2" data-bcode="210" value="농업·어업·광업·임업">
														<button type="button">농업·어업·광업·임업</button>
													</li>

													<li class="on" data-depth="1" data-mcode="2" data-bcode="211" value="금속·재료·철강·요업">
														<button type="button">금속·재료·철강·요업</button>
													</li>

													<li class="on" data-depth="1" data-mcode="2" data-bcode="212" value="212">
														<button type="button">조선·항공·우주</button>
													</li>

													<li class="on" data-depth="1" data-mcode="2" data-bcode="213" value="213">
														<button type="button">기타제조업</button>
													</li>

													<li class="on" data-depth="1" data-mcode="2" data-bcode="214" value="214">
														<button type="button">식품가공·개발</button>
													</li>

													<li class="on" data-depth="1" data-mcode="2" data-bcode="215" value="215">
														<button type="button">반도체·광학·LCD</button>
													</li>

													<li class="on" data-depth="1" data-mcode="2" data-bcode="216" value="216">
														<button type="button">환경</button>
													</li>
												</ul>
											</div>
										</div>

										<div class="depth2" id="300" style="display: table-cell;">
											<div class="area_scroll category_step">
												<ul class="list_category">
													<li class="on1" data-depth="1" data-mcode="3" data-bcode="301" value="솔루션·SI·ERP·CRM">
														<button type="button">솔루션·SI·ERP·CRM</button>
													</li>

													<li class="on1" data-depth="1" data-mcode="3" data-bcode="302" value="웹에이젼시">
														<button type="button">웹에이젼시</button>
													</li>

													<li class="on1" data-depth="1" data-mcode="3" data-bcode="304" value="쇼핑몰·오픈마켓">
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
													<li class="on1" data-depth="1" data-mcode="4" data-bcode="401" value="은행·금융·저축">
														<button type="button">은행·금융·저축</button>
													</li>

													<li class="on1" data-depth="1" data-mcode="4" data-bcode="402" value="대출·캐피탈·여신">
														<button type="button">대출·캐피탈·여신</button>
													</li>

													<li class="on1" data-depth="1" data-mcode="4" data-bcode="405" value="기타금융">
														<button type="button">기타금융</button>
													</li>

													<li class="on1" data-depth="1" data-mcode="4" data-bcode="406" value="증권·보험·카드">
														<button type="button">증권·보험·카드</button>
													</li>

												</ul>
											</div>
										</div>

										<div class="depth2" id="500" style="display: table-cell;">
											<div class="area_scroll category_step">
												<ul class="list_category">
													<li class="on1" data-depth="1" data-mcode="5" data-bcode="501" value="신문·잡지·언론사">
														<button type="button">신문·잡지·언론사</button>
													</li>

													<li class="on1" data-depth="1" data-mcode="5" data-bcode="502" value="방송사·케이블">
														<button type="button">방송사·케이블</button>
													</li>

														<li class="on1" data-depth="1" data-mcode="5" data-bcode="503" value="연예·엔터테인먼트">
														<button type="button">연예·엔터테인먼트</button>
													</li>

													<li class="on1" data-depth="1" data-mcode="5" data-bcode="504" value="광고·홍보·전시">
														<button type="button">광고·홍보·전시</button>
													</li>

													<li class="on1" data-depth="1" data-mcode="5" data-bcode="505" value="영화·배급·음악">
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
													<li class="on1" data-depth="1" data-mcode="10" data-bcode="1001" value="정부·공공기관·공기업">
														<button type="button">정부·공공기관·공기업</button>
													</li>

													<li class="on1" data-depth="1" data-mcode="10" data-bcode="1002" value="협회·단체">
														<button type="button">협회·단체</button>
													</li>

													<li class="on1" data-depth="1" data-mcode="10" data-bcode="1003" value="법률·법무·특허">
														<button type="button">법률·법무·특허</button>
													</li>

													<li class="on1" data-depth="1" data-mcode="10" data-bcode="1004" value="세무·회계">
														<button type="button">세무·회계</button>
													</li>

													<li class="on1" data-depth="1" data-mcode="10" data-bcode="1005" value="연구소·컨설팅·조사">
														<button type="button">연구소·컨설팅·조사</button>
													</li>

												</ul>
											</div>
										</div>
										<!-- 두번째 카테고리 끝 -->
										
									</div>
									<!-- area_category_select end -->
									
									<div class="area_btn">
										<button type="button" class="btnSizeL colorWhite close_layer" id="btn_lit_cnc">취소</button>
										<button type="button" class="btnSizeL colorBlue confirm_layer" id="btn_lit_chk">확인</button>
									</div>
									<!-- area_btn end -->
									
								</div>
								<!-- layer_frm layer_add_industry end -->
							</div>
							<!-- wrap_layer end -->
						</div>
						<!-- 업종 div의 area_data end -->
						
					</div>
				</div>
				<!-- 업종 items end -->
				
				<!-- 대표 근무지역 -->
				<div class="items">
					<div class="area_tit"><strong class="tit">대표 근무지역</strong></div>
					<div class="area_data" id="address">
						<div class="manager_location">
							<span class="inpChk">
								<!-- <input type="checkbox" id="chk_typ3_01" name="work-site-cd" value="site050" data-help_target="company_address">
								<label class="lbl" for="chk_typ3_01">재택근무 가능</label> -->
							</span>
						</div>
						
						<!-- 근무지역 input -->
						<div class="input_address internal">
							<span class="manager_address">
								<input type="text" class="inpTypo sizeL address01 _inputWrapper" id="address_depth1" name="notice_comp_adrs1" data-help_target="company_address" title="주소 입력" placeholder="서울특별시 구로구 구로3동 시흥대로 ">
							</span>
							<span class="manager_address2">
								<input type="text" class="inpTypo sizeL address02 _inputWrapper" id="address_depth2" name="notice_comp_adrs1_detail" data-help_target="company_address" title="상세주소 입력" placeholder="상세주소 : 예) 187-10 코오롱싸이언스밸리">
							</span>
							<span class="manager_address3">
								<input type="text" class="inpTypo sizeL address02 _inputWrapper" id="address_depth3" name="notice_comp_adrs2" data-help_target="company_address" title="인근 지역" placeholder="인근지역: 예) 관악구">
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
								<select id="edu_select" name="notice_req_edu" title="학력">
									<option value="0">학력무관</option>

									<option value="6">고등학교졸업이상</option>

									<option value="7">대학졸업(2,3년)이상</option>

									<option value="8">대학교졸업(4년)이상</option>

									<option value="9">석사졸업이상</option>

									<option value="5">박사졸업</option>
								</select>
							</div>
							<!-- <input type="text" id="etc_education" class="inpTypo sizeL" 
								title="(선택) 기타 학력사항 입력" placeholder="(선택) 기타 학력사항" maxlength="20"> -->
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
								</select>
							</div>
							<div class="inpSel sizeL" id="select_salary_cd">
								<select class="sal_list" name="notice_req_sal" id="salary_cd" title="급여 상세">
									<option value="">급여를 선택하세요</option>
									<option value="0">회사내규에 따름</option>
									<option value="1">2,000~3,000만원</option>
									<option value="2">3,000~4,000만원</option>
									<option value="3">4,000~5,000만원</option>
									<option value="4">5,000~6,000만원</option>
									<option value="5">6,000만원 이상</option>
									<option value="99">면접 후 결정</option>
								</select>
							</div>
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
							
							<div class="optional_item" id="term" >
								<dl id="probation_term_wrap" style="margin-top: 370px; margin-left: 150px; display: flex;">
									
									<span style="margin-right: 15px;">정규직 수습기간</span>
									<div style="/* background-color: gray; */">
										<input type="text" class="inpTypo sizeS _filter" id="probation_term" data-filter="numeric" maxlength="2"
											name="notice_req_jgj_susb" title="수습기간 입력" style=" float: left;">
										<span style="float: left; margin-left: 20px;">개월</span>
									</div>
								</dl>
								<dl id="contract_term_wrap" style="margin-top: 370px; margin-left: 40px;"/>
									<dd>
										<span style="font-family: 나눔스퀘어;">정규직 <br />계약기간</span>
										<input type="text" class="inpTypo sizeS _filter" id="contract_term" data-filter="numeric" maxlength="2"
											name="notice_req_gyj_gigan" title="계약기간 입력">개월 
										<span class="optional_inpchk">
											<span class="inpChk">
												<input type="checkbox" id="chk_term_jt_10" name="notice_req_gyj_tojgj" value="1"
													style="width: 130px; height: 20px;" class="jgj_chk">
												<label class="lbl" for="chk_term_jt_10" style="margin-left: 20px;">정규직 전환 가능</label>
											</span>
										</span>
									</dd>
								</dl>
								<dl id="internship_term_wrap" style="margin-top: 370px; margin-left: 40px;">
									<dd>
									<span style="font-family: 나눔스퀘어;">인턴직 <br />계약기간</span>
										<input type="text" class="inpTypo sizeS _filter" id="internship_term" data-filter="numeric" maxlength="2"
											name="notice_req_int_gigan" title="계약기간 입력">개월 
										<span class="optional_inpchk">
											<span class="inpChk">
												<input type="checkbox" id="chk_term_jt_11" name="notice_req_int_tojgj" value="1"
													style="width: 130px; height: 20px;" class="jgj_chk">
												<label class="lbl" for="chk_term_jt_11">정규직 전환 가능</label>
											</span>
										</span>
									</dd>
								</dl>
								<dl id="dispatch_term_wrap" style="margin-top: 370px; margin-left: 40px;">
									<dd>
										<span style="font-family: 나눔스퀘어;">파견직<br />계약기간</span>
										<input type="text" class="inpTypo sizeS _filter" id="dispatch_term" data-filter="numeric" maxlength="2"
											name="notice_req_pgj_gigan" title="계약기간 입력">개월 
										<span class="optional_inpchk">
											<span class="inpChk">
											<input type="checkbox" id="chk_term_jt_23" name="notice_req_pgj_tojgj" value="1"
												style="width: 130px; height: 20px;" class="jgj_chk">
											<label class="lbl" for="chk_term_jt_23">정규직 전환 가능</label>
										</span>
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
					
					<div class="area_data">
					<div class="area_tit"><strong class="tit">근무요일</strong></div>
						<div class="condition_day">
							<div class="inpSel sizeL">
								<select id="work_shift_cd" name="work_shift_cd" style="width: 300px;" title="근무요일">
									<option value="">선택</option>
									<option value="주 5일(월~금)">주 5일(월~금)</option>
									<option value="토요일 격주휴무(월~토)">토요일 격주휴무(월~토)</option>
									<option value="주 6일(월~토)">주 6일(월~토)</option>
									<option value="주 3일(격일제)">주 3일(격일제)</option>
									<option value="탄력적근무제">탄력적근무제</option>
									<option value="2교대">2교대</option>
									<option value="3교대">3교대</option>
									<option value="4교대">4교대</option>
								</select>
							</div>
							<!-- 직접입력  선택 시 나옴 -->
							
						</div> <!-- condition_day end -->
					</div>	<!-- area_data end -->
				</div>
				
				<div class="items" id="work_shift_time_part">
					
					<div class="area_data">
					<div class="area_tit"><strong class="tit">근무시간</strong></div>
						<!-- 근무시간 체크시 노출 -->
						<div class="condition_day">
							<div class="condition_day">
								<div class="inpSel sizeL">
									<select id="work_shift_time_cd" name="notice_req_worktime" style="width: 300px;" title="근무시간">
										<option value="">선택</option>
										<option value="오전 9시~오후 6시">오전 9시~오후 6시</option>
										<option value="오전 8시 30분~오후 5시 30분">오전 8시 30분~오후 5시 30분</option>
										<option value="오전 10시~오후 7시">오전 10시~오후 7시</option>
										<option value="탄력근무제">탄력근무제</option>
									</select>
								</div>
							</div>
						</div>
					</div>
				</div>		<!-- work_shift_time_part end -->
				
				<!-- 성별 -->
				<div class="items" id="genderItem">
					
					<div class="area_data">
					<div class="area_tit"><strong class="tit">성별</strong></div>
						<div class="condition_day" id="applicant_sex_part">
							<div class="inpSel sizeL">
								<select id="sex" title="성별" name="notice_req_gender" style="width: 300px;">
									<option value="0">성별무관</option>
									<option value="1">남성</option>
									<option value="2">여성</option>
								</select>
							</div>
						</div>
					</div>
				</div>
				
				<!-- 연령 -->
				<div class="items" id="ageItem">
					
					<div class="area_data">
						<div class="area_tit">
							<strong class="tit">연령</strong>
						</div>
						<div class="condition_day" id="age_section">
							<div class="inpSel sizeL">
								<select id="age" title="연령" style="width: 300px;">
									<option value="irr" id="irr">연령무관</option>
									<option value="limit" id="lim">연령제한</option>
								</select>
							</div>
							<div class="age_limit" style="display: flex;">
								<div class="inpSel sizeL">
									<input type="text" class="inpTypo sizeL max_age" name="notice_req_maxage" id="max_age" title="최소 나이" placeholder="출생년도로  입력하세요. 예) 2000" />
								</div>
								<span class="txt">~</span>
								<div class="inpSel sizeL">
									<input type="text" class="inpTypo sizeL min_age" name="notice_req_minage" id="min_age" title="최대 나이" placeholder="출생년도로  입력하세요. 예) 1950" />
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
						<input type="text" id="cat_add" name="notice_prcs_job" class="inpTypo sizeL add-part" placeholder="대표 직종/직업을 선택하세요" />
						<button type="button" id="btn_add" class="btn btn-primary">추가하기</button>
					</div>
					
					<div class="wrap_layer_cat wrap_layer" id="wrap_layer_cat" style="">
						<div class="layer_frm layer_add_job">
							<div class="area_category_select" id="job_category_all_list">
								<div class="depth1">
									<div class="area_scroll">
										<ul class="list_category" style="">
											<li class="cat_list"><button type="button" class="btn_cat" data-depth="0" id="1" value="경영·사무">경영·사무</button></li>
											<li class="cat_list"><button type="button" class="btn_cat" data-depth="0" id="2" value="영업·고객상담">영업·고객상담</button></li>
											<li class="cat_list"><button type="button" class="btn_cat" data-depth="0" id="3" value="생산·제조">생산·제조</button></li>
											<li class="cat_list"><button type="button" class="btn_cat" data-depth="0" id="4" value="IT·인터넷">IT·인터넷</button></li>
											
											<li class="cat_list"><button type="button" class="btn_cat" data-depth="0" id="11" value="서비스">서비스</button></li>
											<li class="cat_list"><button type="button" class="btn_cat" data-depth="0" id="12" value="디자인">디자인</button></li>
										</ul>
									</div>
								</div>
								<div class="depth2">
									<div class="area_scroll" id="1">
										<!-- 리스트 카테고리 경영 사무 -->
										<ul class="list_category" style="display: block;" id="1" >
											<li class="on"><button type="button" data-depth="1" data-code="101">기획·전략·경영</button></li>
											<li class=""><button type="button" data-depth="1" data-code="102">총무·법무·사무</button></li>
											<li class=""><button type="button" data-depth="1" data-code="103">경리·출납·결산</button></li>
											<li class=""><button type="button" data-depth="1" data-code="104">홍보·PR·사보</button></li>
											<li class=""><button type="button" data-depth="1" data-code="107">비서·안내·수행원</button></li>
											<li class=""><button type="button" data-depth="1" data-code="108">사무보조·문서작성</button></li>
											<li class=""><button type="button" data-depth="1" data-code="113">인사·교육·노무</button></li>
											<li class=""><button type="button" data-depth="1" data-code="114">회계·재무·세무·IR</button></li>
											<li class=""><button type="button" data-depth="1" data-code="119">마케팅·광고·분석</button></li>
											<li class=""><button type="button" data-depth="1" data-code="120">전시·컨벤션·세미나</button></li>
										</ul>
									</div>
									
									<div class="area_scroll" id="2">
										<!-- 영업 고객상담 리스트 카테고리 -->
										<ul class="list_category" style="display: block;" id="2">
											<li class=""><button type="button" data-depth="1" data-code="202">일반영업</button></li>
											<li class=""><button type="button" data-depth="1" data-code="203">판매·매장관리</button></li>
											<li class=""><button type="button" data-depth="1" data-code="205">IT·솔루션영업</button></li>
											<li class=""><button type="button" data-depth="1" data-code="206">금융·보험영업</button></li>
											<li class=""><button type="button" data-depth="1" data-code="207">광고영업</button></li>
											<li class=""><button type="button" data-depth="1" data-code="208">기술영업</button></li>
											<li class=""><button type="button" data-depth="1" data-code="209">영업기획·관리·지원</button></li>
											<li class=""><button type="button" data-depth="1" data-code="210">TM·아웃바운드</button></li>
											<li class=""><button type="button" data-depth="1" data-code="211">TM·인바운드</button></li>
											<li class=""><button type="button" data-depth="1" data-code="212">고객센터·CS</button></li>
											<li class=""><button type="button" data-depth="1" data-code="213">QA·CS강사·수퍼바이저</button></li>
										</ul>
									</div>
										
									<div class="area_scroll" id="3">	
										<!-- 생산 제조 -->
										<ul class="list_category" style="display: block;" id="3">
											<li class=""><button type="button" data-depth="1" data-code="301">금속·금형</button></li>
											<li class=""><button type="button" data-depth="1" data-code="302">기계·기계설비</button></li>
											<li class=""><button type="button" data-depth="1" data-code="303">화학·에너지</button></li>
											<li class=""><button type="button" data-depth="1" data-code="304">섬유·의류·패션</button></li>
											<li class=""><button type="button" data-depth="1" data-code="308">전기·전자·제어</button></li>
											<li class=""><button type="button" data-depth="1" data-code="309">생산관리·품질관리</button></li>
											<li class=""><button type="button" data-depth="1" data-code="314">반도체·디스플레이·LCD</button></li>
											<li class=""><button type="button" data-depth="1" data-code="315">생산·제조·포장·조립</button></li>
											<li class=""><button type="button" data-depth="1" data-code="316">비금속·요업·신소재</button></li>
											<li class=""><button type="button" data-depth="1" data-code="317">바이오·제약·식품</button></li>
											<li class=""><button type="button" data-depth="1" data-code="318">설계·CAD·CAM</button></li>
											<li class=""><button type="button" data-depth="1" data-code="319">안경·렌즈·광학</button></li>
										</ul>
									</div>
										
									<div class="area_scroll" id="4">
										<!-- IT 인터넷  -->
										<ul class="list_category" style="display: block;" id="4">
											<li class=""><button type="button" data-depth="1" data-code="401">웹마스터·QA·테스터</button></li>
											<li class=""><button type="button" data-depth="1" data-code="402">서버·네트워크·보안</button></li>
											<li class=""><button type="button" data-depth="1" data-code="403">웹기획·PM</button></li>
											<li class=""><button type="button" data-depth="1" data-code="404">웹개발</button></li>
											<li class=""><button type="button" data-depth="1" data-code="405">게임·Game</button></li>
											<li class=""><button type="button" data-depth="1" data-code="406">컨텐츠·사이트운영</button></li>
											<li class=""><button type="button" data-depth="1" data-code="407">응용프로그램개발</button></li>
											<li class=""><button type="button" data-depth="1" data-code="408">시스템개발</button></li>
											<li class=""><button type="button" data-depth="1" data-code="409">ERP·시스템분석·설계</button></li>
											<li class=""><button type="button" data-depth="1" data-code="410">통신·모바일</button></li>
											<li class=""><button type="button" data-depth="1" data-code="411">하드웨어·소프트웨어</button></li>
											<li class=""><button type="button" data-depth="1" data-code="412">웹디자인</button></li>
											<li class=""><button type="button" data-depth="1" data-code="413">퍼블리싱·UI개발</button></li>
											<li class=""><button type="button" data-depth="1" data-code="414">동영상·편집·코덱</button></li>
											<li class=""><button type="button" data-depth="1" data-code="415">IT·디자인·컴퓨터교육</button></li>
											<li class=""><button type="button" data-depth="1" data-code="416">데이터베이스·DBA</button></li>
											<li class=""><button type="button" data-depth="1" data-code="417">인공지능(AI)·빅데이터</button></li>
										</ul>
									</div>
									
									<div class="area_scroll" id="11">	
										<!-- 서비스 -->
										<ul class="list_category" style="display: block;" id="11">
											<li class=""><button type="button" data-depth="1" data-code="1101">웨딩·행사·이벤트</button></li>
											<li class=""><button type="button" data-depth="1" data-code="1102">안내·도우미·나레이터</button></li>
											<li class=""><button type="button" data-depth="1" data-code="1103">보안·경호·안전</button></li>
											<li class=""><button type="button" data-depth="1" data-code="1104">주차·세차·주유</button></li>
											<li class=""><button type="button" data-depth="1" data-code="1105">AS·서비스·수리</button></li>
											<li class=""><button type="button" data-depth="1" data-code="1107">외식·식음료</button></li>
											<li class=""><button type="button" data-depth="1" data-code="1108">호텔·카지노·콘도</button></li>
											<li class=""><button type="button" data-depth="1" data-code="1109">여행·관광·항공</button></li>
											<li class=""><button type="button" data-depth="1" data-code="1110">레저·스포츠</button></li>
											<li class=""><button type="button" data-depth="1" data-code="1111">미용·피부관리·애견</button></li>
											<li class=""><button type="button" data-depth="1" data-code="1112">요리·제빵사·영양사</button></li>
											<li class=""><button type="button" data-depth="1" data-code="1113">가사·청소·육아</button></li>
										</ul>
									</div>
										
									
									<div class="area_scroll" id="12">
										<!-- 디자인 -->
										<ul class="list_category" style="display: block;" id="12">
											<li class=""><button type="button" data-depth="1" data-code="1201">그래픽디자인·CG</button></li>
											<li class=""><button type="button" data-depth="1" data-code="1202">출판·편집디자인</button></li>
											<li class=""><button type="button" data-depth="1" data-code="1203">제품·산업디자인</button></li>
											<li class=""><button type="button" data-depth="1" data-code="1204">캐릭터·만화·애니</button></li>
											<li class=""><button type="button" data-depth="1" data-code="1205">의류·패션·잡화디자인</button></li>
											<li class=""><button type="button" data-depth="1" data-code="1207">디자인기타</button></li>
											<li class=""><button type="button" data-depth="1" data-code="1208">전시·공간디자인</button></li>
											<li class=""><button type="button" data-depth="1" data-code="1209">광고·시각디자인</button></li>
										</ul>
									</div>


								</div>
								<div class="depth_check">
									<div class="area_scroll">
										<!-- <p class="txt_noti">← 직종을 선택해주세요</p> -->
										<ul class="list_check" ></ul>
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
						<input type="date" class="inpTypo sizeL type_calendar" name="notice_prcs_start" title="접수시작" /> ~ 
						<input type="date" class="inpTypo sizeL type_calendar" name="notice_prcs_end" title="접수마감" />
					</div>
				</div>
				
			</div>
		</div>
		<!-- <button type="button" id="btn_next" class="btn btn-primary btn-lg" style="float: right;"><a href="jobPost_want.jsp">다음 페이지</a></button> -->
		<input type="submit" value="다음페이지" id="btn_next" class="btn btn-primary btn-lg" style="border: none; background-color: white; margin: 0 auto; width:100%; "/>
		
		
		
		
		
		</form>
	</div>
	<!-- wrap_recruit_frm end -->
	
</body>
</html>