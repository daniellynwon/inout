<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Job Post New Last - Last</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	
	$(function() {
		$('#option_div1').hide();
		$('#option_div2').hide();
		$('#option_div3').hide();
		$('#option_div4').hide();

		$('#btn1').hide();
		$('#btn2').hide();
		$('#btn3').hide();
		$('#btn4').hide();

		/* 체크박스 선택 해제시 div 숨기기 */

		$("#resume").change(function() {
			if ($("#resume").is(":checked")) {
				$('#btn1').toggle();
			} else {
				$('#btn1').toggle();
				$('#option_div1').toggle();
			}
		});
		$("#detail_1").change(function() {
			if ($("#detail_1").is(":checked")) {
				$('#btn2').toggle();
			} else {
				$('#btn2').toggle();
				$('#option_div2').toggle();
			}
		});
		$("#detail_2").change(function() {
			if ($("#detail_2").is(":checked")) {
				$('#btn3').toggle();
			} else {
				$('#btn3').toggle();
				$('#option_div3').toggle();
			}
		});
		$("#final").change(function() {
			if ($("#final").is(":checked")) {
				$('#btn4').toggle();
			} else {
				$('#btn4').toggle();
				$('#option_div4').toggle();
			}
		});

		/* 상세보기 버튼 클릭 시 안에 div toggle */
		$('#btn1').click(function() {
			console.log("btn1");
			$('#option_div1').toggle();
		});

		$('#btn2').click(function() {
			console.log("btn2");
			$('#option_div2').toggle();
		});

		$('#btn3').click(function() {
			console.log("btn3");
			$('#option_div3').toggle();
		});

		$('#btn4').click(function() {
			console.log("btn4");
			$('#option_div4').toggle();
		});

		/* 입력완료 누르면 div hide */
		$('#btn_fns').click(function() {
			$('#option_div1').hide();
		});

		$('#btn_fns1').click(function() {
			$('#option_div2').hide();
		});
		$('#btn_fns2').click(function() {
			$('#option_div3').hide();
		});
		$('#btn_fns3').click(function() {
			$('#option_div4').hide();
		});

		/* 제출서류 체크박스 누르기 */
		$('.inpTarea').hide();
		$('#file_direct').click(function() {
			console.log('직접입력');
			$('.inpTarea').toggle();
		});
		
		$('#btn_next').click(function(){
			frm.submit();
		});

	});
</script>
<style type="text/css">
.wrap_recruit_frm {
	padding-top: 175px;
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

.step_recruit .area_data.type_txt {
	/* padding-top: 13px; */
	
}

.step_recruit .list_checkbox {
	padding-bottom: 1px;
}

/* div full data  */
.frm_hiring .list_process li.expand .fulldata {
	display: block;
}

.frm_hiring .list_process .optional_item {
	margin: 2px 0 0;
	padding: 20px 0 29px;
	border-radius: 0 0 5px 5px;
	text-align: center;
}

.frm_hiring .list_process .optional_item dl {
	padding: 9px 99px 9px 40px;
	border: none;
	text-align: left;
}

.frm_hiring .list_process .optional_item .type_input dt {
	padding-top: 12px;
}

.frm_hiring .list_process .optional_item dd {
	margin-left: 119px;
}

.frm_hiring .optional_item .inpTypo {
	margin-right: 0;
	width: 100%;
}

span.inpRdo, span.inpChk {
	display: inline-block;
	position: relative;
}

span.inpRdo>input, span.inpChk>input {
	position: absolute;
	top: 0;
	width: 1px;
	height: 1px;
	outline: none;
	opacity: 0;
	pointer-events: none;
}

span.inpRdo>.lbl, span.inpChk>.lbl {
	display: inline-block;
	color: #222;
	font-size: 15px;
	letter-spacing: -1px;
	line-height: 23px;
	vertical-align: top;
}

/* 전형 기간 */
.frm_hiring .list_process .optional_item .type_calendar {
	width: 200px;
}

input.inpTypo.type_calendar {
	border-color: #ddd;
	color: #888;
	background-color: #efefef;
}

input.inpTypo.type_calendar {
	padding-right: 40px;
	width: 135px;
	color: #444;
	letter-spacing: 0;
}

/* 제출 서류 */
.step_recruit .list_checkbox.tabsize4 li {
	width: 200px;
}

.step_recruit .list_checkbox li {
	float: left;
	position: relative;
	margin: 0 -1px -1px 0;
	width: 200px;
	box-sizing: border-box;
}

.step_recruit .list_checkbox input {
	position: absolute;
	opacity: 0;
	width: 200px;
	height: 50px;
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
	width: 200px;
}

.step_recruit .list_checkbox li:first-child .lbl {
	border-top-left-radius: 5px;
}

.step_recruit .list_checkbox.tabsize4 li:nth-last-child(4) .lbl {
	border-bottom-left-radius: 5px;
}

.step_recruit .optional_item dt {
	float: left;
	font-weight: bold;
}

.step_recruit .optional_item dl {
	padding: 20px 10px;
	border-top: 1px solid #eaeaea;
	line-height: 24px;
}

.frm_hiring .optional_item dd {
	margin-left: 130px;
}

/* 제출 서류 직접 입력 */
.frm_hiring .optional_item .inpTarea {
	width: 100%;
	height: 140px;
	vertical-align: top;
}

textarea.inpTarea {
	overflow-x: hidden;
	overflow-y: scroll;
	padding: 16px 18px;
	border: 1px solid #ddd;
	border-radius: 5px;
	box-sizing: border-box;
	color: #222;
	font-family: "나눔스퀘어", gulim, dotum, sans-serif;
	font-size: 14px;
	letter-spacing: -1px;
	line-height: 21px;
	background-color: #fff;
	resize: none;
}

.frm_hiring .list_process li:first-child {
	margin-top: 0;
}

.frm_hiring .list_process li {
	position: relative;
	margin-top: 10px;
	border: 1px solid #dfe1e5;
	border-radius: 5px;
}

.frm_hiring .list_process .summary {
	padding: 0 0 0 50px;
	min-height: 22px;
	line-height: 20px;
}

.frm_hiring .list_process .summary .tit_hiring {
	float: left;
	display: contents;
}

.frm_hiring .list_process .summary .txt_period {
	float: left;
	margin-left: 8px;
	color: #999;
	letter-spacing: 0;
}

.frm_hiring .list_process .add_step {
	border-style: dashed;
}

.frm_hiring .list_process .add_step .btn_add_step {
	padding: 0;
	width: 100%;
	height: 68px;
	letter-spacing: -1px;
	text-align: center;
}

/* 전형 절차 상세보기 */
.frm_hiring .list_process .btn_view_hiring {
	/* position: absolute; */
	top: 0;
	left: 0;
	/* width: 100%; */
	height: 20px;
	background-color: #fffa;
	border: none;
}

/* 상세보기 버튼 */
.frm_hiring .list_process li.expand .btn_view_hiring {
	display: none;
}

.frm_hiring .list_process li {
	position: relative;
	margin-top: 10px;
	border: 1px solid #dfe1e5;
	border-radius: 5px;
}

/* 입력 완료 버튼 */
.frm_hiring .list_process .optional_item .btn_set_hiring {
	margin-top: 11px;
	width: 160px;
}

/* 버튼 */
.btnSizeL {
	display: inline-block;
	padding: 0 12px 4px;
	height: 50px;
	border: 1px solid #686868;
	border-radius: 5px;
	box-sizing: border-box;
	color: #fff;
	font-size: 17px;
	letter-spacing: -1px;
	line-height: 46px;
	text-align: center;
	background-color: #686868;
}

span.inpRdo, span.inpChk, input.inpTypo, .inpFile, .inpSel, [class*="btnSize"]
	{
	vertical-align: middle;
}

[class*="btnSize"].colorBlack {
	border: 1px solid #444;
	color: #fff;
	background-color: #444;
}

.list_checkbox tabsize4 {
	width: 200px;
	/* margin-left: 45px; */
}

/* 체크박스 */
input[type=radio]+label {
	/* border: 1px solid #bcbcbc; */
	border-radius: 5px;
}

input[type=radio]:checked+label {
	background-color: #bcbcbc;
}

ol, ul, li {
	list-style: none;
}
</style>
</head>
<body>

	<!-- 채용 절차 section -->
	
	<div class="step_recruit" id="frm_hiring">
		<div class="frm_header">
			<h2 class="tit_step">채용절차</h2>
			<p class="subhead">채용절차는 어떻게 되나요?</p>
		</div>
		
		<form id="frm" action="./newNoticeStep3.do" method="post">
		<div class="frm_body frm_hiring">
			<div class="items" id="hiringProcedure">
				<div class="area_tit"><strong class="tit">채용절차</strong></div>
				<div class="area_data type_txt">
					<ol class="list_process">
						<li class="btn_step " id="hiring_detail_0" data-idx="0">
						<input type="hidden" class="hiring_process_seq" name="hiring_process_seq_0" value="">
						<input type="hidden" class="hiring_process_apply_cnt" name="hiring_process_apply_cnt_0" value="0">
							<div class="summary">
								<div class="tit_hiring">
									<input type="checkbox" name="" id="resume" class="inpTypo sizeL" />서류전형
									<div class="txt_period"></div>
									<button type="button" class="btn_view_hiring" id="btn1" title="전형절차 상세입력">
										<span class="blind">전형절차 상세입력 보기</span>
									</button>
								</div>
							</div>
							
							<div class="fulldata" id="option_div1" >
							
								<div class="optional_item">
									<dl class="type_input">
										<dt>전형절차명</dt>
										<dd>
											<input type="text" class="inpTypo sizeL process_type_nm" name="notice_prcs_name" value="서류전형" title="전형절차명"
												placeholder="전형명을 입력해주세요.(최대30자)" maxlength="30">
										</dd>
									</dl>
									<dl> <!-- style display none; -->
										<dt>전형유형</dt>
										<dd>
											<span class="inpRdo sizeM">
												<input type="radio" name="notice_prcs_type" id="process_type_cd1_0" value="서류">
												<label class="lbl" for="process_type_cd1_0">서류</label>
											</span>
											<span class="inpRdo sizeM">
												<input type="radio" name="notice_prcs_type" id="process_type_cd2_0" value="면접">
												<label class="lbl" for="process_type_cd2_0">면접</label>
											</span>
											<span class="inpRdo sizeM">
												<input type="radio" name="notice_prcs_type" id="process_type_cd3_0" value="인적성">
												<label class="lbl" for="process_type_cd3_0">인적성</label>
											</span>
											<span class="inpRdo sizeM">
												<input type="radio" name="notice_prcs_type" id="process_type_cd4_0" value="레퍼런스">
												<label class="lbl" for="process_type_cd4_0">레퍼런스</label>
											</span>
											<span class="inpRdo sizeM">
												<input type="radio" name="notice_prcs_type" id="process_type_cd5_0" value="기타">
												<label class="lbl" for="process_type_cd5_0">기타</label>
											</span>
											<span class="inpRdo sizeM" style="display: none;">
												<input type="radio" name="notice_prcs_type" id="process_type_cd6_0" value="합격">
												<label class="lbl" for="process_type_cd6_0">합격</label>
											</span>
										</dd>
									</dl>
									<dl class="type_input">
										<dt>
											<span class="inpChk"><input type="checkbox"
												class="chk_date_reg" name="date_reg_0" id="date_reg_0"
												value="y"><label class="lbl" for="date_reg_0">전형기간</label></span>
										</dt>
										<dd class="hiring_period">
											<input type="date" name="notice_prcs_detail_start" id="start_date_1" class="inpTypo sizeL type_calendar"
												title="전형 시작일" value=""> ~ 
											<input type="date" name="notice_prcs_detail_end" id="start_date_1" class="inpTypo sizeL type_calendar"
												title="전형 마감일" value="" >
										</dd>
									</dl>
									<button type="button" id="btn_fns" class="btnSizeL colorBlack btn_set_hiring">입력완료</button>
								</div>
							</div>
							
							<div class="box_btn" style="display: none;">
								<!-- <button type="button" class="btn_order btn_down ga_data_layer"
									title="한칸 아래로 이동"
									data-ga_data_layer="ga_lead|pc_rec_hiring_process|btn_change_up"
									style="display: none;">
									<span class="blind">한칸 아래로 이동</span>
								</button> -->
								<!-- <button type="button" class="btn_order btn_up ga_data_layer"
									title="한칸 위로 이동"
									data-ga_data_layer="ga_lead|pc_rec_hiring_process|btn_change_down"
									style="display: none;">
									<span class="blind">한칸 위로 이동</span>
								</button> -->
								<button type="button" class="btn_order btn_delete ga_data_layer"
									title="전형 삭제"
									data-ga_data_layer="ga_lead|pc_rec_hiring_process|btn_delete">
									<span class="blind">전형 삭제</span>
								</button>
							</div></li>



						<li class="btn_step " id="hiring_detail_1" data-idx="1"><input
							type="hidden" class="hiring_process_seq"
							name="hiring_process_seq_1" value=""> <input
							type="hidden" class="hiring_process_apply_cnt"
							name="hiring_process_apply_cnt_1" value="0">
							<div class="summary">
								<div class="tit_hiring" style="display: contents;">
									<input type="checkbox" name="notice_prcs_name" id="detail_1" class="inpTypo sizeL">
									1차면접
								</div>
								<div class="txt_period"></div>
								<button type="button" class=" btn_view_hiring" id="btn2" title="전형절차 상세입력">
									<span class="blind">전형절차 상세입력 보기</span>
								</button>
							</div>
							
							<div class="fulldata" id="option_div2">
								<div class="optional_item" id="option_div2">
									<dl class="type_input">
										<dt>전형절차명</dt>
										<dd>
											<input type="text" class="inpTypo sizeL process_type_nm"
												name="process_type_nm_1" value="1차면접" title="전형절차명"
												placeholder="전형명을 입력해주세요.(최대30자)" maxlength="30">
										</dd>
									</dl>
									<dl style="display: block;">
										<dt>전형유형</dt>
										<dd>
										<span class="inpRdo sizeM">
											<input type="radio" name="notice_prcs_type" id="process_type_cd1_1"
												value="hp001">
											<label class="lbl" for="process_type_cd1_1">서류</label>
										</span>
										<span class="inpRdo sizeM">
											<input type="radio" name="notice_prcs_type" id="process_type_cd2_1"
												value="hp002">
											<label class="lbl" for="process_type_cd2_1">면접</label>
										</span>
										<span class="inpRdo sizeM">
											<input type="radio" name="notice_prcs_type" id="process_type_cd3_1"
												value="hp003">
											<label class="lbl" for="process_type_cd3_1">인적성</label>
										</span>
										<span class="inpRdo sizeM">
											<input type="radio" name="notice_prcs_type" id="process_type_cd4_1"
												value="hp004">
											<label class="lbl" for="process_type_cd4_1">레퍼런스</label>
										</span>
										<span class="inpRdo sizeM">
											<input type="radio" name="notice_prcs_type" id="process_type_cd5_1"
												value="hp006">
											<label class="lbl" for="process_type_cd5_1">기타</label>
										</span>
										<span class="inpRdo sizeM" style="display: none;">
											<input type="radio" name="notice_prcs_type" id="process_type_cd6_1" 
											value="hp005">
											<label class="lbl" for="process_type_cd6_1">합격</label>
										</span>
										</dd>
									</dl>
									<dl class="type_input">
										<dt>
											<span class="inpChk">전형기간</span>
										</dt>
										<dd class="hiring_period">
											<input type="date" name="notice_prcs_detail_start" id="start_date_1" class="inpTypo sizeL type_calendar"
												title="전형 시작일" value="" > ~ 
											<input type="date" name="notice_prcs_detail_end" id="end_date_1" class="inpTypo sizeL type_calendar"
												title="전형 마감일" value="" >
										</dd>
									</dl>
									<button type="button" id="btn_fns1" class="btnSizeL colorBlack btn_set_hiring">입력완료</button>
								</div>
							</div><!-- 
							<div class="box_btn" style="display: block;">
								<button type="button" class="btn_order btn_down ga_data_layer"
									title="한칸 아래로 이동"
									data-ga_data_layer="ga_lead|pc_rec_hiring_process|btn_change_up"
									style="display: block;">
									<span class="blind">한칸 아래로 이동</span>
								</button>
								<button type="button" class="btn_order btn_up ga_data_layer"
									title="한칸 위로 이동"
									data-ga_data_layer="ga_lead|pc_rec_hiring_process|btn_change_down"
									style="display: none;">
									<span class="blind">한칸 위로 이동</span>
								</button>
								<button type="button" class="btn_order btn_delete ga_data_layer"
									title="전형 삭제"
									data-ga_data_layer="ga_lead|pc_rec_hiring_process|btn_delete">
									<span class="blind">전형 삭제</span>
								</button>
							</div></li> -->



						<li class="btn_step " id="hiring_detail_2" data-idx="2"><input
							type="hidden" class="hiring_process_seq"
							name="hiring_process_seq_2" value=""> <input
							type="hidden" class="hiring_process_apply_cnt"
							name="hiring_process_apply_cnt_2" value="0">
							<div class="summary">
								<div class="tit_hiring">
									<input type="checkbox" name="notice_prcs_name" id="detail_2" class="inpTypo sizeL">2차면접
								</div>
								<div class="txt_period"></div>
								<button type="button" class="btn_view_hiring" id="btn3" title="전형절차 상세입력">
									<span class="blind">전형절차 상세입력 보기</span>
								</button>
							</div>
							<div class="fulldata" id="option_div3">
								<div class="optional_item" id="option_div3">
									<dl class="type_input">
										<dt>전형절차명</dt>
										<dd>
											<input type="text" class="inpTypo sizeL process_type_nm"
												name="process_type_nm_2" value="2차면접" title="전형절차명"
												placeholder="전형명을 입력해주세요.(최대30자)" maxlength="30">
										</dd>
									</dl>
									<dl style="display: block;">
										<dt>전형유형</dt>
										<dd>
											<span class="inpRdo sizeM"><input type="radio"
												name="process_type_cd_2" id="process_type_cd1_2"
												value="hp001"><label class="lbl"
												for="process_type_cd1_2">서류</label></span> <span
												class="inpRdo sizeM"><input type="radio"
												name="process_type_cd_2" id="process_type_cd2_2"
												value="hp002"><label class="lbl"
												for="process_type_cd2_2">면접</label></span> <span
												class="inpRdo sizeM"><input type="radio"
												name="process_type_cd_2" id="process_type_cd3_2"
												value="hp003"><label class="lbl"
												for="process_type_cd3_2">인적성</label></span> <span
												class="inpRdo sizeM"><input type="radio"
												name="process_type_cd_2" id="process_type_cd4_2"
												value="hp004"><label class="lbl"
												for="process_type_cd4_2">레퍼런스</label></span> <span
												class="inpRdo sizeM"><input type="radio"
												name="process_type_cd_2" id="process_type_cd5_2"
												value="hp006"><label class="lbl"
												for="process_type_cd5_2">기타</label></span> <span
												class="inpRdo sizeM" style="display: none;"><input
												type="radio" name="process_type_cd_2"
												id="process_type_cd6_2" value="hp005"><label
												class="lbl" for="process_type_cd6_2">합격</label></span>
										</dd>
									</dl>
									<dl class="type_input">
										<dt>
											<span class="inpChk"><input type="checkbox"
												class="chk_date_reg" name="date_reg_2" id="date_reg_2"
												value="y"><label class="lbl" for="date_reg_2">전형기간</label></span>
										</dt>
										<dd class="hiring_period">
											<input type="date" name="notice_prcs_detail_start" id="start_date_2"
												class="inpTypo sizeL type_calendar hiring_start_date"
												title="전형 시작일" value="" data-help_target="apply_period"> ~ <input type="date"
												name="notice_prcs_detail_end" id="end_date_2"
												class="inpTypo sizeL type_calendar hiring_end_date"
												title="전형 마감일" value="" data-help_target="apply_period">
										</dd>
									</dl>
									<button type="button" id="btn_fns2" class="btnSizeL colorBlack btn_set_hiring">입력완료</button>
								</div>
							</div>
							<!-- <div class="box_btn" style="display: block;">
								<button type="button" class="btn_order btn_down ga_data_layer"
									title="한칸 아래로 이동"
									data-ga_data_layer="ga_lead|pc_rec_hiring_process|btn_change_up"
									style="display: none;">
									<span class="blind">한칸 아래로 이동</span>
								</button>
								<button type="button" class="btn_order btn_up ga_data_layer"
									title="한칸 위로 이동"
									data-ga_data_layer="ga_lead|pc_rec_hiring_process|btn_change_down"
									style="display: block;">
									<span class="blind">한칸 위로 이동</span>
								</button>
								<button type="button" class="btn_order btn_delete ga_data_layer"
									title="전형 삭제"
									data-ga_data_layer="ga_lead|pc_rec_hiring_process|btn_delete">
									<span class="blind">전형 삭제</span>
								</button>
							</div></li> -->



						<!-- <li class="add_step"><button type="button"
								class="btn_add_step" data-key="4">+ 전형절차 추가</button></li> -->
						<li class="btn_step " id="hiring_detail_3" data-idx="3"><input
							type="hidden" class="hiring_process_seq"
							name="hiring_process_seq_3" value=""> <input
							type="hidden" class="hiring_process_apply_cnt"
							name="hiring_process_apply_cnt_3" value="0">
							<div class="summary">
								<div class="tit_hiring">
									<input type="checkbox" name="notice_prcs_name" id="final" class="inpTypo sizeL">최종합격
								</div>
								<div class="txt_period"></div>
								<button type="button" class="btn_view_hiring" id="btn4" title="전형절차 상세입력">
									<span class="blind">전형절차 상세입력 보기</span>
								</button>
							</div>
							<div class="fulldata" id="option_div4">
								<div class="optional_item" id="option_div4">
									<dl class="type_input">
										<dt>전형절차명</dt>
										<dd>
											<input type="text" class="inpTypo sizeL process_type_nm"
												name="process_type_nm_3" value="최종합격" title="전형절차명"
												placeholder="전형명을 입력해주세요.(최대30자)" maxlength="30">
										</dd>
									</dl>
									<dl style="display: none;">
										<dt>전형유형</dt>
										<dd>
											<span class="inpRdo sizeM"><input type="radio"
												name="process_type_cd_3" id="process_type_cd1_3"
												value="hp001"><label class="lbl"
												for="process_type_cd1_3">서류</label></span> <span
												class="inpRdo sizeM"><input type="radio"
												name="process_type_cd_3" id="process_type_cd2_3"
												value="hp002"><label class="lbl"
												for="process_type_cd2_3">면접</label></span> <span
												class="inpRdo sizeM"><input type="radio"
												name="process_type_cd_3" id="process_type_cd3_3"
												value="hp003"><label class="lbl"
												for="process_type_cd3_3">인적성</label></span> <span
												class="inpRdo sizeM"><input type="radio"
												name="process_type_cd_3" id="process_type_cd4_3"
												value="hp004"><label class="lbl"
												for="process_type_cd4_3">레퍼런스</label></span> <span
												class="inpRdo sizeM"><input type="radio"
												name="process_type_cd_3" id="process_type_cd5_3"
												value="hp006"><label class="lbl"
												for="process_type_cd5_3">기타</label></span> <span
												class="inpRdo sizeM" style="display: none;"><input
												type="radio" name="process_type_cd_3"
												id="process_type_cd6_3" value="hp005"><label
												class="lbl" for="process_type_cd6_3">합격</label></span>
										</dd>
									</dl>
									<dl class="type_input">
										<dt>
											<span class="inpChk"><input type="checkbox"
												class="chk_date_reg" name="date_reg_3" id="date_reg_3"
												value="y"><label class="lbl" for="date_reg_3">전형기간</label></span>
										</dt>
										<dd class="hiring_period">
											<input type="date" name="notice_prcs_detail_start" id="start_date_3"
												class="inpTypo sizeL type_calendar"
												title="전형 시작일" value="" data-help_target="apply_period"> ~ <input type="date"
												name="notice_prcs_detail_end" id="end_date_3"
												class="inpTypo sizeL type_calendar"
												title="전형 마감일" value="" data-help_target="apply_period">
										</dd>
									</dl>
									<button type="button" id="btn_fns3" class="btnSizeL colorBlack btn_set_hiring">입력완료</button>
								</div>
							</div>
							<!-- <div class="box_btn" style="display: none;">
								<button type="button" class="btn_order btn_down ga_data_layer"
									title="한칸 아래로 이동"
									data-ga_data_layer="ga_lead|pc_rec_hiring_process|btn_change_up"
									style="display: none;">
									<span class="blind">한칸 아래로 이동</span>
								</button>
								<button type="button" class="btn_order btn_up ga_data_layer"
									title="한칸 위로 이동"
									data-ga_data_layer="ga_lead|pc_rec_hiring_process|btn_change_down"
									style="display: none;">
									<span class="blind">한칸 위로 이동</span>
								</button>
								<button type="button" class="btn_order btn_delete ga_data_layer"
									title="전형 삭제"
									data-ga_data_layer="ga_lead|pc_rec_hiring_process|btn_delete">
									<span class="blind">전형 삭제</span>
								</button>
							</div></li> -->

					</ol>
				</div>
			</div>
			<!-- 전형절차 div end -->
<!-- 
			<div class="items" id="requiredDocuments">
				<div class="area_tit">
					<strong class="tit">제출서류</strong>
				</div>
				<div class="area_data" style="min-width: 1100px;">
					<div class="area_tit" style="margin-right: 40px;">
						<strong class="tit">제출서류</strong>
					</div>
					<div class="area_data_liest">
						<ul class="list_checkbox tabsize4" id="required_documents_list">
							<li>
								<input type="checkbox" id="file_svq" data-target="file_svq">
								<label for="file_svq" class="lbl">사람인 인적성검사</label>
							</li>
							<li>
								<input type="checkbox" id="file_interview" data-target="file_interview">
								<label for="file_interview" class="lbl">사전인터뷰</label>
							</li>
							<li>
								<input type="checkbox" id="file_reference" data-target="file_reference">
								<label for="file_reference" class="lbl">참고자료</label>
							</li>
							<li>
								<input type="checkbox" id="file_direct" data-target="file_direct">
								<label for="file_direct" class="lbl">직접입력</label>
							</li>
						</ul>	
					</div>
					<div class="optional_item" style="display: none;">
						<dl class="file_svq" style="display: none;">
							<dt>사람인 인·적성</dt>
							<dd>
								<p>사람인 인·적성 검사 결과가 첨부된 이력서를 선호합니다.</p>
								<ul class="txt_noti_svq">
									<li>- 사람인에서 진행하는 무료 인적성 검사 결과를 받아보실 수 있습니다.</li>
									<li>- 해당 지원자의 채용을 결정하는데에 참고자료롤 활용하실 수 있습니다.</li>
								</ul>
								<a href="http://www.saraminimage.co.kr/helpdesk/info_sri.pdf"
									target="_blank" class="link_svq" title="새창으로 이동">인적성검사 서비스
									소개 &gt;</a>
							</dd>
						</dl>
						<dl class="file_interview" style="display: none;">
							<dt>사전인터뷰</dt>
							<dd>
								<p>
									사전인터뷰 질문을 등록하시면, 지원자가 온라인 입사지원시 이력서와 함께 답변을 드립니다.<br> 지원자의
									생각과 역량을 미리 파악해 보실 수 있어 서류 합격자 선발에 큰 도움이 됩니다.
								</p>
								<div class="interview_sample">
									<button type="button" class="btn_toggle_desc">예문보기</button>
									<div class="inner">
										<strong class="tit">사전인터뷰 예시</strong>
										<ul>
											<li>- 지원하는 분야에 어느 정도 경력이 있습니까? 또한 그 경력과 지원 분야의 관련성에 대해
												자세히 소개해 주십시오.</li>
											<li>- 자신의 장점 3가지를 나열하고, 그 장점이 회사에서 어떻게 발휘될 수 있을지 설명해 주시기
												바랍니다.</li>
											<li>- 자신의 전공이 회사 모집 부문과 어떤 관련이 있는지를 설명해 주시기 바랍니다.</li>
										</ul>
									</div>
								</div>
								<textarea id="interview" class="inpTarea" cols="80" rows="4"
									placeholder="질문을 입력해주세요" title="사전인터뷰 질문 입력" maxlength="300"></textarea>
							</dd>
						</dl>
						
						<dl class="file_direct">
							<dt>직접입력</dt>
							<dd>
								<textarea id="required_documents" class="inpTarea" cols="80" rows="4" placeholder="예시) 포트폴리오를 제출해주세요." title="제출서류 직접입력"
									maxlength="300"></textarea>
							</dd>
						</dl>
					</div>
				</div>
			</div>
			제출서류 div end -->

		</div> <!-- frm_body end -->
		<!-- <button type="button" id="btn_next" class="btn btn-primary btn-lg btn-block" style="float: right; border: none; background-color: white;"> 채용 공고 끝 </button> -->
		<input type="submit" value="다음 페이지" id="btn_next" class="btn btn-primary btn-lg" style="border: none; background-color: white; margin: 0 auto; width:100%; "/>
		</form>
	</div>

</body>
</html>