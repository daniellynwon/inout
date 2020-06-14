<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Job Post New Last -2 </title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		
		/* 최소 최대 경력 숨기기 */
		$('#career_prd1').hide();
		$('#career_prd2').hide();
		$('#career_prd3').hide();
		$('#career_prd4').hide();
		$('#career_prd5').hide();

		/* 최소 최대 경력 보여주기 */
		$('#career1').click(function(){
			$('#career_prd1').show();
		});
		/* 신입 클릭시 경력 안보이기 */
		$('#newbie1').click(function(){
			$('#career_prd1').hide();
		});

		$('#career2').click(function(){
			$('#career_prd2').show();
		});
		$('#newbie2').click(function(){
			$('#career_prd2').hide();
		});

		$('#career3').click(function(){
			$('#career_prd3').show();
		});
		$('#newbie3').click(function(){
			$('#career_prd3').hide();
		});

		$('#career4').click(function(){
			$('#career_prd4').show();
		});
		$('#newbie4').click(function(){
			$('#career_prd4').hide();
		});

		$('#career5').click(function(){
			$('#career_prd5').show();
		});
		$('#newbie5').click(function(){
			$('#career_prd5').hide();
		});

		/* 최소 최대 경력 끝 */

		
		/* 체크박스 두번 누르면 선택 해제 */
		/* $('.three_depth_preferential').is(':checked'){
			
		}; */

		/* 취소버튼 누르면 체크박스 누른거 해제하기 */
		$('#btn_canc').click(function(){
			$('.three_depth_preferential').prop("checked",false);
		});

		

		/* 모집분야 레이어 추가하기 */
		$('#extr_cat_layer1').hide();
		$('#extr_cat_layer2').hide();
		$('#extr_cat_layer3').hide();
		$('#extr_cat_layer4').hide();

		$('#add_cat_layer1').click(function(){
			$('#extr_cat_layer1').toggle();
		});
		$('#add_cat_layer2').click(function(){
			$('#extr_cat_layer2').toggle();
		});
		$('#add_cat_layer3').click(function(){
			$('#extr_cat_layer3').toggle();
		});
		$('#add_cat_layer4').click(function(){
			$('#extr_cat_layer4').toggle();
		});
		
		/* submit(); */
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
	box-shadow: 0 6px 15px 0 rgba(180, 180, 180, 0.15);
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
	overflow-y: hidden;
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
	width: 71px;
	height: 15px;
	outline-color: #7a7f82;
	opacity: 0;
	pointer-events: none;
	height: 15px;
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

/* second section only */
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

.frm_division .list_division .subsection:last-child {
	border-radius: 0 0 6px 6px;
}

.step_recruit .frm_body .subsection {
	margin: 40px 0 0;
	padding: 30px 0 50px;
	background: #fafbfc;
}

/* 최소-최대 경력 부분 */
.frm_division .list_division .career_check {
	margin-top: 10px;
}

.frm_division .list_division .career_check .inpSel {
	width: 140px;
}

.inpSel.sizeL>select {
	padding: 10px 33px 13px 12px;
	height: 50px;
	font-size: 15px;
	letter-spacing: -1px;
	background-position-y: 0;
}

/* 셀렉트박스 */
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

.frm_division .list_division .subsection .area_data {
	min-height: 50px;
}

.frm_division .list_division .selected_preference {
	border: 1px solid #dfe1e5;
	border-radius: 6px;
	font-size: 15px;
	line-height: 20px;
	background: #fff;
}

/* 필수/우대조건 체크박스 리스트 */
.frm_division .list_division .list_preference {
	display: none;
}

.frm_division .list_division .selected_preference .area_bottom {
	position: relative;
	/* padding: 14px 0 6px 19px; */
	min-height: 28px;
}

.frm_division .list_division .selected_preference .txt_placeholder {
	color: #888;
}

.frm_division .list_division .selected_preference .btn_add {
	position: absolute;
	top: 14px;
	right: 19px;
	height: 20px;
	color: #2365f2;
	letter-spacing: -1px;
	text-decoration: underline;
}

/* 체크박스? */
.inpChk input+.lbl .chkB {
	width: 24px;
	height: 24px;
	background-position-x: -120px;
}

/* 필수 우대조건 */
.modal_division .area_category_select .list_check {
	padding: 10px 0 16px 20px;
}

.modal_division .area_category_select .list_check li .lbl {
	overflow: hidden;
	padding-right: 1px;
	max-width: 99%;
	white-space: nowrap;
}

/* 우대조건 버튼 */
.modalWrap .modalBtn {
	padding-top: 28px;
	text-align: center;
}

/* 우대조건 체크박스 */
.three_depth_preferential {
	width: 100px;
	height: 50px;
	left: -10px;
	top: -10px;
}

/* 정규직 전환 가능 체크했을 때 표시나게 해줌 */
input[type=checkbox]+label {
	border: 1px solid #bcbcbc;
	border-radius: 5px;
}

input[type=checkbox]:checked+label {
	background-color: #bcbcbc;
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
</style>
</head>
<body>

<!-- 두번째 section -->
	<div class="step_recruit" id="frmDivision" style="float: left; padding-bottom: 50px;">
		<div class="frm_header">
			<h2 class="tit_step">모집분야</h2>
			<p class="subhead">어떤일을 담당할 직원을 찾으시나요?</p>
		</div>

		<form id="frm" action="./newNoticeStep2.do" method="post">
		<div class="frm_body frm_division">
			<ul class="list_division list_recruit_frm" id="list_recruit_division">
				<li class="recruit_division_line_detail expand" id="line_detail_0">

					<!-- 모집분야 -->
					<div class="fulldata">
						<div class="items">
							<div class="area_tit"><strong class="tit">모집분야명</strong></div>
							<div class="area_data">
								<div class="division_name" id="division_name_area_0">
									<input type="text" name="notice_want_name" id="recruitment_title_0" class="inpTypo sizeL recruitment_tite" placeholder="예) R&D, 경영지원" maxlength="30" />
								</div>

								<span class="division_collect" style="float: left;">
									<input type="text" name="notice_want_many" id="collect_cnt_0" class="inpTypo sizeL collect_cnt _filter" maxlength="6" title="모집인원" placeholder="ex) 00명" />
								</span>

							</div>
						</div>
						<!-- 모집분야명 items end -->

						<div class="items">
							<div class="area_tit"><strong class="tit">경력여부</strong></div>
							<div class="area_data type_txt">
								<span class="inpChk career_cd_0">
									<!-- <input type="checkbox" value="0_1" id="career_cd_0_1" class="chkB" /> -->
									<button type="button" class="btnSizeL" id="newbie1">
									<label class="lbl" for="career_cd_0_1">신입</label></button>
								</span>
								<span class="inpChk career_cd_0">
									<!-- <input type="checkbox" id="career_cd_0_2" value="0_2"> -->
									<button type="button" class="btnSizeL" id="career1">
										<label class="lbl" for="career_cd_0_2">경력</label>
									</button>
								</span>

								<!-- 경력 체크시 노출되는 부분 -->
								<div class="career_check career_cd_sub_2_0" id="career_prd1" data-sub-for="0_2" style="display: flex;">
									<div class="inpSel sizeL">
										<select class="career_period" id="career_min_0" name="notice_want_mincar" data-seq="0">
											<option value="">선택</option>
											<option value="1">1년 이상</option>
											<option value="2">2년 이상</option>
											<option value="3">3년 이상</option>
											<option value="4">4년 이상</option>
											<option value="5">5년 이상</option>
											<option value="6">6년 이상</option>
											<option value="7">7년 이상</option>
											<option value="8">8년 이상</option>
											<option value="9">9년 이상</option>
											<option value="10">10년 이상</option>
											<option value="11">11년 이상</option>
											<option value="12">12년 이상</option>
											<option value="13">13년 이상</option>
											<option value="14">14년 이상</option>
											<option value="15">15년 이상</option>
											<option value="16">16년 이상</option>
											<option value="17">17년 이상</option>
											<option value="18">18년 이상</option>
											<option value="19">19년 이상</option>
											<option value="20">20년 이상</option>
										</select>
									</div>
									<span>~</span>
									<div class="inpSel sizeL">
										<select class="career_period" id="career_max_0" name="notice_want_maxcar" data-seq="0" >
											<option value="">선택</option>
											<option value="1">1년 이하</option>
											<option value="2">2년 이하</option>
											<option value="3">3년 이하</option>
											<option value="4">4년 이하</option>
											<option value="5">5년 이하</option>
											<option value="6">6년 이하</option>
											<option value="7">7년 이하</option>
											<option value="8">8년 이하</option>
											<option value="9">9년 이하</option>
											<option value="10">10년 이하</option>
											<option value="11">11년 이하</option>
											<option value="12">12년 이하</option>
											<option value="13">13년 이하</option>
											<option value="14">14년 이하</option>
											<option value="15">15년 이하</option>
											<option value="16">16년 이하</option>
											<option value="17">17년 이하</option>
											<option value="18">18년 이하</option>
											<option value="19">19년 이하</option>
											<option value="20">20년 이하</option>
										</select>
									</div>
								</div>

							</div>
						</div>

						<div class="items">
							<div class="area_tit"><strong class="tit">담당업무</strong></div>
							<div class="area_data">
								<input type="text" id="assign_task_nm_0" value="" class="inpTypo sizeL assign_task_nm"
									name="notice_want_task" title="담당업무" placeholder="담당업무를 자세히 기재할수록 지원율이 높아집니다." maxlength="300">
							</div>
						</div>

						<div class="subsection">
							<div class="items">
								<div class="area_tit">
									<span class="inpChk">
										<!-- <input type="checkbox" class="workpost_chk" id="workpost_chk_0" value="0"> -->
										<label class="lbl ga_data_layer" for="workpost_chk_0" >근무 부서</label>
									</span>
								</div>
								<div class="area_data">
									<!-- 근무부서 체크시 textfield 나오게 -->
									<div class="detail_frm" id="workpost_detail_0" style="">
										<input type="text" id="work_dept_nm_0" name="notice_want_dept" class="inpTypo sizeL work_dept_nm"
											title="근무부서" placeholder="근무하게 될 부서 또는 근무지를 입력해주세요." maxlength="60">
									</div>
								</div>
							</div>
							<div class="items">
								<div class="area_tit">
									<span class="inpChk">
										<!-- <input type="checkbox" class="preferential_chk" id="preferential_chk_0" value="0"> -->
										<label class="lbl ga_data_layer" for="preferential_chk_0">필수/우대조건</label>
									</span>
								</div>
							<div class="area_data type_txt">
								<!-- 필수/우대조건 체크시 노출 -->
								<div id="preferential_detail_0" style="">
									<div class="selected_preference" id="preference_summary_0">
										<ul class="list_preference" id="require_preference_frm_box_list_0">
											<!-- 필수 / 우대조건 list -->
										</ul>
										<div class="area_bottom">

										<div class="modalWrap modal_division" id="lpop_essential_preference1" data-uilayer="recruit_division_preference"style="display: block;">

										<!-- <h3 class="title" style="margin-left: 15px;">필수/우대조건</h3> -->
											<div class="modalCont">
												<div class="area_category_select">
													<div class="depth1">
														<div class="area_scroll one_depth_area">
															<ul class="list_check list_three_depth" style="">
																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre003" value="국가유공자"
																	data-section="preferential" name="pre003" data-parent-code="pre002">
																<label class="lbl" for="layer_three_depth_pre003">국가유공자</label>
																</span></li>

																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre004" value="보훈대상자"
																	data-section="preferential" name="pre004" data-parent-code="pre002">
																<label class="lbl" for="layer_three_depth_pre004">보훈대상자</label>
																</span></li>

																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre006" value="장애인우대"
																		data-section="preferential" name="pre006" data-parent-code="pre002">
																<label class="lbl" for="layer_three_depth_pre006">장애인우대</label>
																</span></li>

																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre035" value="외국인우대"
																	data-section="preferential" name="pre035" data-parent-code="pre002">
																	<label class="lbl" for="layer_three_depth_pre035">외국인우대</label>
																</span></li>

																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre034" value="병역특례"
																	data-section="preferential" name="pre034" data-parent-code="pre002">
																	<label class="lbl" for="layer_three_depth_pre034">병역특례</label>
																</span></li>

																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre029" value="여성우대"
																	data-section="preferential" name="pre029" data-parent-code="pre002">
																	<label class="lbl" for="layer_three_depth_pre029">여성우대</label>
																</span></li>

																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre030" value="주부(전업주부)"
																	data-section="preferential" name="pre030" data-parent-code="pre002">
																	<label class="lbl" for="layer_three_depth_pre030">주부(전업주부)</label>
																</span></li>

																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre031" value="고령자(55세이상)"
																	data-section="preferential" name="pre031" data-parent-code="pre002">
																	<label class="lbl" for="layer_three_depth_pre031">고령자(55세이상)</label>
																</span></li>

																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre007" value="취업보호대상자"
																	data-section="preferential" name="pre007" data-parent-code="pre002">
																	<label class="lbl" for="layer_three_depth_pre007">취업보호대상자</label>
																</span></li>

																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre005" value="고용촉진장려금 대상"
																	data-section="preferential" name="pre005" data-parent-code="pre002">
																	<label class="lbl" for="layer_three_depth_pre005">고용촉진장려금 대상</label>
																</span></li>

																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre061" value="특성화고/마이스터고"
																	data-section="preferential" name="pre061" data-parent-code="pre002">
																	<label class="lbl" for="layer_three_depth_pre061">특성화고/마이스터고</label>
																</span></li>
															</ul>
														</div>
													</div>
												</div>
											</div>
										</div>

											<div class="modalBtn">
												<!-- <button type="button" id="btn_check" class="btnSizeL colorBlue btn_confirm" data-seq="0" data-uilayer-btn="recruit_division_preference">확인</button> -->
												<button type="button" id="btn_canc" class="btnSizeL colorBlue colorInvert btn_close" 
													style="float: right; margin-bottom: 10px;">취소</button>
											</div>
										</div>

									</div>
								</div>
							</div>
							<!-- 필수 우대조건 체크시 노출되는 div end -->

											</div>
											<!-- 필수 우대조건 div end -->
										</div>
										<!-- div.subsection end -->


					</div>
					<!-- div.fulldata end -->
				</li></ul>

			</div>

			<!-- 두번째 모집분야 추가 -->

			<!-- 추가하기 버튼 만들기 -->
			<div class="add_layer">
				<button type="button" class="btnSizeL" id="add_cat_layer1" value="모집분야 추가" style="width: 100%;">모집분야 추가</button>
			</div>

			<div class="frm_body frm_division" id="extr_cat_layer1" style="padding-bottom: 50px;">
			<ul class="list_division list_recruit_frm" id="list_recruit_division">
				<li class="recruit_division_line_detail expand" id="line_detail_0">

					<!-- 모집분야 -->
					<div class="fulldata">
						<div class="items">
							<div class="area_tit"><strong class="tit">모집분야명</strong></div>
							<div class="area_data">
								<div class="division_name" id="division_name_area_0">
									<input type="text" name="notice_want_name" id="recruitment_title_0" class="inpTypo sizeL recruitment_tite" placeholder="예) R&D, 경영지원" maxlength="30" />
								</div>

								<span class="division_collect" style="float: left;">
									<input type="text" name="notice_want_many" id="collect_cnt_0" class="inpTypo sizeL collect_cnt _filter" maxlength="6" title="모집인원" placeholder="ex) 00명" />
								</span>

							</div>
						</div>
						<!-- 모집분야명 items end -->

						<div class="items">
							<div class="area_tit"><strong class="tit">경력여부</strong></div>
							<div class="area_data type_txt">
								<span class="inpChk career_cd_0">
									<!-- <input type="checkbox" value="0_1" id="career_cd_0_1" class="chkB" /> -->
									<button type="button" class="btnSizeL" id="newbie2">
									<label class="lbl" for="career_cd_0_1">신입</label></button>
								</span>
								<span class="inpChk career_cd_0">
									<!-- <input type="checkbox" id="career_cd_0_2" value="0_2"> -->
									<button type="button" class="btnSizeL" id="career2">
									<label class="lbl" for="career_cd_0_2">경력</label></button>
								</span>

								<!-- 경력 체크시 노출되는 부분 -->
								<div class="career_check career_cd_sub_2_0" id="career_prd2" data-sub-for="0_2" style="display: flex;">
									<div class="inpSel sizeL">
										<select class="career_period" id="career_min_0" name="notice_want_mincar" data-seq="0">
											<option value="">선택</option>
											<option value="1">1년 이상</option>
											<option value="2">2년 이상</option>
											<option value="3">3년 이상</option>
											<option value="4">4년 이상</option>
											<option value="5">5년 이상</option>
											<option value="6">6년 이상</option>
											<option value="7">7년 이상</option>
											<option value="8">8년 이상</option>
											<option value="9">9년 이상</option>
											<option value="10">10년 이상</option>
											<option value="11">11년 이상</option>
											<option value="12">12년 이상</option>
											<option value="13">13년 이상</option>
											<option value="14">14년 이상</option>
											<option value="15">15년 이상</option>
											<option value="16">16년 이상</option>
											<option value="17">17년 이상</option>
											<option value="18">18년 이상</option>
											<option value="19">19년 이상</option>
											<option value="20">20년 이상</option>
										</select>
									</div>
									<span>~</span>
									<div class="inpSel sizeL">
										<select class="career_period" id="career_max_0" name="notice_want_maxcar" data-seq="0" >
											<option value="">선택</option>
											<option value="1">1년 이하</option>
											<option value="2">2년 이하</option>
											<option value="3">3년 이하</option>
											<option value="4">4년 이하</option>
											<option value="5">5년 이하</option>
											<option value="6">6년 이하</option>
											<option value="7">7년 이하</option>
											<option value="8">8년 이하</option>
											<option value="9">9년 이하</option>
											<option value="10">10년 이하</option>
											<option value="11">11년 이하</option>
											<option value="12">12년 이하</option>
											<option value="13">13년 이하</option>
											<option value="14">14년 이하</option>
											<option value="15">15년 이하</option>
											<option value="16">16년 이하</option>
											<option value="17">17년 이하</option>
											<option value="18">18년 이하</option>
											<option value="19">19년 이하</option>
											<option value="20">20년 이하</option>
										</select>
									</div>
								</div>

							</div>
						</div>

						<div class="items">
							<div class="area_tit"><strong class="tit">담당업무</strong></div>
							<div class="area_data">
								<input type="text" id="assign_task_nm_0" value="" class="inpTypo sizeL assign_task_nm"
									name="notice_want_task" title="담당업무" placeholder="담당업무를 자세히 기재할수록 지원율이 높아집니다." maxlength="300">
							</div>
						</div>

						<div class="subsection">
							<div class="items">
								<div class="area_tit">
									<span class="inpChk">
										<!-- <input type="checkbox" class="workpost_chk" id="workpost_chk_0" value="0"> -->
										<label class="lbl ga_data_layer" for="workpost_chk_0" >근무 부서</label>
									</span>
								</div>
								<div class="area_data">
									<!-- 근무부서 체크시 textfield 나오게 -->
									<div class="detail_frm" id="workpost_detail_0" style="">
										<input type="text" id="work_dept_nm_0" name="notice_want_dept" class="inpTypo sizeL work_dept_nm"
											title="근무부서" placeholder="근무하게 될 부서 또는 근무지를 입력해주세요." maxlength="60">
									</div>
								</div>
							</div>
							<div class="items">
								<div class="area_tit">
									<span class="inpChk">
										<!-- <input type="checkbox" class="preferential_chk" id="preferential_chk_0" value="0"> -->
										<label class="lbl ga_data_layer" for="preferential_chk_0">필수/우대조건</label>
									</span>
								</div>
							<div class="area_data type_txt">
								<!-- 필수/우대조건 체크시 노출 -->
								<div id="preferential_detail_0" style="">
									<div class="selected_preference" id="preference_summary_0">
										<ul class="list_preference" id="require_preference_frm_box_list_0">
											<!-- 필수 / 우대조건 list -->
										</ul>
										<div class="area_bottom">

										<div class="modalWrap modal_division" id="lpop_essential_preference2" data-uilayer="recruit_division_preference"style="display: block;">

										<!-- <h3 class="title" style="margin-left: 15px;">필수/우대조건</h3> -->
											<div class="modalCont">
												<div class="area_category_select">
													<div class="depth1">
														<div class="area_scroll one_depth_area">
															<ul class="list_check list_three_depth" style="">
																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre003" value="국가유공자"
																
																	data-section="preferential" name="pre003" data-parent-code="pre002">
																<label class="lbl" for="layer_three_depth_pre003">국가유공자</label>
																</span></li>

																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre004" value="보훈대상자"
																	data-section="preferential" name="pre004" data-parent-code="pre002">
																<label class="lbl" for="layer_three_depth_pre004">보훈대상자</label>
																</span></li>

																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre006" value="장애인우대"
																		data-section="preferential" name="pre006" data-parent-code="pre002">
																<label class="lbl" for="layer_three_depth_pre006">장애인우대</label>
																</span></li>

																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre035" value="외국인우대"
																	data-section="preferential" name="pre035" data-parent-code="pre002">
																	<label class="lbl" for="layer_three_depth_pre035">외국인우대</label>
																</span></li>

																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre034" value="병역특례"
																	data-section="preferential" name="pre034" data-parent-code="pre002">
																	<label class="lbl" for="layer_three_depth_pre034">병역특례</label>
																</span></li>

																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre029" value="여성우대"
																	data-section="preferential" name="pre029" data-parent-code="pre002">
																	<label class="lbl" for="layer_three_depth_pre029">여성우대</label>
																</span></li>

																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre030" value="주부(전업주부)"
																	data-section="preferential" name="pre030" data-parent-code="pre002">
																	<label class="lbl" for="layer_three_depth_pre030">주부(전업주부)</label>
																</span></li>

																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre031" value="고령자(55세이상)"
																	data-section="preferential" name="pre031" data-parent-code="pre002">
																	<label class="lbl" for="layer_three_depth_pre031">고령자(55세이상)</label>
																</span></li>

																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre007" value="취업보호대상자"
																	data-section="preferential" name="pre007" data-parent-code="pre002">
																	<label class="lbl" for="layer_three_depth_pre007">취업보호대상자</label>
																</span></li>

																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre005" value="고용촉진장려금 대상"
																	data-section="preferential" name="pre005" data-parent-code="pre002">
																	<label class="lbl" for="layer_three_depth_pre005">고용촉진장려금 대상</label>
																</span></li>

																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre061" value="특성화고/마이스터고"
																	data-section="preferential" name="pre061" data-parent-code="pre002">
																	<label class="lbl" for="layer_three_depth_pre061">특성화고/마이스터고</label>
																</span></li>
															</ul>
														</div>
													</div>
												</div>
											</div>
										</div>

											<div class="modalBtn">
												<!-- <button type="button" id="btn_check" class="btnSizeL colorBlue btn_confirm" data-seq="0" data-uilayer-btn="recruit_division_preference">확인</button> -->
												<button type="button" id="btn_canc" class="btnSizeL colorBlue colorInvert btn_close" 
													style="float: right; margin-bottom: 10px;">취소</button>
											</div>
										</div>

									</div>
								</div>
							</div>
							<!-- 필수 우대조건 체크시 노출되는 div end -->

											</div>
											<!-- 필수 우대조건 div end -->
										</div>
										<!-- div.subsection end -->


					</div>
					<!-- div.fulldata end -->
				</li></ul>


		</div>

		<!-- 세번째  -->

		<div class="add_layer">
				<button type="button" class="btnSizeL" id="add_cat_layer2" value="모집분야 추가" style="width: 100%;">모집분야 추가</button>
		</div>

		<div class="frm_body frm_division" id="extr_cat_layer2" style="padding-bottom: 50px;">
			<ul class="list_division list_recruit_frm" id="list_recruit_division">
				<li class="recruit_division_line_detail expand" id="line_detail_0">

					<!-- 모집분야 -->
					<div class="fulldata">
						<div class="items">
							<div class="area_tit"><strong class="tit">모집분야명</strong></div>
							<div class="area_data">
								<div class="division_name" id="division_name_area_0">
									<input type="text" name="notice_want_name" id="recruitment_title_0" class="inpTypo sizeL recruitment_tite" placeholder="예) R&D, 경영지원" maxlength="30" />
								</div>

								<span class="division_collect" style="float: left;">
									<input type="text" name="notice_want_many" id="collect_cnt_0" class="inpTypo sizeL collect_cnt _filter" maxlength="6" title="모집인원" placeholder="ex) 00명" />
								</span>

							</div>
						</div>
						<!-- 모집분야명 items end -->

						<div class="items">
							<div class="area_tit"><strong class="tit">경력여부</strong></div>
							<div class="area_data type_txt">
								<span class="inpChk career_cd_0">
									<!-- <input type="checkbox" value="0_1" id="career_cd_0_1" class="chkB" /> -->
									<button type="button" class="btnSizeL" id="newbie3">
									<label class="lbl" for="career_cd_0_1">신입</label></button>
								</span>
								<span class="inpChk career_cd_0">
									<!-- <input type="checkbox" id="career_cd_0_2" value="0_2"> -->
									<button type="button" class="btnSizeL" id="career2">
									<label class="lbl" for="career_cd_0_2">경력</label></button>
								</span>

								<!-- 경력 체크시 노출되는 부분 -->
								<div class="career_check career_cd_sub_2_0" id="career_prd3" data-sub-for="0_2" style="display: flex;">
									<div class="inpSel sizeL">
										<select class="career_period" id="career_min_0" name="notice_want_mincar" data-seq="0">
											<option value="">선택</option>
											<option value="1">1년 이상</option>
											<option value="2">2년 이상</option>
											<option value="3">3년 이상</option>
											<option value="4">4년 이상</option>
											<option value="5">5년 이상</option>
											<option value="6">6년 이상</option>
											<option value="7">7년 이상</option>
											<option value="8">8년 이상</option>
											<option value="9">9년 이상</option>
											<option value="10">10년 이상</option>
											<option value="11">11년 이상</option>
											<option value="12">12년 이상</option>
											<option value="13">13년 이상</option>
											<option value="14">14년 이상</option>
											<option value="15">15년 이상</option>
											<option value="16">16년 이상</option>
											<option value="17">17년 이상</option>
											<option value="18">18년 이상</option>
											<option value="19">19년 이상</option>
											<option value="20">20년 이상</option>
										</select>
									</div>
									<span>~</span>
									<div class="inpSel sizeL">
										<select class="career_period" id="career_max_0" name="notice_want_maxcar" data-seq="0" >
											<option value="">선택</option>
											<option value="1">1년 이하</option>
											<option value="2">2년 이하</option>
											<option value="3">3년 이하</option>
											<option value="4">4년 이하</option>
											<option value="5">5년 이하</option>
											<option value="6">6년 이하</option>
											<option value="7">7년 이하</option>
											<option value="8">8년 이하</option>
											<option value="9">9년 이하</option>
											<option value="10">10년 이하</option>
											<option value="11">11년 이하</option>
											<option value="12">12년 이하</option>
											<option value="13">13년 이하</option>
											<option value="14">14년 이하</option>
											<option value="15">15년 이하</option>
											<option value="16">16년 이하</option>
											<option value="17">17년 이하</option>
											<option value="18">18년 이하</option>
											<option value="19">19년 이하</option>
											<option value="20">20년 이하</option>
										</select>
									</div>
								</div>

							</div>
						</div>

						<div class="items">
							<div class="area_tit"><strong class="tit">담당업무</strong></div>
							<div class="area_data">
								<input type="text" id="assign_task_nm_0" value="" class="inpTypo sizeL assign_task_nm"
									name="notice_want_task" title="담당업무" placeholder="담당업무를 자세히 기재할수록 지원율이 높아집니다." maxlength="300">
							</div>
						</div>

						<div class="subsection">
							<div class="items">
								<div class="area_tit">
									<span class="inpChk">
										<!-- <input type="checkbox" class="workpost_chk" id="workpost_chk_0" value="0"> -->
										<label class="lbl ga_data_layer" for="workpost_chk_0" >근무 부서</label>
									</span>
								</div>
								<div class="area_data">
									<!-- 근무부서 체크시 textfield 나오게 -->
									<div class="detail_frm" id="workpost_detail_0" style="">
										<input type="text" id="work_dept_nm_0" name="notice_want_dept" class="inpTypo sizeL work_dept_nm"
											title="근무부서" placeholder="근무하게 될 부서 또는 근무지를 입력해주세요." maxlength="60">
									</div>
								</div>
							</div>
							<div class="items">
								<div class="area_tit">
									<span class="inpChk">
										<!-- <input type="checkbox" class="preferential_chk" id="preferential_chk_0" value="0"> -->
										<label class="lbl ga_data_layer" for="preferential_chk_0">필수/우대조건</label>
									</span>
								</div>
							<div class="area_data type_txt">
								<!-- 필수/우대조건 체크시 노출 -->
								<div id="preferential_detail_0" style="">
									<div class="selected_preference" id="preference_summary_0">
										<ul class="list_preference" id="require_preference_frm_box_list_0">
											<!-- 필수 / 우대조건 list -->
										</ul>
										<div class="area_bottom">

										<div class="modalWrap modal_division" id="lpop_essential_preference3" data-uilayer="recruit_division_preference"style="display: block;">

										<!-- <h3 class="title" style="margin-left: 15px;">필수/우대조건</h3> -->
											<div class="modalCont">
												<div class="area_category_select">
													<div class="depth1">
														<div class="area_scroll one_depth_area">
															<ul class="list_check list_three_depth" style="">
																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre003" value="국가유공자"
																
																	data-section="preferential" name="pre003" data-parent-code="pre002">
																<label class="lbl" for="layer_three_depth_pre003">국가유공자</label>
																</span></li>

																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre004" value="보훈대상자"
																	data-section="preferential" name="pre004" data-parent-code="pre002">
																<label class="lbl" for="layer_three_depth_pre004">보훈대상자</label>
																</span></li>

																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre006" value="장애인우대"
																		data-section="preferential" name="pre006" data-parent-code="pre002">
																<label class="lbl" for="layer_three_depth_pre006">장애인우대</label>
																</span></li>

																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre035" value="외국인우대"
																	data-section="preferential" name="pre035" data-parent-code="pre002">
																	<label class="lbl" for="layer_three_depth_pre035">외국인우대</label>
																</span></li>

																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre034" value="병역특례"
																	data-section="preferential" name="pre034" data-parent-code="pre002">
																	<label class="lbl" for="layer_three_depth_pre034">병역특례</label>
																</span></li>

																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre029" value="여성우대"
																	data-section="preferential" name="pre029" data-parent-code="pre002">
																	<label class="lbl" for="layer_three_depth_pre029">여성우대</label>
																</span></li>

																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre030" value="주부(전업주부)"
																	data-section="preferential" name="pre030" data-parent-code="pre002">
																	<label class="lbl" for="layer_three_depth_pre030">주부(전업주부)</label>
																</span></li>

																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre031" value="고령자(55세이상)"
																	data-section="preferential" name="pre031" data-parent-code="pre002">
																	<label class="lbl" for="layer_three_depth_pre031">고령자(55세이상)</label>
																</span></li>

																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre007" value="취업보호대상자"
																	data-section="preferential" name="pre007" data-parent-code="pre002">
																	<label class="lbl" for="layer_three_depth_pre007">취업보호대상자</label>
																</span></li>

																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre005" value="고용촉진장려금 대상"
																	data-section="preferential" name="pre005" data-parent-code="pre002">
																	<label class="lbl" for="layer_three_depth_pre005">고용촉진장려금 대상</label>
																</span></li>

																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre061" value="특성화고/마이스터고"
																	data-section="preferential" name="pre061" data-parent-code="pre002">
																	<label class="lbl" for="layer_three_depth_pre061">특성화고/마이스터고</label>
																</span></li>
															</ul>
														</div>
													</div>
												</div>
											</div>
										</div>

											<div class="modalBtn">
												<!-- <button type="button" id="btn_check" class="btnSizeL colorBlue btn_confirm" data-seq="0" data-uilayer-btn="recruit_division_preference">확인</button> -->
												<button type="button" id="btn_canc" class="btnSizeL colorBlue colorInvert btn_close" 
													style="float: right; margin-bottom: 10px;">취소</button>
											</div>
										</div>

									</div>
								</div>
							</div>
							<!-- 필수 우대조건 체크시 노출되는 div end -->

											</div>
											<!-- 필수 우대조건 div end -->
										</div>
										<!-- div.subsection end -->


					</div>
					<!-- div.fulldata end -->
				</li></ul>


		</div>


		<!-- 네번째 -->


		<div class="add_layer">
				<button type="button" class="btnSizeL" id="add_cat_layer3" value="모집분야 추가" style="width: 100%;">모집분야 추가</button>
		</div>

		<div class="frm_body frm_division" id="extr_cat_layer3" style="padding-bottom: 50px;">
			<ul class="list_division list_recruit_frm" id="list_recruit_division">
				<li class="recruit_division_line_detail expand" id="line_detail_0">

					<!-- 모집분야 -->
					<div class="fulldata">
						<div class="items">
							<div class="area_tit"><strong class="tit">모집분야명</strong></div>
							<div class="area_data">
								<div class="division_name" id="division_name_area_0">
									<input type="text" name="notice_want_name" id="recruitment_title_0" class="inpTypo sizeL recruitment_tite" placeholder="예) R&D, 경영지원" maxlength="30" />
								</div>

								<span class="division_collect" style="float: left;">
									<input type="text" name="notice_want_many" id="collect_cnt_0" class="inpTypo sizeL collect_cnt _filter" maxlength="6" title="모집인원" placeholder="ex) 00명" />
								</span>

							</div>
						</div>
						<!-- 모집분야명 items end -->

						<div class="items">
							<div class="area_tit"><strong class="tit">경력여부</strong></div>
							<div class="area_data type_txt">
								<span class="inpChk career_cd_0">
									<!-- <input type="checkbox" value="0_1" id="career_cd_0_1" class="chkB" /> -->
									<button type="button" class="btnSizeL" id="newbie4">
									<label class="lbl" for="career_cd_0_1">신입</label></button>
								</span>
								<span class="inpChk career_cd_0">
									<!-- <input type="checkbox" id="career_cd_0_2" value="0_2"> -->
									<button type="button" class="btnSizeL" id="career4">
									<label class="lbl" for="career_cd_0_2">경력</label></button>
								</span>

								<!-- 경력 체크시 노출되는 부분 -->
								<div class="career_check career_cd_sub_2_0" id="career_prd4" data-sub-for="0_2" style="display: flex;">
									<div class="inpSel sizeL">
										<select class="career_period" id="career_min_0" name="notice_want_mincar" data-seq="0">
											<option value="">선택</option>
											<option value="1">1년 이상</option>
											<option value="2">2년 이상</option>
											<option value="3">3년 이상</option>
											<option value="4">4년 이상</option>
											<option value="5">5년 이상</option>
											<option value="6">6년 이상</option>
											<option value="7">7년 이상</option>
											<option value="8">8년 이상</option>
											<option value="9">9년 이상</option>
											<option value="10">10년 이상</option>
											<option value="11">11년 이상</option>
											<option value="12">12년 이상</option>
											<option value="13">13년 이상</option>
											<option value="14">14년 이상</option>
											<option value="15">15년 이상</option>
											<option value="16">16년 이상</option>
											<option value="17">17년 이상</option>
											<option value="18">18년 이상</option>
											<option value="19">19년 이상</option>
											<option value="20">20년 이상</option>
										</select>
									</div>
									<span>~</span>
									<div class="inpSel sizeL">
										<select class="career_period" id="career_max_0" name="notice_want_maxcar" data-seq="0" >
											<option value="">선택</option>
											<option value="1">1년 이하</option>
											<option value="2">2년 이하</option>
											<option value="3">3년 이하</option>
											<option value="4">4년 이하</option>
											<option value="5">5년 이하</option>
											<option value="6">6년 이하</option>
											<option value="7">7년 이하</option>
											<option value="8">8년 이하</option>
											<option value="9">9년 이하</option>
											<option value="10">10년 이하</option>
											<option value="11">11년 이하</option>
											<option value="12">12년 이하</option>
											<option value="13">13년 이하</option>
											<option value="14">14년 이하</option>
											<option value="15">15년 이하</option>
											<option value="16">16년 이하</option>
											<option value="17">17년 이하</option>
											<option value="18">18년 이하</option>
											<option value="19">19년 이하</option>
											<option value="20">20년 이하</option>
										</select>
									</div>
								</div>

							</div>
						</div>

						<div class="items">
							<div class="area_tit"><strong class="tit">담당업무</strong></div>
							<div class="area_data">
								<input type="text" id="assign_task_nm_0" value="" class="inpTypo sizeL assign_task_nm"
									name="notice_want_task" title="담당업무" placeholder="담당업무를 자세히 기재할수록 지원율이 높아집니다." maxlength="300">
							</div>
						</div>

						<div class="subsection">
							<div class="items">
								<div class="area_tit">
									<span class="inpChk">
										<!-- <input type="checkbox" class="workpost_chk" id="workpost_chk_0" value="0"> -->
										<label class="lbl ga_data_layer" for="workpost_chk_0" >근무 부서</label>
									</span>
								</div>
								<div class="area_data">
									<!-- 근무부서 체크시 textfield 나오게 -->
									<div class="detail_frm" id="workpost_detail_0" style="">
										<input type="text" id="work_dept_nm_0" name="notice_want_dept" class="inpTypo sizeL work_dept_nm"
											title="근무부서" placeholder="근무하게 될 부서 또는 근무지를 입력해주세요." maxlength="60">
									</div>
								</div>
							</div>
							<div class="items">
								<div class="area_tit">
									<span class="inpChk">
										<!-- <input type="checkbox" class="preferential_chk" id="preferential_chk_0" value="0"> -->
										<label class="lbl ga_data_layer" for="preferential_chk_0">필수/우대조건</label>
									</span>
								</div>
							<div class="area_data type_txt">
								<!-- 필수/우대조건 체크시 노출 -->
								<div id="preferential_detail_0" style="">
									<div class="selected_preference" id="preference_summary_0">
										<ul class="list_preference" id="require_preference_frm_box_list_0">
											<!-- 필수 / 우대조건 list -->
										</ul>
										<div class="area_bottom">

										<div class="modalWrap modal_division" id="lpop_essential_preference4" data-uilayer="recruit_division_preference"style="display: block;">

										<!-- <h3 class="title" style="margin-left: 15px;">필수/우대조건</h3> -->
											<div class="modalCont">
												<div class="area_category_select">
													<div class="depth1">
														<div class="area_scroll one_depth_area">
															<ul class="list_check list_three_depth" style="">
																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre003" value="국가유공자"
																
																	data-section="preferential" name="pre003" data-parent-code="pre002">
																<label class="lbl" for="layer_three_depth_pre003">국가유공자</label>
																</span></li>

																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre004" value="보훈대상자"
																	data-section="preferential" name="pre004" data-parent-code="pre002">
																<label class="lbl" for="layer_three_depth_pre004">보훈대상자</label>
																</span></li>

																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre006" value="장애인우대"
																		data-section="preferential" name="pre006" data-parent-code="pre002">
																<label class="lbl" for="layer_three_depth_pre006">장애인우대</label>
																</span></li>

																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre035" value="외국인우대"
																	data-section="preferential" name="pre035" data-parent-code="pre002">
																	<label class="lbl" for="layer_three_depth_pre035">외국인우대</label>
																</span></li>

																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre034" value="병역특례"
																	data-section="preferential" name="pre034" data-parent-code="pre002">
																	<label class="lbl" for="layer_three_depth_pre034">병역특례</label>
																</span></li>

																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre029" value="여성우대"
																	data-section="preferential" name="pre029" data-parent-code="pre002">
																	<label class="lbl" for="layer_three_depth_pre029">여성우대</label>
																</span></li>

																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre030" value="주부(전업주부)"
																	data-section="preferential" name="pre030" data-parent-code="pre002">
																	<label class="lbl" for="layer_three_depth_pre030">주부(전업주부)</label>
																</span></li>

																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre031" value="고령자(55세이상)"
																	data-section="preferential" name="pre031" data-parent-code="pre002">
																	<label class="lbl" for="layer_three_depth_pre031">고령자(55세이상)</label>
																</span></li>

																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre007" value="취업보호대상자"
																	data-section="preferential" name="pre007" data-parent-code="pre002">
																	<label class="lbl" for="layer_three_depth_pre007">취업보호대상자</label>
																</span></li>

																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre005" value="고용촉진장려금 대상"
																	data-section="preferential" name="pre005" data-parent-code="pre002">
																	<label class="lbl" for="layer_three_depth_pre005">고용촉진장려금 대상</label>
																</span></li>

																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre061" value="특성화고/마이스터고"
																	data-section="preferential" name="pre061" data-parent-code="pre002">
																	<label class="lbl" for="layer_three_depth_pre061">특성화고/마이스터고</label>
																</span></li>
															</ul>
														</div>
													</div>
												</div>
											</div>
										</div>

											<div class="modalBtn">
												<!-- <button type="button" id="btn_check" class="btnSizeL colorBlue btn_confirm" data-seq="0" data-uilayer-btn="recruit_division_preference">확인</button> -->
												<button type="button" id="btn_canc" class="btnSizeL colorBlue colorInvert btn_close" 
													style="float: right; margin-bottom: 10px;">취소</button>
											</div>
										</div>

									</div>
								</div>
							</div>
							<!-- 필수 우대조건 체크시 노출되는 div end -->

											</div>
											<!-- 필수 우대조건 div end -->
										</div>
										<!-- div.subsection end -->


					</div>
					<!-- div.fulldata end -->
				</li></ul>


		</div>


		<!-- 다섯번째 -->


		<div class="add_layer">
				<button type="button" class="btnSizeL" id="add_cat_layer4" value="모집분야 추가" style="width: 100%;">모집분야 추가</button>
		</div>

		<div class="frm_body frm_division" id="extr_cat_layer4" style="padding-bottom: 50px;">
			<ul class="list_division list_recruit_frm" id="list_recruit_division">
				<li class="recruit_division_line_detail expand" id="line_detail_0">

					<!-- 모집분야 -->
					<div class="fulldata">
						<div class="items">
							<div class="area_tit"><strong class="tit">모집분야명</strong></div>
							<div class="area_data">
								<div class="division_name" id="division_name_area_0">
									<input type="text" name="notice_want_name" id="recruitment_title_0" class="inpTypo sizeL recruitment_tite" placeholder="예) R&D, 경영지원" maxlength="30" />
								</div>

								<span class="division_collect" style="float: left;">
									<input type="text" name="notice_want_many" id="collect_cnt_0" class="inpTypo sizeL collect_cnt _filter" maxlength="6" title="모집인원" placeholder="ex) 00명" />
								</span>

							</div>
						</div>
						<!-- 모집분야명 items end -->

						<div class="items">
							<div class="area_tit"><strong class="tit">경력여부</strong></div>
							<div class="area_data type_txt">
								<span class="inpChk career_cd_0">
									<!-- <input type="checkbox" value="0_1" id="career_cd_0_1" class="chkB" /> -->
									<button type="button" class="btnSizeL" id="newbie5">
									<label class="lbl" for="career_cd_0_1">신입</label></button>
								</span>
								<span class="inpChk career_cd_0">
									<!-- <input type="checkbox" id="career_cd_0_2" value="0_2"> -->
									<button type="button" class="btnSizeL" id="career5">
									<label class="lbl" for="career_cd_0_2">경력</label></button>
								</span>

								<!-- 경력 체크시 노출되는 부분 -->
								<div class="career_check career_cd_sub_2_0" id="career_prd5" data-sub-for="0_2" style="display: flex;">
									<div class="inpSel sizeL">
										<select class="career_period" id="career_min_0" name="notice_want_mincar" data-seq="0">
											<option value="">선택</option>
											<option value="1">1년 이상</option>
											<option value="2">2년 이상</option>
											<option value="3">3년 이상</option>
											<option value="4">4년 이상</option>
											<option value="5">5년 이상</option>
											<option value="6">6년 이상</option>
											<option value="7">7년 이상</option>
											<option value="8">8년 이상</option>
											<option value="9">9년 이상</option>
											<option value="10">10년 이상</option>
											<option value="11">11년 이상</option>
											<option value="12">12년 이상</option>
											<option value="13">13년 이상</option>
											<option value="14">14년 이상</option>
											<option value="15">15년 이상</option>
											<option value="16">16년 이상</option>
											<option value="17">17년 이상</option>
											<option value="18">18년 이상</option>
											<option value="19">19년 이상</option>
											<option value="20">20년 이상</option>
										</select>
									</div>
									<span>~</span>
									<div class="inpSel sizeL">
										<select class="career_period" id="career_max_0" name="notice_want_maxcar" data-seq="0" >
											<option value="">선택</option>
											<option value="1">1년 이하</option>
											<option value="2">2년 이하</option>
											<option value="3">3년 이하</option>
											<option value="4">4년 이하</option>
											<option value="5">5년 이하</option>
											<option value="6">6년 이하</option>
											<option value="7">7년 이하</option>
											<option value="8">8년 이하</option>
											<option value="9">9년 이하</option>
											<option value="10">10년 이하</option>
											<option value="11">11년 이하</option>
											<option value="12">12년 이하</option>
											<option value="13">13년 이하</option>
											<option value="14">14년 이하</option>
											<option value="15">15년 이하</option>
											<option value="16">16년 이하</option>
											<option value="17">17년 이하</option>
											<option value="18">18년 이하</option>
											<option value="19">19년 이하</option>
											<option value="20">20년 이하</option>
										</select>
									</div>
								</div>

							</div>
						</div>

						<div class="items">
							<div class="area_tit"><strong class="tit">담당업무</strong></div>
							<div class="area_data">
								<input type="text" id="assign_task_nm_0" value="" class="inpTypo sizeL assign_task_nm"
									name="notice_want_task" title="담당업무" placeholder="담당업무를 자세히 기재할수록 지원율이 높아집니다." maxlength="300">
							</div>
						</div>

						<div class="subsection">
							<div class="items">
								<div class="area_tit">
									<span class="inpChk">
										<!-- <input type="checkbox" class="workpost_chk" id="workpost_chk_0" value="0"> -->
										<label class="lbl ga_data_layer" for="workpost_chk_0" >근무 부서</label>
									</span>
								</div>
								<div class="area_data">
									<!-- 근무부서 체크시 textfield 나오게 -->
									<div class="detail_frm" id="workpost_detail_0" style="">
										<input type="text" id="work_dept_nm_0" name="notice_want_dept" class="inpTypo sizeL work_dept_nm"
											title="근무부서" placeholder="근무하게 될 부서 또는 근무지를 입력해주세요." maxlength="60">
									</div>
								</div>
							</div>
							<div class="items">
								<div class="area_tit">
									<span class="inpChk">
										<!-- <input type="checkbox" class="preferential_chk" id="preferential_chk_0" value="0"> -->
										<label class="lbl ga_data_layer" for="preferential_chk_0">필수/우대조건</label>
									</span>
								</div>
							<div class="area_data type_txt">
								<!-- 필수/우대조건 체크시 노출 -->
								<div id="preferential_detail_0" style="">
									<div class="selected_preference" id="preference_summary_0">
										<ul class="list_preference" id="require_preference_frm_box_list_0">
											<!-- 필수 / 우대조건 list -->
										</ul>
										<div class="area_bottom">

										<div class="modalWrap modal_division" id="lpop_essential_preference5" data-uilayer="recruit_division_preference"style="display: block;">

										<!-- <h3 class="title" style="margin-left: 15px;">필수/우대조건</h3> -->
											<div class="modalCont">
												<div class="area_category_select">
													<div class="depth1">
														<div class="area_scroll one_depth_area">
															<ul class="list_check list_three_depth" style="">
																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre003" value="국가유공자"
																
																	data-section="preferential" name="pre003" data-parent-code="pre002">
																<label class="lbl" for="layer_three_depth_pre003">국가유공자</label>
																</span></li>

																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre004" value="보훈대상자"
																	data-section="preferential" name="pre004" data-parent-code="pre002">
																<label class="lbl" for="layer_three_depth_pre004">보훈대상자</label>
																</span></li>

																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre006" value="장애인우대"
																		data-section="preferential" name="pre006" data-parent-code="pre002">
																<label class="lbl" for="layer_three_depth_pre006">장애인우대</label>
																</span></li>

																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre035" value="외국인우대"
																	data-section="preferential" name="pre035" data-parent-code="pre002">
																	<label class="lbl" for="layer_three_depth_pre035">외국인우대</label>
																</span></li>

																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre034" value="병역특례"
																	data-section="preferential" name="pre034" data-parent-code="pre002">
																	<label class="lbl" for="layer_three_depth_pre034">병역특례</label>
																</span></li>

																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre029" value="여성우대"
																	data-section="preferential" name="pre029" data-parent-code="pre002">
																	<label class="lbl" for="layer_three_depth_pre029">여성우대</label>
																</span></li>

																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre030" value="주부(전업주부)"
																	data-section="preferential" name="pre030" data-parent-code="pre002">
																	<label class="lbl" for="layer_three_depth_pre030">주부(전업주부)</label>
																</span></li>

																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre031" value="고령자(55세이상)"
																	data-section="preferential" name="pre031" data-parent-code="pre002">
																	<label class="lbl" for="layer_three_depth_pre031">고령자(55세이상)</label>
																</span></li>

																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre007" value="취업보호대상자"
																	data-section="preferential" name="pre007" data-parent-code="pre002">
																	<label class="lbl" for="layer_three_depth_pre007">취업보호대상자</label>
																</span></li>

																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre005" value="고용촉진장려금 대상"
																	data-section="preferential" name="pre005" data-parent-code="pre002">
																	<label class="lbl" for="layer_three_depth_pre005">고용촉진장려금 대상</label>
																</span></li>

																<li><span class="inpChk sizeM">
																<input type="checkbox" class="three_depth_preferential" id="layer_three_depth_pre061" value="특성화고/마이스터고"
																	data-section="preferential" name="pre061" data-parent-code="pre002">
																	<label class="lbl" for="layer_three_depth_pre061">특성화고/마이스터고</label>
																</span></li>
															</ul>
														</div>
													</div>
												</div>
											</div>
										</div>

											<div class="modalBtn">
												<!-- <button type="button" id="btn_check" class="btnSizeL colorBlue btn_confirm" data-seq="0" data-uilayer-btn="recruit_division_preference">확인</button> -->
												<button type="button" id="btn_canc" class="btnSizeL colorBlue colorInvert btn_close" 
													style="float: right; margin-bottom: 10px;">취소</button>
											</div>
										</div>

									</div>
								</div>
							</div>
							<!-- 필수 우대조건 체크시 노출되는 div end -->

											</div>
											<!-- 필수 우대조건 div end -->
										</div>
										<!-- div.subsection end -->


					</div>
					<!-- div.fulldata end -->
				</li>
			</ul>


		</div>




		<!-- <input type="submit" id="btn_next" class="btn btn-primary btn-lg" style="border: none; background-color: white; margin: 0 auto; width:100%; "/> -->
		<button type="button" id="btn_next" class="btn btn-primary btn-lg" style="border: none; background-color: white; margin: 0 auto; width:100%; "> 다음 페이지 </button>

		</form>

	</div>
	<!-- 두번째 section end -->

</body>
</html>
