<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Job Post New Last -2 </title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	
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
	padding: 14px 0 6px 19px;
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
		<div class="step_recruit" id="frmDivision" style="float: left;">
			<div class="frm_header">
				<h2 class="tit_step">모집분야</h2>
				<p class="subhead">어떤일을 담당할 직원을 찾으시나요?</p>
			</div>
			
			<div class="frm_body frm_division">
				<ul class="list_division list_recruit_frm" id="list_recruit_division">
					<li class="recruit_division_line_detail expand" id="line_detail_0">
						
						<!-- 모집분야 -->
						<div class="fulldata">
							<div class="items">
								<div class="area_tit"><strong class="tit">모집분야명</strong></div>
								<div class="area_data">
									<div class="division_name" id="division_name_area_0">
										<input type="text" name="" id="recruitment_title_0" class="inpTypo sizeL recruitment_tite" placeholder="예) R&D, 경영지원" maxlength="30" />
									</div>
									
									<span class="division_collect">
										<input type="text" name="collect_cnt" id="collect_cnt_0" class="inpTypo sizeL collect_cnt _filter" maxlength="6" title="모집인원" placeholder="ex) 00명" />
										명 모집
									</span>
									
								</div>
							</div>
							<!-- 모집분야명 items end -->
							
							<div class="items">
								<div class="area_tit"><strong class="tit">경력여부</strong></div>
								<div class="area_data type_txt">
									<span class="inpChk career_cd_0">
										<input type="checkbox" value="0_1" id="career_cd_0_1" />
										<label class="lbl" for="career_cd_0_1">신입</label>
									</span>
									<span class="inpChk career_cd_0">
										<input type="checkbox" id="career_cd_0_2" value="0_2">
										<label class="lbl" for="career_cd_0_2">경력</label>
									</span>
									
									<!-- 경력 체크시 노출되는 부분 -->
									<div class="career_check career_cd_sub_2_0" data-sub-for="0_2" style="">
										<div class="inpSel sizeL"> 
											<select class="career_period" id="career_min_0" name="career_min_0" data-seq="0">
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
										~
										<div class="inpSel sizeL">
											<select class="career_period" id="career_max_0" name="career_max_0" data-seq="0" >
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
									<input type="text" id="assign_task_nm_0" value="" class="inpTypo sizeL assign_task_nm" title="담당업무" placeholder="담당업무를 자세히 기재할수록 지원율이 높아집니다." maxlength="300">
								</div>
							</div>
							
							<div class="subsection">
								<div class="items">
									<div class="area_tit">
										<span class="inpChk">
											<input type="checkbox" class="workpost_chk" id="workpost_chk_0" value="0">
											<label class="lbl ga_data_layer" for="workpost_chk_0" >근무부서</label>
										</span>
									</div>
									<div class="area_data">
										<!-- 근무부서 체크시 textfield 나오게 -->
										<div class="detail_frm" id="workpost_detail_0" style="display: none;">
											<input type="text" id="work_dept_nm_0" name="work_dept_nm" class="inpTypo sizeL work_dept_nm"
												title="근무부서" placeholder="근무하게 될 부서 또는 근무지를 입력해주세요." maxlength="60">
										</div>
									</div>
								</div>
								<div class="items">
									<div class="area_tit">
										<span class="inpChk">
											<input type="checkbox" class="preferential_chk" id="preferential_chk_0" value="0">
											<label class="lbl ga_data_layer" for="preferential_chk_0">필수/우대조건</label>
										</span>
									</div>
									<div class="area_data type_txt">
										<!-- 필수/우대조건 체크시 노출 -->
										<div id="preferential_detail_0" style="display: none;">
											<div class="selected_preference" id="preference_summary_0">
												<ul class="list_preference" id="require_preference_frm_box_list_0">
													<!-- 필수 / 우대조건 list -->
												</ul>
												<div class="area_bottom">
													<p class="txt_placeholder">보유역량, 자격증, 외국어, 전공학과 등 우대사항을 등록해보세요!</p>
													<button type="button" class="btn_add btn_more_ly_essential_preference ga_data_layer"
														data-seq="0" >선택하기</button>
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
						
			</div>
		</div>
		<!-- 두번째 section end -->

</body>
</html>