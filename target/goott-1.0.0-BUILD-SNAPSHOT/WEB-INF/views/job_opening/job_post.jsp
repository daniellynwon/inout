<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session="false" %>
<%-- <%@ include file="../include/header.jsp" %> --%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700&display=swap" rel="stylesheet">
	
	<link rel="stylesheet" href="/resources/css/open-iconic-bootstrap.min.css">
	<link rel="stylesheet" href="/resources/css/animate.css">
	
	<link rel="stylesheet" href="/resources/css/owl.carousel.min.css">
	<link rel="stylesheet" href="/resources/css/owl.theme.default.min.css">
	<link rel="stylesheet" href="/resources/css/magnific-popup.css">
	
	<link rel="stylesheet" href="/resources/css/aos.css">
	
	<link rel="stylesheet" href="/resources/css/ionicons.min.css">
	
	<link rel="stylesheet" href="/resources/css/bootstrap-datepicker.css">
	<link rel="stylesheet" href="/resources/css/jquery.timepicker.css">
	
	
	<link rel="stylesheet" href="/resources/css/flaticon.css">
	<link rel="stylesheet" href="/resources/css/icomoon.css">
	<link rel="stylesheet" href="/resources/css/style.css">

<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">

</script>
</head>
<body>
	<h1 class="blind">채용등록</h1>

	<!-- 입사지원서 -->
	<!--
	<div class="wrap_recruit_resume wrap_apply_form" style="display: none;">
	입사지원서 설정페이지</div>
	여기는 안나오는 부분.
	-->

	<div class="wrap_recruit_frm">
		<!-- 담당자 정보 -->
		<section id="frmManager" class="step_recruit">
			<div id="manager">
				<div class="frm_header">
					<h2 class="tit_step">담당자 정보</h2>
					<p class="subhead">먼저 인사담당자님과 기업 정보가 맞는지 확인해주세요</p>
				</div>
				<div class="frm_body frm_manager">
					<div class="items">
						<div class="area_tit">
							<strong class="tit">담당자 성함</strong> <em class="required">필수</em>
						</div>
						<div class="area_data">
							<span class="manager_name"> <input type="text"
								id="manager_nm" name="manager_nm" class="inpTypo sizeL"
								title="담당자명 입력" placeholder="담당자명 입력" maxlength="30"> <em
								class="msgInvalid _invalid_msg_manager" style="display: none;">담당자명을
									입력해주세요.</em>
							</span> <span class="manager_part"> <input type="text"
								id="manager_dept" name="manager_dept" class="inpTypo sizeL"
								title="(선택) 담당자 부서명 입력" placeholder="(선택) 담당자 부서명"
								maxlength="30">
							</span>
						</div>
					</div>
					<div class="items">
						<div class="area_tit">
							<strong class="tit">전화번호</strong> <em class="required">필수</em>
						</div>
						<div class="area_data">
							<span class="manager_phone"> <input type="text" id="tel1"
								name="tel1" class="inpTypo sizeL _filter" title="전화번호 첫번째 자리 입력"
								maxlength="3" data-filter="numeric">
							</span> <span class="manager_phone"> <input type="text" id="tel2"
								name="tel2" class="inpTypo sizeL _filter" title="전화번호 두번째 자리 입력"
								maxlength="4" data-filter="numeric">
							</span> <span class="manager_phone"> <input type="text" id="tel3"
								name="tel3" class="inpTypo sizeL _filter" title="전화번호 세번째 자리 입력"
								maxlength="4" data-filter="numeric">
							</span> <em class="msgInvalid _invalid_msg_tel" style="display: none;"></em>
						</div>
					</div>
					<div class="items">
						<div class="area_tit">
							<strong class="tit">휴대폰 번호</strong>
						</div>
						<div class="area_data">
							<span class="manager_phone"> <input type="text" id="cell1"
								name="cell1" class="inpTypo sizeL _filter"
								title="휴대폰 번호 첫번째 자리 입력" maxlength="3" data-filter="numeric">
							</span> <span class="manager_phone"> <input type="text"
								id="cell2" name="cell2" class="inpTypo sizeL _filter"
								title="휴대폰 번호 두번째 자리 입력" maxlength="4" data-filter="numeric">
							</span> <span class="manager_phone"> <input type="text"
								id="cell3" name="cell3" class="inpTypo sizeL _filter"
								title="휴대폰 번호 세번째 자리 입력" maxlength="4" data-filter="numeric">
							</span> <em class="msgInvalid _invalid_msg_cell" style="display: none;">휴대폰번호
								형식이 올바르지 않습니다.</em>
						</div>
					</div>
					<div class="items">
						<div class="area_tit">
							<strong class="tit">이메일 주소</strong> <em class="required">필수</em>
						</div>
						<div class="area_data">
							<div class="manager_email">
								<input type="text" id="email" name="email" class="inpTypo sizeL"
									title="이메일 주소 입력" placeholder="이메일 주소를 입력해주세요."
									autocomplete="off">
								<div class="wrap_layer">
									<div class="layer_auto_email">
										<ul class="list_email" id="list_email_auto_complete"></ul>
									</div>
								</div>
								<em class="msgInvalid msgarea_manager _invalid_msg_email"
									style="display: none;"></em>
							</div>
						</div>
					</div>
					
					<!-- *********** 업종 ************* -->
					<div class="items">
						<div class="area_tit">
							<strong class="tit">업종</strong> <em class="required">필수</em>
						</div>
						<div class="area_data" id="industry">
							<div class="selected_item selected" id="industry_summary">
								<p class="txt_placeholder">업종은 최대 1개 선택할 수 있습니다.</p>
								<ul class="list_selected_item frm_box_list"
									data-help_target="industry">
									<li>IT학원
										<button type="button" class="btn_del _del" value="60201">삭제</button>
									</li>
								</ul>
								<button type="button" class="btn_add btn_more_ly"
									id="industry_setting_btn" data-layer_type="industry">수정·추가하기</button>
							</div>
							<div class="wrap_layer">
								<div class="layer_frm layer_add_industry" id="industry_all_list">
									<div class="area_keyword">
										<div class="wrap_search" id="industry_auto_complete_wrap">
											<input type="text" id="industry_search_input"
												class="inpTypo sizeL inp_keyword" title="업종명"
												placeholder="업종명을 입력하세요">
											<button type="button" class="btn_del_keyword btnDeleteSearch"
												data-target-input="#industry_search_input">키워드 삭제</button>
											<div class="layer_suggestion">
												<div class="area_scroll auto_complete_area">
													<p class="txt_noti no_auto_complete" style="display: none;">일치하는
														업종이 없습니다. 다시 검색해주세요.</p>
													<ul class="list_check auto_complete_list"></ul>
												</div>
												<div class="util_search">
													<button type="button" class="btn_close">닫기</button>
												</div>
											</div>
										</div>
									</div>
									<div class="area_category_select ">
										<div class="depth1">
											<div class="area_scroll category_step">
												<ul class="list_category"></ul>
											</div>
										</div>
										<div class="depth2">
											<div class="area_scroll category_step">
												<ul class="list_category"></ul>
											</div>
										</div>
										<div class="depth_check">
											<div class="area_scroll category_step">
												<p class="txt_noti no_industry_bcode" style="display: none;">←
													업종을 선택해주세요</p>
												<ul class="list_check industry_bcode"></ul>
											</div>
										</div>
									</div>
									<div class="area_btn">
										<button type="button" class="btnSizeL colorWhite close_layer">취소</button>
										<button type="button" class="btnSizeL colorBlue confirm_layer">확인</button>
									</div>
								</div>
							</div>
							<em class="msgInvalid _invalid_msg" style="display: none;">업종을
								입력해주세요.</em>
						</div>
					</div>
					
					
					<!-- ************* 업종 div 끝 ************* -->
					
					
					<div class="items">
						<div class="area_tit">
							<strong class="tit">대표 근무지역</strong> <em class="required">필수</em>
						</div>
						<div class="area_data" id="address">
							<div class="manager_location">
								<span class="inpChk"><input type="checkbox" id="overseas"
									name="overseas" value="overseas"><label class="lbl"
									for="overseas">해외지역</label></span> <span class="inpChk"><input
									type="checkbox" id="chk_typ3_01" name="work-site-cd"
									value="site050" data-help_target="company_address"><label
									class="lbl" for="chk_typ3_01">재택근무 가능</label></span>
							</div>
							<div class="input_address internal">
								<span class="manager_address"><input type="text"
									class="inpTypo sizeL address01 _inputWrapper"
									id="address_depth1" name="address" readonly=""
									data-help_target="company_address" title="주소 입력"
									placeholder="클릭하면 주소검색창이 열립니다."></span> <span
									class="manager_address2"><input type="text"
									class="inpTypo sizeL address02 _inputWrapper"
									id="address_depth2" name="address_detail"
									data-help_target="company_address" title="상세주소 입력"
									placeholder="상세주소 : 예) 187-10 코오롱싸이언스밸리"></span>
								<button type="button" class="btnSizeL colorBlack btn_map"
									id="showAreaMapBtn">
									<span class="ico_map">지도위치확인</span>
								</button>
								<em class="msgInvalid _invalid_msg" id="address_empty_msg"
									style="display: none;">근무지역을 입력해주세요.</em>

								<div class="wrap_map" id="mapBox" style="display: none;">
									<strong class="tit_map">위치/지도 확인 <span class="txt"
										id="locationName">서울 구로구</span></strong>
									<div class="map_area" id="mapArea"></div>
									<span class="inpChk sizeM"><input type="checkbox"
										id="showMap"><label class="lbl" for="showMap">채용공고에
											지도표시</label></span>
									<button type="button" class="btn_close">
										<span class="blind">닫기</span>
									</button>
								</div>
								<em class="msgInvalid _invalid_msg" id="address_lating_msg"
									style="display: none;">입력하신 주소로 지도를 불러올 수가 없습니다. 주소
									확인바랍니다.</em>
							</div>
							
						</div>	<!-- div class-area_data id address end -->
					</div>		<!-- class item end -->
					
					<div class="items" id="location" style="display: none;">
						<div class="area_tit">
							<strong class="tit">인근지역</strong>
						</div>
						<div class="area_data add_list">
							<div class="data_location _location_group" data-seq="1">
								<div class="inpSel sizeL">
									<select class="_sel_one_depth" title="지역" disabled="">
										<option value="">선택</option>
										<option value="101000">서울</option>
										<option value="102000">경기</option>
										<option value="103000">광주</option>
									</select>
								</div>
								
								<div class="selected_item _inputWrapper selected">
									<p class="txt_placeholder">인근지역</p>
									<ul class="list_selected_item _location_summary">
										<li>구로구
											<button type="button" class="btn_del loc_del"
												id="loc_delete_101070" data-mcode="101000" value="101070"
												style="display: none;">삭제</button>
										</li>
									</ul>
									<button type="button" class="btn_add"
										data-target="layer_add_location">
										<span class="blind">인근지역 레이어 펼침</span>
									</button>
								</div>
								<div class="wrap_layer">
									<div class="layer_frm layer_add_location layer_add_location2">
										<div class="location_scroll">
											<ul class="list_location select_list " style="display: none;">
												<li><span class="inpChk sizeM"><input
														type="checkbox" id="loc_chk_101010" data-mcode="101000"
														value="101010"><label class="lbl"
														for="loc_chk_101010">강남구</label></span></li>


												<li><span class="inpChk sizeM"><input
														type="checkbox" id="loc_chk_101020" data-mcode="101000"
														value="101020"><label class="lbl"
														for="loc_chk_101020">강동구</label></span></li>


												<li><span class="inpChk sizeM"><input
														type="checkbox" id="loc_chk_101030" data-mcode="101000"
														value="101030"><label class="lbl"
														for="loc_chk_101030">강북구</label></span></li>


												<li><span class="inpChk sizeM"><input
														type="checkbox" id="loc_chk_101040" data-mcode="101000"
														value="101040"><label class="lbl"
														for="loc_chk_101040">강서구</label></span></li>


												<li><span class="inpChk sizeM"><input
														type="checkbox" id="loc_chk_101050" data-mcode="101000"
														value="101050"><label class="lbl"
														for="loc_chk_101050">관악구</label></span></li>


												<li><span class="inpChk sizeM"><input
														type="checkbox" id="loc_chk_101060" data-mcode="101000"
														value="101060"><label class="lbl"
														for="loc_chk_101060">광진구</label></span></li>


												<li><span class="inpChk sizeM"><input
														type="checkbox" id="loc_chk_101070" data-mcode="101000"
														value="101070" checked="" disabled=""><label
														class="lbl" for="loc_chk_101070">구로구</label></span></li>


												<li><span class="inpChk sizeM"><input
														type="checkbox" id="loc_chk_101080" data-mcode="101000"
														value="101080"><label class="lbl"
														for="loc_chk_101080">금천구</label></span></li>


												<li><span class="inpChk sizeM"><input
														type="checkbox" id="loc_chk_101090" data-mcode="101000"
														value="101090"><label class="lbl"
														for="loc_chk_101090">노원구</label></span></li>


												<li><span class="inpChk sizeM"><input
														type="checkbox" id="loc_chk_101100" data-mcode="101000"
														value="101100"><label class="lbl"
														for="loc_chk_101100">도봉구</label></span></li>


												<li><span class="inpChk sizeM"><input
														type="checkbox" id="loc_chk_101110" data-mcode="101000"
														value="101110"><label class="lbl"
														for="loc_chk_101110">동대문구</label></span></li>


												<li><span class="inpChk sizeM"><input
														type="checkbox" id="loc_chk_101120" data-mcode="101000"
														value="101120"><label class="lbl"
														for="loc_chk_101120">동작구</label></span></li>


												<li><span class="inpChk sizeM"><input
														type="checkbox" id="loc_chk_101130" data-mcode="101000"
														value="101130"><label class="lbl"
														for="loc_chk_101130">마포구</label></span></li>


												<li><span class="inpChk sizeM"><input
														type="checkbox" id="loc_chk_101140" data-mcode="101000"
														value="101140"><label class="lbl"
														for="loc_chk_101140">서대문구</label></span></li>


												<li><span class="inpChk sizeM"><input
														type="checkbox" id="loc_chk_101150" data-mcode="101000"
														value="101150"><label class="lbl"
														for="loc_chk_101150">서초구</label></span></li>


												<li><span class="inpChk sizeM"><input
														type="checkbox" id="loc_chk_101160" data-mcode="101000"
														value="101160"><label class="lbl"
														for="loc_chk_101160">성동구</label></span></li>


												<li><span class="inpChk sizeM"><input
														type="checkbox" id="loc_chk_101170" data-mcode="101000"
														value="101170"><label class="lbl"
														for="loc_chk_101170">성북구</label></span></li>


												<li><span class="inpChk sizeM"><input
														type="checkbox" id="loc_chk_101180" data-mcode="101000"
														value="101180"><label class="lbl"
														for="loc_chk_101180">송파구</label></span></li>


												<li><span class="inpChk sizeM"><input
														type="checkbox" id="loc_chk_101190" data-mcode="101000"
														value="101190"><label class="lbl"
														for="loc_chk_101190">양천구</label></span></li>


												<li><span class="inpChk sizeM"><input
														type="checkbox" id="loc_chk_101200" data-mcode="101000"
														value="101200"><label class="lbl"
														for="loc_chk_101200">영등포구</label></span></li>


												<li><span class="inpChk sizeM"><input
														type="checkbox" id="loc_chk_101210" data-mcode="101000"
														value="101210"><label class="lbl"
														for="loc_chk_101210">용산구</label></span></li>


												<li><span class="inpChk sizeM"><input
														type="checkbox" id="loc_chk_101220" data-mcode="101000"
														value="101220"><label class="lbl"
														for="loc_chk_101220">은평구</label></span></li>


												<li><span class="inpChk sizeM"><input
														type="checkbox" id="loc_chk_101230" data-mcode="101000"
														value="101230"><label class="lbl"
														for="loc_chk_101230">종로구</label></span></li>


												<li><span class="inpChk sizeM"><input
														type="checkbox" id="loc_chk_101240" data-mcode="101000"
														value="101240"><label class="lbl"
														for="loc_chk_101240">중구</label></span></li>


												<li><span class="inpChk sizeM"><input
														type="checkbox" id="loc_chk_101250" data-mcode="101000"
														value="101250"><label class="lbl"
														for="loc_chk_101250">중랑구</label></span></li>


												<li><span class="inpChk sizeM"><input
														type="checkbox" id="loc_chk_101000" data-mcode="101000"
														value="101000"><label class="lbl"
														for="loc_chk_101000">서울전체</label></span></li>
											</ul>
										</div>
										<div class="noti_location">인근지역을 '서울' 내에서 선택해주세요. (최대
											5개)</div>
									</div>
								</div>
								<button type="button" class="btnSizeM colorBlack btn_list_add ">
									<span class="blind">인근지역 리스트 추가</span>
								</button>
							</div>
							<p class="msgarea _invalid_msg" style="display: none;">
								<span class="msg_err">공고 노출 지역을 선택해주세요.</span>
							</p>
							<p class="msgarea" id="locResetMsg" style="display: none;">
								<span class="msg_err">근무지역 반영을 위하여 공고 노출 지역을 초기화하였습니다.</span>
							</p>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- 모집분야 -->
		<section id="frmDivision" class="step_recruit">
			<div class="frm_header">
				<h2 class="tit_step">모집분야</h2>
				<p class="subhead">어떤일을 담당할 직원을 찾으시나요?</p>
				<div class="aside" id="recruit_division_all_delete"
					style="display: none;">
					<button type="button"
						class="btnSizeL colorWhite btn_clear ga_data_layer"
						data-ga_data_layer="ga_lead|pc_rec_division|btn_all_delete">전체삭제</button>
				</div>
			</div>
			<div class="frm_body frm_division">
				<ul class="list_division list_recruit_frm"
					id="list_recruit_division">

					<li class="recruit_division_line_detail expand" id="line_detail_0">
						<div class="summary">
							<em id="state_icon_0" class=""></em> <strong class="tit_division"
								id="main_recruitment_title_0"></strong>
							<div class="area_frm_btn">
								<button type="button"
									class="btnSizeL colorWhite btn_end chg_state_btn ga_data_layer"
									id="chg_state_btn_0" data-seq="0" data-btn-state="delete-tmp"
									data-recruitment-seq=""
									data-ga_data_layer="ga_lead|pc_rec_division|btn_delete"
									title="모집분야 삭제">삭제</button>
								<button type="button"
									class="btnSizeL colorBlack btn_del btn_copy ga_data_layer"
									data-seq="0"
									data-ga_data_layer="ga_lead|pc_rec_division|btn_copy">복사</button>
							</div>
							<button type="button" class="btn_view_division btn_detail_view"
								data-seq="0">
								<span class="blind">모집분야 상세입력 보기</span>
							</button>
							<em class="msgInvalid _invalid_msg_whole_tab_0"
								id="invalid_msg_whole_msg_0" style="display: none"></em>
						</div>
						<div class="fulldata">
							<div class="items">
								<div class="area_tit">
									<strong class="tit">모집분야명</strong> <em class="required">필수</em>
								</div>
								<div class="area_data">
									<input type="hidden" id="original_title_0" value="">
									<div class="division_name" id="division_name_area_0">
										<input type="text" id="recruitment_title_0"
											class="inpTypo sizeL recruitment_title"
											data-help_target="display_division" value="" title="모집분야명"
											placeholder="예) R&amp;D, 경영지원" maxlength="30">
									</div>
									<span class="division_collect"> <input type="text"
										id="collect_cnt_0" class="inpTypo sizeL collect_cnt _filter"
										title="모집인원" placeholder="ex) 00명" name="collect_cnt"
										data-filter="numeric" data-help_target="collect_cnt" value="0"
										maxlength="6"> 명 모집
									</span> <em class="msgInvalid _invalid_msg_collect_0"
										style="display: none;"> <!-- 모집분야 & 모집인원 validation -->
									</em>
								</div>
							</div>
							<!-- 경력 여부 지정 여기는 신입 / 경력 only -->
							<div class="items">
								<div class="area_tit">
									<strong class="tit">경력여부</strong><em class="required">필수</em>
								</div>
								<div class="area_data type_txt">
									<span class="inpChk career_cd_0">
									<input type="checkbox" id="career_cd_0_1" value="0_1" data-help_target="hope_career">
									<label class="lbl" for="career_cd_0_1">신입</label></span> 
									<span class="inpChk career_cd_0">
									<input type="checkbox" id="career_cd_0_2" value="0_2" data-help_target="hope_career">
									<label class="lbl" for="career_cd_0_2">경력</label></span> 
									<em class="msgInvalid _invalid_msg_career_0" style="display: none;">경력을 입력해주세요.</em>
									
									<div class="career_check career_cd_sub_2_0" data-sub-for="0_2" style="display: none;">
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
											<select class="career_period" id="career_max_0" name="career_max_0" data-seq="0">
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
								<div class="area_tit">
									<strong class="tit">담당업무</strong>
								</div>
								<div class="area_data">
									<input type="text" id="assign_task_nm_0" value=""
										class="inpTypo sizeL assign_task_nm" title="담당업무"
										placeholder="담당업무를 자세히 기재할수록 지원율이 높아집니다." maxlength="300"
										data-help_target="responsibilities">
								</div>
							</div>
							<div class="subsection">
								<div class="items">
									<div class="area_tit">
										<span class="inpChk"><input type="checkbox"
											class="workpost_chk" id="workpost_chk_0" value="0"><label
											class="lbl ga_data_layer" for="workpost_chk_0"
											data-ga_data_layer="ga_lead|pc_rec_division|checkbox_department">근무부서</label></span>
									</div>
									<div class="area_data">
										<!-- 근무부서 체크 시 노출 -->
										<div class="detail_frm" id="workpost_detail_0"
											style="display: none;">
											<input type="text" id="work_dept_nm_0" name="work_dept_nm"
												class="inpTypo sizeL work_dept_nm" value="" title="근무부서"
												placeholder="근무하게 될 부서 또는 근무지를 입력해주세요." maxlength="60"
												data-help_target="workpost">
										</div>
									</div>
								</div>
								
								<!-- 필수 / 우대조건 (선택사항) -->
								<div class="items">
									<div class="area_tit">
										<span class="inpChk"><input type="checkbox" class="preferential_chk" id="preferential_chk_0" value="0">
										<label class="lbl ga_data_layer" for="preferential_chk_0" data-ga_data_layer="ga_lead|pc_rec_division|checkbox_preferred">필수/우대조건</label></span>
									</div>
									<div class="area_data type_txt">
										<!-- 필수/우대조건 체크 시 노출 -->
										<div id="preferential_detail_0" style="display: none;">
											<div class="list_recommend">
												<strong class="tit">추천조건</strong>
												<ul>
													<li><input type="checkbox" class="major_recommend" id="maj024_0" value="maj024" data-text="공학계열">
													<label for="maj024_0">전공/학과: 공학계열</label></li>
													<li><input type="checkbox" class="preference_recommend" id="pre043_0" value="pre043" data-text="국가유공자">
													<label for="pre043_0">국가유공자</label></li>
													<li><input type="checkbox" class="preference_recommend" id="pre026_0" value="pre026" data-text="유공자">
													<label for="pre026_0">무슨유공자</label></li>
													<li><input type="checkbox" class="language_recommend" id="7453_0" value="7453" data-text="english">
													<label for="7453_0">외국어: 영어 </label></li>
												</ul>
											</div>
											<div class="selected_preference" id="preference_summary_0">
												<ul class="list_preference"
													id="require_preference_frm_box_list_0"></ul>
												<div class="area_bottom">
													<p class="txt_placeholder">보유역량, 자격증, 외국어, 전공학과 등 우대사항을
														등록해보세요!</p>
													<button type="button"
														class="btn_add btn_more_ly_essential_preference ga_data_layer"
														data-seq="0"
														data-uilayer-btn="recruit_division_preference"
														data-ga_data_layer="ga_lead|pc_rec_division|layer_preferred">선택하기</button>
												</div>
											</div>
										</div> <!-- 필수/우대조건 체크 시 노출 -->
									</div>
								</div>		<!-- div items end -->
							</div>	<!-- div subsection end -->
							
						</div>
					</li>
				</ul>
			</div>
			<button type="button"
				class="btn_add_field btn_recruit_frm ga_data_layer"
				data-ga_data_layer="ga_lead|pc_rec_division|btn_add">+ 모집분야
				추가</button>
		</section>

		<!-- 자격 / 조건 -->
		<section id="frmQualification" class="step_recruit">
			<div class="frm_header">
				<h2 class="tit_step">자격 / 조건</h2>
				<p class="subhead">지원자격과 근무조건은 어떻게 되나요?</p>
			</div>
			<div class="frm_body frm_condition">
				<div class="items" id="eduItem">
					<div class="area_tit">
						<strong class="tit">지원자 학력</strong> <em class="required">필수</em>
					</div>
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
							<!-- <input type="text" id="etc_education" class="inpTypo sizeL"
								title="(선택) 기타 학력사항 입력" placeholder="(선택) 기타 학력사항"
								maxlength="20"> <span class="inpChk"><input
								type="checkbox" id="edu_graduation"><label class="lbl"
								for="edu_graduation">졸업예정자 지원가능</label></span> -->
						</div>
					</div>
				</div>
				
				<div class="items" id="salary">
					<div class="area_tit">
						<strong class="tit">연봉/급여</strong> <em class="required">필수</em>
					</div>
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
								<select id="salary_cd" title="급여 상세">
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
							<span class="salary_directly" id="input_salary"
								style="display: none;"> <input type="text"
								id="salary_ipt" name="salary" class="inpTypo sizeL _filter"
								data-filter="numeric" maxlength="6" title="급여 직접 입력"> <span
								class="txt" id="salary_unit">만원</span>
							</span> <span class="salary_etc"> <input type="text"
								id="remuneration" name="remuneration" class="inpTypo sizeL"
								title="(선택) 기타 급여사항 입력" placeholder="(선택) 기타 급여사항"
								maxlength="50">
							</span> <em class="msgInvalid _invalid_msg" style="display: none;"></em>
							<p class="noti_salary">
								<strong id="salary_msg">최저시급 8,590원, 주 40시간 기준 최저연봉 약
									21,543,720원</strong> <a href="http://www.minimumwage.go.kr/index.jsp"
									target="_blank" class="link_info" title="새창으로 이동">최저임금제도 안내</a><br>
								최저임금을 준수하지 않는 경우, 공고 강제 마감 및 행정처분을 받을 수 있습니다.
							</p>
						</div>
					</div>
				</div>
				<div class="items" id="job_type">
					<div class="area_tit">
						<strong class="tit">근무형태</strong> <em class="required">필수</em>
					</div>
					<div class="area_data">
						<div class="row">
							<ul class="list_checkbox job_type_chk_list" id="job_type_list">
								<li><input type="checkbox" id="job_type_1" value="1"
									data-help_target="job_type"><label for="job_type_1"
									class="lbl">정규직</label></li>

								<li><input type="checkbox" id="job_type_2" value="2"
									data-help_target="job_type"><label for="job_type_2"
									class="lbl">계약직</label></li>

								<li><input type="checkbox" id="job_type_5" value="5"
									data-help_target="job_type"><label for="job_type_5"
									class="lbl">아르바이트</label></li>

								<li><input type="checkbox" id="job_type_4" value="4"
									data-help_target="job_type"><label for="job_type_4"
									class="lbl">인턴직</label></li>

								<li><input type="checkbox" id="job_type_9" value="9"
									data-help_target="job_type"><label for="job_type_9"
									class="lbl">프리랜서</label></li>

								<li><input type="checkbox" id="job_type_14" value="14"
									data-help_target="job_type"><label for="job_type_14"
									class="lbl">파트</label></li>

								<li><input type="checkbox" id="job_type_8" value="8"
									data-help_target="job_type"><label for="job_type_8"
									class="lbl">위촉직</label></li>

								<li><input type="checkbox" id="job_type_6" value="6"
									data-help_target="job_type"><label for="job_type_6"
									class="lbl">파견직</label></li>

								<li><input type="checkbox" id="job_type_15" value="15"
									data-help_target="job_type"><label for="job_type_15"
									class="lbl">전임</label></li>

								<li><input type="checkbox" id="job_type_3" value="3"
									data-help_target="job_type"><label for="job_type_3"
									class="lbl">병역특례</label></li>

								<li><input type="checkbox" id="job_type_12" value="12"
									data-help_target="job_type"><label for="job_type_12"
									class="lbl">교육생</label></li>

								<li><input type="checkbox" id="job_type_7" value="7"
									data-help_target="job_type"><label for="job_type_7"
									class="lbl">해외취업</label></li>
							</ul>
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
												id="chk_term_jt_11" value="11"><label class="lbl"
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
								<dl id="military_wrap" style="display: none;">
									<dt>병역특례</dt>
									<dd>
										<span class="inpChk"><input type="checkbox"
											id="chk_term_jt_21" value="21"><label class="lbl"
											for="chk_term_jt_21">현역</label></span> <span class="inpChk"><input
											type="checkbox" id="chk_term_jt_22" value="22"><label
											class="lbl" for="chk_term_jt_22">보충역</label></span> <span
											class="inpChk"><input type="checkbox"
											id="chk_term_jt_19" value="19"><label class="lbl"
											for="chk_term_jt_19">전문연구원</label></span> <span class="inpChk"><input
											type="checkbox" id="chk_term_jt_20" value="20"><label
											class="lbl" for="chk_term_jt_20">산업기능요원</label></span>
									</dd>
								</dl>
							</div>
							<em class="msgInvalid msgarea_type _invalid_msg" style="display: none;">근무형태를 선택해주세요.</em>
						</div>
					</div>
				</div>
				<div class="items" id="work_shift_part">
					<div class="area_tit">
						<strong class="tit">근무요일</strong>
					</div>
					<div class="area_data">
						<!-- 근무요일 체크 시 노출 -->
						<div class="condition_day">
							<div class="inpSel sizeL">
								<select id="work_shift_cd" name="work_shift_cd"
									data-help_target="work_shift" title="근무요일">
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
							<input type="text" id="work_shift_value" name="work_shift_value"
								maxlength="30" class="inpTypo sizeL" title="근무요일 직접입력"
								placeholder="예) 월 4회 휴일, 주5일(매주 금요일 휴일) 등"
								style="display: none;">
						</div>
					</div>
				</div>
				
				<div class="items" id="work_shift_time_part">
					<div class="area_tit">
						<strong class="tit">근무시간</strong>
					</div>
					<div class="area_data">
						<!-- 근무시간 체크 시 노출 -->
						<div class="condition_day">
							<div class="inpSel sizeL">
								<select id="work_shift_time_cd" name="work_shift_time_cd"
									data-help_target="work_shift_time" title="근무시간">
									<option value="">선택</option>

									<option value="1">오전 9시~오후 6시</option>

									<option value="2">오전 8시 30분~오후 5시 30분</option>

									<option value="3">오전 10시~오후 7시</option>

									<option value="4">탄력근무제</option>

									<option value="5">직접입력</option>
								</select>
							</div>
							<input type="text" id="work_shift_time" name="work_shift_time"
								maxlength="30" class="inpTypo sizeL" title="근무시간 직접입력"
								placeholder="예) 1주일 순환근무, 교대 근무" style="display: none;">
						</div>
					</div>
				</div>

				<div class="toggle_subsection" id="added_option_title">
					<button type="button" class="on">성별, 연령 추가 입력</button>
				</div>
				<div class="subsection" id="work_shift">
					<div class="items" id="genderItem">
						<div class="area_tit">
							<strong class="tit">성별</strong>
						</div>
						<div class="area_data">
							<div class="condition_day" id="applicant_sex_part">
								<div class="inpSel sizeL">
									<select id="sex" title="성별">
										<option value="irr">성별무관</option>
										<option value="male">남성</option>
										<option value="female">여성</option>
									</select>
								</div>
							</div>
							<div class="info_law" id="applicant_sex_part_info">
								<button type="button" class="btn_toggle_desc btn_noti_ly">성차별금지
									남녀고용평등에 관한 법률</button>
								<div class="inner">
									<strong class="tit_law">성차별금지 주요내용</strong>
									<p class="desc_law">
										모집・채용에서 <strong>남녀를 차별</strong>하거나, <strong>여성근로자를 채용</strong>할
										때 직무 수행에 불필요한 용모, 키, 체중등의 신체조건, 미혼조건을 제시 또는 요구하는 경우 남녀고용평등과
										일가정 양립 지원에 관한 법률 위반에 따른 <strong class="emph_txt">500만원
											이하의 벌금</strong>이 부과 될 수 있습니다.
									</p>
									<div class="tblWrap tblRow">
										<table>
											<caption class="blind">성차별금지 남녀고용평등에 관한 법률</caption>
											<colgroup>
												<col style="width: 140px">
												<col style="">
											</colgroup>
											<tbody>
												<tr>
													<th scope="row">관련법령</th>
													<td><strong>성차별금지 주요내용</strong> 남녀고용평등과 일・가정 양립 지원에 관한
														법률 제 7조 1항에 의거 근로자를 모집하거나 채용 시 합리적인<br> 이유없이 남녀를 차별할
														수 없음 &lt; 차별 시 500만원 이하 벌금 &gt;</td>
												</tr>
												<tr>
													<th scope="row">차별사례</th>
													<td>특정성을 지칭하는 직종명 등 사용하는 경우, 특정성 배제<br> - 남성 선반공,
														병역필 남, 여성 비서, 미용사 &lt;여성 환영&gt; 등<br> <br> 직종 등
														남녀 분리모집 등<br> - 관리・사무직 남성 10명, 판매직 여성 5명
													</td>
												</tr>
												<tr>
													<th scope="row">차별로<br> 보지않는 사례
													</th>
													<td>직무 성질상 특정한 성이 불가피한 경우<br> - 남성 역할을 위한 배우, 모델
														등<br> - 여성 목욕탕의 여성 목욕관리사, 여성장애인・여성환자의 도우미 등<br>
														- 여성 기숙사의 여성 사감 등<br> <br> 현존하는 차별을 없애거나 고용평등
														촉진을 위해 잠정적으로 특정성 우대하는 조치를 하는 경우
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="items" id="ageItem">
						<div class="area_tit">
							<strong class="tit">연령</strong>
						</div>
						<div class="area_data">
							<div class="condition_day" id="age_section">
								<div class="inpSel sizeL">
									<select id="age" title="연령">
										<option value="irr">연령무관</option>
										<option value="limit">연령제한</option>
									</select>
								</div>
								<div class="inpSel sizeL">
									<select id="age_max" data-help_target="age" title="최소 나이"
										disabled="disabled">
										<option value="">전체</option>
										<option value="2003">18세(2003)년생</option>
										<option value="2002">19세(2002)년생</option>
										<option value="2001">20세(2001)년생</option>
										<option value="2000">21세(2000)년생</option>
										<option value="1999">22세(1999)년생</option>
										<option value="1998">23세(1998)년생</option>
										<option value="1997">24세(1997)년생</option>
										<option value="1996">25세(1996)년생</option>
										<option value="1995">26세(1995)년생</option>
										<option value="1994">27세(1994)년생</option>
										<option value="1993">28세(1993)년생</option>
										<option value="1992">29세(1992)년생</option>
										<option value="1991">30세(1991)년생</option>
										<option value="1990">31세(1990)년생</option>
										<option value="1989">32세(1989)년생</option>
										<option value="1988">33세(1988)년생</option>
										<option value="1987">34세(1987)년생</option>
										<option value="1986">35세(1986)년생</option>
										<option value="1985">36세(1985)년생</option>
										<option value="1984">37세(1984)년생</option>
										<option value="1983">38세(1983)년생</option>
										<option value="1982">39세(1982)년생</option>
										<option value="1981">40세(1981)년생</option>
										<option value="1980">41세(1980)년생</option>
										<option value="1979">42세(1979)년생</option>
										<option value="1978">43세(1978)년생</option>
										<option value="1977">44세(1977)년생</option>
										<option value="1976">45세(1976)년생</option>
										<option value="1975">46세(1975)년생</option>
										<option value="1974">47세(1974)년생</option>
										<option value="1973">48세(1973)년생</option>
										<option value="1972">49세(1972)년생</option>
										<option value="1971">50세(1971)년생</option>
										<option value="1970">51세(1970)년생</option>
										<option value="1969">52세(1969)년생</option>
										<option value="1968">53세(1968)년생</option>
										<option value="1967">54세(1967)년생</option>
										<option value="1966">55세(1966)년생</option>
										<option value="1965">56세(1965)년생</option>
										<option value="1964">57세(1964)년생</option>
										<option value="1963">58세(1963)년생</option>
										<option value="1962">59세(1962)년생</option>
										<option value="1961">60세(1961)년생</option>
										<option value="1960">61세(1960)년생</option>
										<option value="1959">62세(1959)년생</option>
										<option value="1958">63세(1958)년생</option>
										<option value="1957">64세(1957)년생</option>
										<option value="1956">65세(1956)년생</option>
										<option value="1955">66세(1955)년생</option>
										<option value="1954">67세(1954)년생</option>
										<option value="1953">68세(1953)년생</option>
										<option value="1952">69세(1952)년생</option>
										<option value="1951">70세(1951)년생</option>
									</select>
								</div>
								<span class="txt">~</span>
								<div class="inpSel sizeL">
									<select id="age_min" data-help_target="age" title="최대 나이"
										disabled="disabled">
										<option value="">전체</option>
										<option value="2003">18세(2003)년생</option>
										<option value="2002">19세(2002)년생</option>
										<option value="2001">20세(2001)년생</option>
										<option value="2000">21세(2000)년생</option>
										<option value="1999">22세(1999)년생</option>
										<option value="1998">23세(1998)년생</option>
										<option value="1997">24세(1997)년생</option>
										<option value="1996">25세(1996)년생</option>
										<option value="1995">26세(1995)년생</option>
										<option value="1994">27세(1994)년생</option>
										<option value="1993">28세(1993)년생</option>
										<option value="1992">29세(1992)년생</option>
										<option value="1991">30세(1991)년생</option>
										<option value="1990">31세(1990)년생</option>
										<option value="1989">32세(1989)년생</option>
										<option value="1988">33세(1988)년생</option>
										<option value="1987">34세(1987)년생</option>
										<option value="1986">35세(1986)년생</option>
										<option value="1985">36세(1985)년생</option>
										<option value="1984">37세(1984)년생</option>
										<option value="1983">38세(1983)년생</option>
										<option value="1982">39세(1982)년생</option>
										<option value="1981">40세(1981)년생</option>
										<option value="1980">41세(1980)년생</option>
										<option value="1979">42세(1979)년생</option>
										<option value="1978">43세(1978)년생</option>
										<option value="1977">44세(1977)년생</option>
										<option value="1976">45세(1976)년생</option>
										<option value="1975">46세(1975)년생</option>
										<option value="1974">47세(1974)년생</option>
										<option value="1973">48세(1973)년생</option>
										<option value="1972">49세(1972)년생</option>
										<option value="1971">50세(1971)년생</option>
										<option value="1970">51세(1970)년생</option>
										<option value="1969">52세(1969)년생</option>
										<option value="1968">53세(1968)년생</option>
										<option value="1967">54세(1967)년생</option>
										<option value="1966">55세(1966)년생</option>
										<option value="1965">56세(1965)년생</option>
										<option value="1964">57세(1964)년생</option>
										<option value="1963">58세(1963)년생</option>
										<option value="1962">59세(1962)년생</option>
										<option value="1961">60세(1961)년생</option>
										<option value="1960">61세(1960)년생</option>
										<option value="1959">62세(1959)년생</option>
										<option value="1958">63세(1958)년생</option>
										<option value="1957">64세(1957)년생</option>
										<option value="1956">65세(1956)년생</option>
										<option value="1955">66세(1955)년생</option>
										<option value="1954">67세(1954)년생</option>
										<option value="1953">68세(1953)년생</option>
										<option value="1952">69세(1952)년생</option>
										<option value="1951">70세(1951)년생</option>
									</select>
								</div>
							</div>
							<div class="info_law" id="applicant_age_part_info">
								<button type="button" class="btn_toggle_desc type2 btn_noti_ly">연령차별
									금지에 관한 법률</button>
								<div class="inner">
									<strong class="tit_law">연령차별금지 주요내용</strong>
									<p class="desc_law">
										채용공고에 합리적인 이유 없이 “OO세 이하”, “19OO년 이후 출생자”, “20OO년 졸업자”, “대학 졸업
										후 2년 이내” 등 직 · 간접적인 연령 제한을 할 수 없게 되었습니다. 모집 · 채용에서 <strong>불합리한
											연령 제한 시</strong> 고용상 연령차별 금지 및 고령자 고용촉진에 관한 법률 위반에 따른 <strong
											class="emph_txt">500만원</strong> 이하의 벌금이 부과될 수 있습니다.
									</p>
									<div class="tblWrap tblRow">
										<table>
											<caption class="blind">성차별금지 남녀고용평등에 관한 법률</caption>
											<colgroup>
												<col style="width: 140px">
												<col style="">
											</colgroup>
											<tbody>
												<tr>
													<th scope="row">관련법령</th>
													<td>고용상 연령차별 금지 및 고령자 고용촉진에 관한 법률<br> 제 4조의 4 제1항
														제1호의 의거 근로자를 모집하거나 채용 시 합리적인 이유 없이 연령을 이유로 차별할 수 없음<br>
														<br> &lt; 차별 시 500만원 이하 벌금 &gt;<br> &lt; 시정명령
														불이행 시 3천만원 이하의 과태료 부과 &gt;<br>
													</td>
												</tr>
												<tr>
													<th scope="row">차별사례</th>
													<td>지원자의 나이를 제한하거나 특정 연령층을 선호하는경우</td>
												</tr>
												<tr>
													<th scope="row">차별로<br> 보지않는 사례
													</th>
													<td>직무 성질상 특정 연령기준이 불가피한 경우 (진정직업자격)<br> - 연극 ·
														영화에서 청년 역할의 수행을 위한 연령 제한 등<br> <br> 근속기간의 차이를
														고려하여 임금이나 임금 외의 금품과 복리후생에서 합리적인 차등을 두는 경우<br> <br>
														법률 등에 근거한 정년의 설정<br> <br> 이 법이나 다른 법률에 따라 특정
														연령집단의 고용유지 · 촉진을 위한 지원초치를 하는 경우<br>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- 채용절차 -->
		<section id="frmHiring" class="step_recruit">
			<div class="frm_header">
				<h2 class="tit_step">채용절차</h2>
				<p class="subhead">채용절차는 어떻게 되나요?</p>
			</div>
			<div class="frm_body frm_hiring">
				<div class="items" id="jobCategory">
					<div class="area_tit">
						<strong class="tit">공고 대표 직무</strong> <em class="required">필수</em>
						<!-- 툴팁 -->
						<div class="toolTipWrap over">
							<button type="button">
								<span class="blind">도움말</span>
							</button>
							<div class="toolTip">
								<span class="tail tail_top_center"></span>
								<div class="tooltipCont">
									<p class="txt">선택한 값에 따라 직종/직업 섹션 페이지에 노출되며, 구직자가 해당 키워드로
										검색시 공고가 노출됩니다.</p>
								</div>
							</div>
						</div>
					</div>
					<div class="area_data">
						<div class="selected_item">
							<p class="txt_placeholder">대표 직종/직업을 입력해주세요.</p>
							<button type="button" class="btn_add" data-target="layer_add_job">수정·추가하기</button>
							<button type="button" class="btn_reset">초기화</button>
						</div>
						<!-- 직종/직업 선택 레이어 -->
						<div class="wrap_layer">
							<div class="layer_frm layer_add_job">
								<div class="area_keyword">
									<div class="wrap_search" id="job_category_search_list">
										<input type="text" id="" class="inpTypo sizeL inp_keyword"
											title="직종명" placeholder="직종명을 입력하세요">
										<button type="button" class="btn_del_keyword btnDeleteSearch"
											data-target-input=".inp_keyword">키워드 삭제</button>
										<div class="layer_suggestion">
											<div class="area_scroll">
												<p class="txt_noti">일치하는 직종이 없습니다. 다시 검색해주세요.</p>
												<ul class="list_check">
												</ul>
											</div>
											<div class="util_search">
												<button type="button" class="btn_close">닫기</button>
											</div>
										</div>
									</div>
								</div>
								<div class="area_category_select" id="job_category_all_list">
									<div class="depth1">
										<div class="area_scroll">
											<ul class="list_category"></ul>
										</div>
									</div>
									<div class="depth2" style="display: none;">
										<div class="area_scroll">
											<ul class="list_category"></ul>
										</div>
									</div>
									<div class="depth_check">
										<div class="area_scroll">
											<p class="txt_noti">← 직종을 선택해주세요</p>
											<ul class="list_check"></ul>
										</div>
									</div>
								</div>
								<div class="area_btn">
									<button type="button"
										class="btnSizeL colorWhite btn_cancel close_layer"
										data-layer_type="jobCategory">취소</button>
									<button type="button" class="btnSizeL colorBlue btn_complete">확인</button>
								</div>
							</div>
						</div>
						<em class="msgInvalid" style="display: none;">직종/직무를 입력해주세요.</em>
					</div>
				</div>
				<div class="items" id="applyPeriod">
					<div class="area_tit">
						<strong class="tit">지원 접수 기간</strong> <em class="required">필수</em>
					</div>
					<div class="area_data">
						<div class="row">
							<div class="btnGroup apply_period">
								<span class="inBtn"><button type="button"
										class="btnSizeL colorWhite">1개월</button></span>
								<!-- [dev] 클릭 시 클래스 on 추가 -->
								<span class="inBtn on"><button type="button"
										class="btnSizeL colorWhite">2개월</button></span>
							</div>
							<!-- 툴팁 -->
							<div class="toolTipWrap over">
								<button type="button">
									<span class="blind">도움말</span>
								</button>
								<div class="toolTip">
									<span class="tail tail_top_left"></span>
									<div class="tooltipCont">
										<p class="txt">블라인드, 자사양식 공고는 MUST 서비스 이용만료일까지 공고진행이
											가능합니다.</p>
									</div>
								</div>
							</div>
						</div>
						<div class="row apply_datetime">
							<input type="text" id="start_date"
								class="inpTypo sizeL type_calendar" title="접수 시작일"
								style="cursor: pointer;" readonly="" autocomplete="off">
							<div class="inpSel sizeL">
								<select id="start_hour" title="접수 시작 시간">
									<option value="0">0시</option>
									<option value="1">1시</option>
									<option value="2">2시</option>
									<option value="3">3시</option>
									<option value="4">4시</option>
									<option value="5">5시</option>
									<option value="6">6시</option>
									<option value="7">7시</option>
									<option value="8">8시</option>
									<option value="9">9시</option>
									<option value="10">10시</option>
									<option value="11">11시</option>
									<option value="12">12시</option>
									<option value="13">13시</option>
									<option value="14">14시</option>
									<option value="15">15시</option>
									<option value="16">16시</option>
									<option value="17">17시</option>
									<option value="18">18시</option>
									<option value="19">19시</option>
									<option value="20">20시</option>
									<option value="21">21시</option>
									<option value="22">22시</option>
									<option value="23">23시</option>
								</select>
							</div>
							~ <input type="text" id="end_date"
								class="inpTypo sizeL type_calendar" title="접수 마감일"
								style="cursor: pointer;" readonly="" autocomplete="off">
							<div class="inpSel sizeL">
								<select id="end_hour" title="접수 마감 시간">
									<option value="1">1시</option>
									<option value="2">2시</option>
									<option value="3">3시</option>
									<option value="4">4시</option>
									<option value="5">5시</option>
									<option value="6">6시</option>
									<option value="7">7시</option>
									<option value="8">8시</option>
									<option value="9">9시</option>
									<option value="10">10시</option>
									<option value="11">11시</option>
									<option value="12">12시</option>
									<option value="13">13시</option>
									<option value="14">14시</option>
									<option value="15">15시</option>
									<option value="16">16시</option>
									<option value="17">17시</option>
									<option value="18">18시</option>
									<option value="19">19시</option>
									<option value="20">20시</option>
									<option value="21">21시</option>
									<option value="22">22시</option>
									<option value="23">23시</option>
									<option value="24">24시</option>
								</select>
							</div>
							<div class="inpSel sizeL type_close">
								<select id="close_type" title="마감일 지정">
									<option value="0">마감일지정</option>
									<option value="1">채용시 마감</option>
									<option value="2">상시채용</option>
								</select>
							</div>
						</div>
						<em class="msgInvalid" style="display: none;">공고 마감일을 시작일 보다
							미래로 지정해주세요.</em>
					</div>
				</div>
				<div class="items" id="applyMethod">
					<div class="area_tit">
						<strong class="tit">지원 접수 방법</strong> <em class="required">필수</em>
					</div>
					<div class="area_data" id="af_select_apply_method">
						<ul class="list_checkbox">
							<li><input type="checkbox" id="af_saram" value="af_saram"
								data-target="recruit_law"><label for="af_saram"
								class="lbl">사람인접수</label></li>
							<li><input type="checkbox" id="aw_homepage"
								value="aw_homepage" data-target="homepage"><label
								for="aw_homepage" class="lbl">홈페이지</label></li>
							<li><input type="checkbox" id="aw_post" value="aw_post"><label
								for="aw_post" class="lbl">우편</label></li>
							<li><input type="checkbox" id="aw_nae" value="aw_nae"><label
								for="aw_nae" class="lbl">방문</label></li>
							<li><input type="checkbox" id="aw_phone" value="aw_phone"><label
								for="aw_phone" class="lbl">전화</label></li>
							<li><input type="checkbox" id="aw_fax" value="aw_fax"
								data-target="fax"><label for="aw_fax" class="lbl">FAX</label></li>
						</ul>
						<em class="msgInvalid" style="display: none;">접수방법을 선택해주세요.</em>
						<div class="optional_item">
							<dl class="recruit_law">
								<dt>사람인접수</dt>
								<dd>
									<p class="txt_agree">
										“
										<button type="button" data-uilayer-btn="recruit_law">채용절차법
											준수를 위한 안심보장 시스템</button>
										”을 사람인이 관리하도록 위임하시겠습니까?
									</p>
									<span class="inpChk sizeM chk_agree"><input
										type="checkbox" id="recruit_rule_agree"><label
										class="lbl" for="recruit_rule_agree">동의합니다</label></span>
								</dd>
							</dl>
							<dl class="type_input homepage" style="display: none;">
								<dt>홈페이지 주소</dt>
								<dd>
									<input type="text" id="aw_homepage_contents"
										class="inpTypo sizeS" title="홈페이지 주소" value=""> <em
										class="msgInvalid" style="display: none;">홈페이지 주소를
										입력해주세요.</em>
								</dd>
							</dl>
							<dl class="type_input fax" style="display: none;">
								<dt>FAX 번호</dt>
								<dd class="fax">
									<input type="text" id="fax1" name="fax1"
										class="inpTypo sizeS _filter" title="FAX 첫 번째 자리"
										data-filter="numeric" maxlength="3" value="">- <input
										type="text" id="fax2" name="fax2"
										class="inpTypo sizeS _filter" title="FAX 두 번째 자리"
										data-filter="numeric" maxlength="4" value="">- <input
										type="text" id="fax3" name="fax3"
										class="inpTypo sizeS _filter" title="FAX 세 번째 자리"
										data-filter="numeric" maxlength="4" value=""> <em
										class="msgInvalid" style="display: none;">접수방법이 팩스인 경우,
										팩스번호를 입력하셔야 합니다.</em>
								</dd>
							</dl>
						</div>
					</div>
				</div>
				<div class="items" id="applyForm">
					<div class="area_tit">
						<strong class="tit">지원서 양식</strong> <em class="required">필수</em>
					</div>
					<div class="area_data">
						<!-- 사람인 이력서 & 자유양식 선택 -->
						<div class="apply_form">
							<div class="inpSel sizeL form_type" id="af_select_form">
								<select id="select_apply_form" title="지원서 양식">
									<option value="none">지원서 선택</option>
									<option value="online">사람인 이력서</option>
									<option value="company">첨부양식</option>
									<option value="free">자유양식</option>
								</select>
							</div>
							<div class="selected_item" style="display: none;">
								<!-- 선택되면 selected 추가 -->
								<p class="txt_placeholder">파일첨부 또는 URL을 입력해주세요.</p>
								<ul class="list_selected_item type_file">
									<li><span class="txt"></span>
										<button type="button" class="btn_del">삭제</button></li>
								</ul>
								<button type="button" class="btn_add"
									data-uilayer-btn="upload_file">추가하기</button>
							</div>
							<em class="msgInvalid" style="display: none;"></em>
						</div>
						<div
							class="toolTipWrap tooltip_apply_form applyCompanyInductionLayer">
							<div class="toolTip">
								<!-- [dev] 화면 노출 시 클래스 on 추가 -->
								<span class="tail tail_left_top"></span>
								<div class="toolTipCont">
									<p class="txt_head">
										<span>입사지원 양식, 아직도 파일로 첨부하세요?</span><br> <strong>MUST
											자사양식 공고등록을 이용해보세요.</strong>
									</p>
									<p>
										<b>우리 회사만의 양식으로</b> 자유롭게 <b>커스터마이징</b>하고, <b>온라인으로 지원</b>받아 <br>훨씬
										편리하게 심사할 수 있어요!
									</p>
									<p>자사양식 공고는 MUST 스탠다드 상품 구매시 즉시 이용 가능합니다.</p>
									<div class="info_product">
										<strong class="name">MUST 스탠다드 <span class="price">3,300원/1일</span></strong>
										<ul class="list_benefit">
											<li>자사양식 / 블라인드 채용 제공</li>
											<li>온라인 협업평가 가능</li>
											<li>지원자 분석 AI리포트, 합격자 연봉분석 제공</li>
										</ul>
									</div>
									<div class="area_btn">
										<button type="button" class="btnSizeL colorBlue btnRegister">자사양식으로
											공고 등록하기</button>
									</div>
								</div>
								<button type="button" class="btnClose">
									<span class="blind">닫기</span>
								</button>
							</div>
						</div>
					</div>
				</div>
				<div class="items" id="hiringProcedure">
					<div class="area_tit">
						<strong class="tit">전형절차</strong> <em class="required">필수</em>
					</div>
					<div class="area_data type_txt">
						<div class="step_recommend">
							<strong class="tit rhp_recommend">추천</strong>
							<button type="button"
								class="btn_recommend rhp_recommend ga_data_layer"
								data-ga_data_layer="ga_lead|pc_rec_hiring_process|btn_recommend_01">인적성
								형</button>
							<div class="aside">
								<span class="inpChk sizeM chk_open"><input
									type="checkbox" id="rhp_open_status"><label class="lbl"
									for="rhp_open_status">비공개</label></span>
								<!-- 툴팁 -->
								<div class="toolTipWrap over">
									<button type="button">
										<span class="blind">도움말</span>
									</button>
									<div class="toolTip">
										<span class="tail tail_top_center"></span>
										<div class="tooltipCont">
											<p class="txt">- 공고뷰에서 전형절차를 비공개하려면, 비공개에 체크해주세요.</p>
											<p class="txt">- 지원자관리에서 전형절차별로 지원자를 관리할 수 있습니다.</p>
											<p class="txt">- 전형에 지원자가 있을 경우, 전형삭제가 불가합니다.</p>
										</div>
									</div>
								</div>
								<button type="button"
									class="btn_reset rhp_recommend ga_data_layer"
									data-ga_data_layer="ga_lead|pc_rec_hiring_process|btn_reset">초기화</button>
							</div>
						</div>
						<ol class="list_process">

							<li class="btn_step " id="hiring_detail_0" data-idx="0"><input
								type="hidden" class="hiring_process_seq"
								name="hiring_process_seq_0" value=""> <input
								type="hidden" class="hiring_process_apply_cnt"
								name="hiring_process_apply_cnt_0" value="0"> <em
								class="badge_step">서류</em>
								<div class="summary">
									<div class="tit_hiring">서류전형</div>
									<div class="txt_period"></div>
								</div>
								<button type="button" class="btn_view_hiring" title="전형절차 상세입력">
									<span class="blind">전형절차 상세입력 보기</span>
								</button>
								<div class="fulldata">
									<div class="optional_item">
										<dl class="type_input">
											<dt>전형절차명</dt>
											<dd>
												<input type="text" class="inpTypo sizeL process_type_nm"
													name="process_type_nm_0" value="서류전형" title="전형절차명"
													placeholder="전형명을 입력해주세요.(최대30자)" maxlength="30"> <em
													class="msgInvalid" style="display: none;">전형명을 입력해주세요.</em>
											</dd>
										</dl>
										<dl style="display: none;">
											<dt>전형유형</dt>
											<dd>
												<span class="inpRdo sizeM"><input type="radio"
													name="process_type_cd_0" id="process_type_cd1_0"
													value="hp001" checked=""><label class="lbl"
													for="process_type_cd1_0">서류</label></span> <span
													class="inpRdo sizeM"><input type="radio"
													name="process_type_cd_0" id="process_type_cd2_0"
													value="hp002"><label class="lbl"
													for="process_type_cd2_0">면접</label></span> <span
													class="inpRdo sizeM"><input type="radio"
													name="process_type_cd_0" id="process_type_cd3_0"
													value="hp003"><label class="lbl"
													for="process_type_cd3_0">인적성</label></span> <span
													class="inpRdo sizeM"><input type="radio"
													name="process_type_cd_0" id="process_type_cd4_0"
													value="hp004"><label class="lbl"
													for="process_type_cd4_0">레퍼런스</label></span> <span
													class="inpRdo sizeM"><input type="radio"
													name="process_type_cd_0" id="process_type_cd5_0"
													value="hp006"><label class="lbl"
													for="process_type_cd5_0">기타</label></span> <span
													class="inpRdo sizeM" style="display: none;"><input
													type="radio" name="process_type_cd_0"
													id="process_type_cd6_0" value="hp005"><label
													class="lbl" for="process_type_cd6_0">합격</label></span>
											</dd>
										</dl>
										<dl class="type_input">
											<dt>
												<span class="inpChk"><input type="checkbox"
													class="chk_date_reg" name="date_reg_0" id="date_reg_0"
													value="y"><label class="lbl" for="date_reg_0">전형기간</label></span>
											</dt>
											<dd class="hiring_period">
												<input type="text" name="start_date_0" id="start_date_0"
													class="inpTypo sizeL type_calendar hiring_start_date"
													title="전형 시작일" value="" data-help_target="apply_period"
													readonly="" autocomplete="off" disabled=""
													style="cursor: pointer;"> ~ <input type="text"
													name="end_date_0" id="end_date_0"
													class="inpTypo sizeL type_calendar hiring_end_date"
													title="전형 마감일" value="" data-help_target="apply_period"
													readonly="" autocomplete="off" disabled=""
													style="cursor: pointer;">
											</dd>
										</dl>
										<button type="button"
											class="btnSizeL colorBlack btn_set_hiring">입력완료</button>
									</div>
								</div>
								<div class="box_btn" style="display: none;">
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
									<button type="button"
										class="btn_order btn_delete ga_data_layer" title="전형 삭제"
										data-ga_data_layer="ga_lead|pc_rec_hiring_process|btn_delete">
										<span class="blind">전형 삭제</span>
									</button>
								</div></li>



							<li class="btn_step " id="hiring_detail_1" data-idx="1"><input
								type="hidden" class="hiring_process_seq"
								name="hiring_process_seq_1" value=""> <input
								type="hidden" class="hiring_process_apply_cnt"
								name="hiring_process_apply_cnt_1" value="0"> <em
								class="badge_step">면접</em>
								<div class="summary">
									<div class="tit_hiring">1차면접</div>
									<div class="txt_period"></div>
								</div>
								<button type="button" class="btn_view_hiring" title="전형절차 상세입력">
									<span class="blind">전형절차 상세입력 보기</span>
								</button>
								<div class="fulldata">
									<div class="optional_item">
										<dl class="type_input">
											<dt>전형절차명</dt>
											<dd>
												<input type="text" class="inpTypo sizeL process_type_nm"
													name="process_type_nm_1" value="1차면접" title="전형절차명"
													placeholder="전형명을 입력해주세요.(최대30자)" maxlength="30"> <em
													class="msgInvalid" style="display: none;">전형명을 입력해주세요.</em>
											</dd>
										</dl>
										<dl style="display: block;">
											<dt>전형유형</dt>
											<dd>
												<span class="inpRdo sizeM"><input type="radio"
													name="process_type_cd_1" id="process_type_cd1_1"
													value="hp001" checked=""><label class="lbl"
													for="process_type_cd1_1">서류</label></span> <span
													class="inpRdo sizeM"><input type="radio"
													name="process_type_cd_1" id="process_type_cd2_1"
													value="hp002"><label class="lbl"
													for="process_type_cd2_1">면접</label></span> <span
													class="inpRdo sizeM"><input type="radio"
													name="process_type_cd_1" id="process_type_cd3_1"
													value="hp003"><label class="lbl"
													for="process_type_cd3_1">인적성</label></span> <span
													class="inpRdo sizeM"><input type="radio"
													name="process_type_cd_1" id="process_type_cd4_1"
													value="hp004"><label class="lbl"
													for="process_type_cd4_1">레퍼런스</label></span> <span
													class="inpRdo sizeM"><input type="radio"
													name="process_type_cd_1" id="process_type_cd5_1"
													value="hp006"><label class="lbl"
													for="process_type_cd5_1">기타</label></span> <span
													class="inpRdo sizeM" style="display: none;"><input
													type="radio" name="process_type_cd_1"
													id="process_type_cd6_1" value="hp005"><label
													class="lbl" for="process_type_cd6_1">합격</label></span>
											</dd>
										</dl>
										<dl class="type_input">
											<dt>
												<span class="inpChk"><input type="checkbox"
													class="chk_date_reg" name="date_reg_1" id="date_reg_1"
													value="y"><label class="lbl" for="date_reg_1">전형기간</label></span>
											</dt>
											<dd class="hiring_period">
												<input type="text" name="start_date_1" id="start_date_1"
													class="inpTypo sizeL type_calendar hiring_start_date"
													title="전형 시작일" value="" data-help_target="apply_period"
													readonly="" autocomplete="off" disabled=""
													style="cursor: pointer;"> ~ <input type="text"
													name="end_date_1" id="end_date_1"
													class="inpTypo sizeL type_calendar hiring_end_date"
													title="전형 마감일" value="" data-help_target="apply_period"
													readonly="" autocomplete="off" disabled=""
													style="cursor: pointer;">
											</dd>
										</dl>
										<button type="button"
											class="btnSizeL colorBlack btn_set_hiring">입력완료</button>
									</div>
								</div>
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
									<button type="button"
										class="btn_order btn_delete ga_data_layer" title="전형 삭제"
										data-ga_data_layer="ga_lead|pc_rec_hiring_process|btn_delete">
										<span class="blind">전형 삭제</span>
									</button>
								</div></li>



							<li class="btn_step " id="hiring_detail_2" data-idx="2"><input
								type="hidden" class="hiring_process_seq"
								name="hiring_process_seq_2" value=""> <input
								type="hidden" class="hiring_process_apply_cnt"
								name="hiring_process_apply_cnt_2" value="0"> <em
								class="badge_step">면접</em>
								<div class="summary">
									<div class="tit_hiring">2차면접</div>
									<div class="txt_period"></div>
								</div>
								<button type="button" class="btn_view_hiring" title="전형절차 상세입력">
									<span class="blind">전형절차 상세입력 보기</span>
								</button>
								<div class="fulldata">
									<div class="optional_item">
										<dl class="type_input">
											<dt>전형절차명</dt>
											<dd>
												<input type="text" class="inpTypo sizeL process_type_nm"
													name="process_type_nm_2" value="2차면접" title="전형절차명"
													placeholder="전형명을 입력해주세요.(최대30자)" maxlength="30"> <em
													class="msgInvalid" style="display: none;">전형명을 입력해주세요.</em>
											</dd>
										</dl>
										<dl style="display: block;">
											<dt>전형유형</dt>
											<dd>
												<span class="inpRdo sizeM"><input type="radio"
													name="process_type_cd_2" id="process_type_cd1_2"
													value="hp001" checked=""><label class="lbl"
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
												<input type="text" name="start_date_2" id="start_date_2"
													class="inpTypo sizeL type_calendar hiring_start_date"
													title="전형 시작일" value="" data-help_target="apply_period"
													readonly="" autocomplete="off" disabled=""
													style="cursor: pointer;"> ~ <input type="text"
													name="end_date_2" id="end_date_2"
													class="inpTypo sizeL type_calendar hiring_end_date"
													title="전형 마감일" value="" data-help_target="apply_period"
													readonly="" autocomplete="off" disabled=""
													style="cursor: pointer;">
											</dd>
										</dl>
										<button type="button"
											class="btnSizeL colorBlack btn_set_hiring">입력완료</button>
									</div>
								</div>
								<div class="box_btn" style="display: block;">
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
									<button type="button"
										class="btn_order btn_delete ga_data_layer" title="전형 삭제"
										data-ga_data_layer="ga_lead|pc_rec_hiring_process|btn_delete">
										<span class="blind">전형 삭제</span>
									</button>
								</div></li>



							<li class="add_step"><button type="button"
									class="btn_add_step" data-key="4">+ 전형절차 추가</button></li>
							<li class="btn_step " id="hiring_detail_3" data-idx="3"><input
								type="hidden" class="hiring_process_seq"
								name="hiring_process_seq_3" value=""> <input
								type="hidden" class="hiring_process_apply_cnt"
								name="hiring_process_apply_cnt_3" value="0"> <em
								class="badge_step">합격</em>
								<div class="summary">
									<div class="tit_hiring">최종합격</div>
									<div class="txt_period"></div>
								</div>
								<button type="button" class="btn_view_hiring" title="전형절차 상세입력">
									<span class="blind">전형절차 상세입력 보기</span>
								</button>
								<div class="fulldata">
									<div class="optional_item">
										<dl class="type_input">
											<dt>전형절차명</dt>
											<dd>
												<input type="text" class="inpTypo sizeL process_type_nm"
													name="process_type_nm_3" value="최종합격" title="전형절차명"
													placeholder="전형명을 입력해주세요.(최대30자)" maxlength="30"> <em
													class="msgInvalid" style="display: none;">전형명을 입력해주세요.</em>
											</dd>
										</dl>
										<dl style="display: none;">
											<dt>전형유형</dt>
											<dd>
												<span class="inpRdo sizeM"><input type="radio"
													name="process_type_cd_3" id="process_type_cd1_3"
													value="hp001" checked=""><label class="lbl"
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
												<input type="text" name="start_date_3" id="start_date_3"
													class="inpTypo sizeL type_calendar hiring_start_date"
													title="전형 시작일" value="" data-help_target="apply_period"
													readonly="" autocomplete="off" disabled=""
													style="cursor: pointer;"> ~ <input type="text"
													name="end_date_3" id="end_date_3"
													class="inpTypo sizeL type_calendar hiring_end_date"
													title="전형 마감일" value="" data-help_target="apply_period"
													readonly="" autocomplete="off" disabled=""
													style="cursor: pointer;">
											</dd>
										</dl>
										<button type="button"
											class="btnSizeL colorBlack btn_set_hiring">입력완료</button>
									</div>
								</div>
								<div class="box_btn" style="display: none;">
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
									<button type="button"
										class="btn_order btn_delete ga_data_layer" title="전형 삭제"
										data-ga_data_layer="ga_lead|pc_rec_hiring_process|btn_delete">
										<span class="blind">전형 삭제</span>
									</button>
								</div></li>

						</ol>
					</div>
				</div>
				<div class="items" id="requiredDocuments">
					<div class="area_tit">
						<strong class="tit">제출서류</strong>
					</div>
					<div class="area_data">
						<ul class="list_checkbox tabsize4" id="required_documents_list">
							<li><input type="checkbox" id="file_svq"
								data-target="file_svq"><label for="file_svq" class="lbl">사람인
									인적성검사</label></li>
							<li><input type="checkbox" id="file_interview"
								data-target="file_interview"><label for="file_interview"
								class="lbl">사전인터뷰</label></li>
							<li><input type="checkbox" id="file_reference"
								data-target="file_reference"><label for="file_reference"
								class="lbl">참고자료</label></li>
							<li><input type="checkbox" id="file_direct"
								data-target="file_direct"><label for="file_direct"
								class="lbl">직접입력</label></li>
						</ul>
						<div class="optional_item" style="display: none;">
							<dl class="file_svq" style="display: none;">
								<dt>사람인 인·적성</dt>
								<dd>
									<p>사람인 인·적성 검사 결과가 첨부된 이력서를 선호합니다.</p>
									<ul class="txt_noti_svq">
										<li>- 사람인에서 진행하는 무료 인적성 검사 결과를 받아보실 수 있습니다.</li>
										<li>- 해당 지원자의 채용을 결정하는데에 참고자료롤 활용하실 수 있습니다.</li>
									</ul>
									<%-- <a href="http://www.saraminimage.co.kr/helpdesk/info_sri.pdf"
									target="_blank" class="link_svq" title="새창으로 이동">인적성검사 서비스
									소개 &gt;</a> --%>
								</dd>
							</dl>
							<%-- <dl class="file_interview" style="display: none;">
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
						</dl> --%>
							<%-- 사전 인터뷰 끝 --%>

							<%-- <dl class="file_reference" id="reference" style="display: none;">
							<dt>참고자료</dt>
							<dd>
								<p>응시원서, 회사브로슈어, 제출서류 양식 등, 입사지원시 필요한 참고자료를 업로드하시면 됩니다.</p>
								<div class="selected_item">
									<p class="txt_placeholder">파일첨부 또는 URL을 입력해주세요.</p>
									<ul class="list_selected_item type_file"></ul>
									<button type="button" class="btn_add"
										data-uilayer-btn="upload_reference">추가하기</button>
								</div>
							</dd>
						</dl> --%>
							<%-- 참고 자료 - 응시원서, 회사브로셔 등등 끝 --%>

							<%-- 포트폴리오 등등 제출 서류 작성하는 곳 --%>
							<%-- <dl class="file_direct" style="display: none;">
							<dt>직접입력</dt>
							<dd>
								<textarea id="required_documents" class="inpTarea" cols="80"
									rows="4" placeholder="예시) 포트폴리오를 제출해주세요." title="제출서류 직접입력"
									maxlength="300"></textarea>
							</dd>
						</dl> --%>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- 템플릿 설정 -->

		<section id="frmTemplate" class="step_recruit">
			<input type="hidden" id="titleReloadStop" value="n">
			<div class="frm_header">
				<h2 class="tit_step">템플릿 설정</h2>
				<p class="subhead">지금까지 입력한 상세요강을 템플릿에 반영해 보세요</p>
			</div>
			<div class="frm_body frm_template">
				<div class="items">
					<div class="area_tit">
						<strong class="tit">채용제목</strong> <em class="required">필수</em>
						<div class="toolTipWrap over">
							<button type="button">
								<span class="blind">도움말</span>
							</button>
							<div class="toolTip">
								<span class="tail tail_top_center"></span>
								<div class="tooltipCont">
									<p class="desc_tooltip">내부 공고관리 규정에 위배되는 채용제목을 입력 시, 별도 안내
										없이 수정 또는 변경될 수 있습니다.</p>
								</div>
							</div>
						</div>
					</div>
					<div class="area_data" id="recruit_title">
						<div class="template_title">
							<input type="text" class="inpTypo sizeL" id="title"
								title="채용제목 입력"
								placeholder="채용제목에 모집 내용을 잘 기재할 수록 더 적합한 인재를 만날 수 있습니다.">
							<div class="toolTipWrap">
								<div class="toolTip">
									<span class="tail tail_bottom_left"></span>
									<div class="tooltipCont">
										<strong>구직자를 사로잡는 채용공고 제목 작성법 (예시)</strong>
										<p class="txt">
											- 경영기획실 IR 담당 경력사원(전사회계 우대)<br> - UX 디자인팀 일러스트레이터 경력자 모집<br>
											- 건설 현장직 현장사무소 소장급 모집
										</p>
									</div>
								</div>
							</div>
						</div>
						<em class="msgInvalid _invalid_msg" style="display: none;"></em>
						<div class="optional_item" id="title_auto_complete_area"
							style="display: none;">
							<strong class="tit_optional">제목추천 서비스</strong>
							<p class="desc_optional">입력하신 내용을 조합해서, 채용제목을 추천해드립니다.</p>
							<ul class="list_optional tit_auto_complete">
								<!-- 제목 자동완성 -->
							</ul>
							<button type="button" class="btn_push _refresh"
								style="display: none;">추천목록 다시뽑기</button>
						</div>
						<button type="button" class="btn_template" id="template_insert"
							style="cursor: pointer;">템플릿 반영하기</button>
					</div>
				</div>
				<div class="subsection" id="template">
					<div class="items">
						<div class="area_data">

							<div class="temp_area">
								<ul class="tab_temp">
									<li class="on"><button type="button"
											class="btn_temp templateSection ga_data_layer"
											data-ga_data_layer="ga_lead|pc_recruit_editor|tap_design"
											data-type="template">디자인 템플릿</button> <em
										class="badge_recomm"><span class="blind">추천</span></em></li>
									<li><button type="button"
											class="btn_temp templateSection ga_data_layer"
											data-ga_data_layer="ga_lead|pc_recruit_editor|tap_direct"
											data-type="html">직접입력 ・ HTML</button></li>
								</ul>
								<div class="cont_temp">
									<input type="text" id="removeSelectionInEditor"
										style="width: 0px; height: 0px; opacity: 0;">
									<div class="temp_cont">
										<div class="temp design_temp validateRequired"
											style="display: block" id="templateTools">
											<strong class="temp_tit">템플릿</strong>
											<ul class="list_temp">
												<li>
													<button type="button" class="btn_list ga_data_layer"
														data-ga_data_layer="ga_lead|pc_recruit_editor|btn_temple|1"
														data-template-num="1" data-template-type="sample">
														<img
															src="//www.saraminimage.co.kr/sri/vix/template/editor_thumb1.png"
															alt="인재상 텍스트형">
													</button>
												</li>
												<li>
													<button type="button" class="btn_list ga_data_layer"
														data-ga_data_layer="ga_lead|pc_recruit_editor|btn_temple|2"
														data-template-num="2" data-template-type="sample">
														<img
															src="//www.saraminimage.co.kr/sri/vix/template/editor_thumb2.png"
															alt="인재상 소통/협력">
													</button>
												</li>
												<li>
													<button type="button" class="btn_list ga_data_layer"
														data-ga_data_layer="ga_lead|pc_recruit_editor|btn_temple|3"
														data-template-num="3" data-template-type="sample">
														<img
															src="//www.saraminimage.co.kr/sri/vix/template/editor_thumb3.png"
															alt="인재상 전문">
													</button>
												</li>
												<li>
													<button type="button" class="btn_list ga_data_layer"
														data-ga_data_layer="ga_lead|pc_recruit_editor|btn_temple|4"
														data-template-num="4" data-template-type="sample">
														<img
															src="//www.saraminimage.co.kr/sri/vix/template/editor_thumb4.png"
															alt="인재상 창의/혁신">
													</button>
												</li>
												<li>
													<button type="button" class="btn_list ga_data_layer"
														data-ga_data_layer="ga_lead|pc_recruit_editor|btn_temple|5"
														data-template-num="5" data-template-type="sample">
														<img
															src="//www.saraminimage.co.kr/sri/vix/template/editor_thumb5.png"
															alt="인재상 글로벌">
													</button>
												</li>
												<li>
													<button type="button"
														class="btn_list btn_more ga_data_layer"
														data-ga_data_layer="ga_lead|pc_recruit_editor|btn_temple|more">더보기</button>
												</li>
											</ul>
											<strong class="temp_tit">테마색</strong>
											<ul class="list_theme">
												<li class="on"><button type="button"
														class="btn_theme blue ga_data_layer"
														data-ga_data_layer="ga_lead|pc_recruit_editor|btn_color|1"
														data-color="blue">
														<span class="blind">블루</span>
													</button></li>
												<li><button type="button"
														class="btn_theme skyblue ga_data_layer"
														data-ga_data_layer="ga_lead|pc_recruit_editor|btn_color|2"
														data-color="skyblue">
														<span class="blind">아쿠아</span>
													</button></li>
												<li><button type="button"
														class="btn_theme purple ga_data_layer"
														data-ga_data_layer="ga_lead|pc_recruit_editor|btn_color|3"
														data-color="purple">
														<span class="blind">퍼플</span>
													</button></li>
												<li><button type="button"
														class="btn_theme navy ga_data_layer"
														data-ga_data_layer="ga_lead|pc_recruit_editor|btn_color|4"
														data-color="navy">
														<span class="blind">네이비</span>
													</button></li>
												<li><button type="button"
														class="btn_theme red ga_data_layer"
														data-ga_data_layer="ga_lead|pc_recruit_editor|btn_color|5"
														data-color="red">
														<span class="blind">레드</span>
													</button></li>
												<li><button type="button"
														class="btn_theme pink ga_data_layer"
														data-ga_data_layer="ga_lead|pc_recruit_editor|btn_color|6"
														data-color="pink">
														<span class="blind">핑크</span>
													</button></li>
												<li><button type="button"
														class="btn_theme orange ga_data_layer"
														data-ga_data_layer="ga_lead|pc_recruit_editor|btn_color|7"
														data-color="orange">
														<span class="blind">오렌지</span>
													</button></li>
												<li><button type="button"
														class="btn_theme green ga_data_layer"
														data-ga_data_layer="ga_lead|pc_recruit_editor|btn_color|8"
														data-color="green">
														<span class="blind">그린</span>
													</button></li>
											</ul>
											<strong class="temp_tit">아이콘</strong>
											<ul class="list_icon">
												<li><button type="button"
														class="btn_icon none ga_data_layer"
														data-ga_data_layer="ga_lead|pc_recruit_editor|btn_icon|1"
														data-icon="none">
														<span class="blind">아이콘 선택안함</span>
													</button></li>
												<li class="on"><button type="button"
														class="btn_icon check ga_data_layer"
														data-ga_data_layer="ga_lead|pc_recruit_editor|btn_icon|2"
														data-icon="check">
														<span class="blind">체크 아이콘</span>
													</button></li>
												<li><button type="button"
														class="btn_icon diamond ga_data_layer"
														data-ga_data_layer="ga_lead|pc_recruit_editor|btn_icon|3"
														data-icon="diamond">
														<span class="blind">다이아몬드 아이콘</span>
													</button></li>
												<li><button type="button"
														class="btn_icon arrow ga_data_layer"
														data-ga_data_layer="ga_lead|pc_recruit_editor|btn_icon|4"
														data-icon="arrow">
														<span class="blind">화살 아이콘</span>
													</button></li>
												<li><button type="button"
														class="btn_icon circle ga_data_layer"
														data-ga_data_layer="ga_lead|pc_recruit_editor|btn_icon|5"
														data-icon="circle">
														<span class="blind">원 아이콘</span>
													</button></li>
											</ul>
											<div class="item_temp">
												<strong class="temp_tit">소개글</strong> <span
													class="inpRdoSw sizeM"> <span class="inOption">
														<input type="radio" name="companyIntroFl"
														id="companyIntroFlY" value="y"><label
														class="lbl ga_data_layer"
														data-ga_data_layer="ga_lead|pc_recruit_editor|btn_introduce|on"
														for="companyIntroFlY">ON</label>
												</span> <span class="inOption"> <input type="radio"
														name="companyIntroFl" id="companyIntroFlN" value="n"><label
														class="lbl ga_data_layer"
														data-ga_data_layer="ga_lead|pc_recruit_editor|btn_introduce|off"
														for="companyIntroFlN">OFF</label>
												</span>
												</span>
											</div>
											<div class="item_temp">
												<strong class="temp_tit">전형절차</strong>
												<button type="button"
													class="btn_item openStepLayer ga_data_layer"
													data-ga_data_layer="ga_lead|pc_recruit_editor|btn_process">변경하기</button>
											</div>
											<div class="item_temp customItem">
												<strong class="temp_tit">항목</strong>
												<div class="toolTipWrap over">
													<button type="button">
														<span class="blind">도움말</span>
													</button>
													<div class="toolTip" style="top: 32px; left: -25px;">
														<span class="tail tail_top_left"></span>
														<div class="tooltipCont">
															<p class="desc_tooltip">항목을 최하단부터 추가/삭제 할 수 있습니다.</p>
														</div>
													</div>
												</div>
												<button type="button" class="btn_item delete ga_data_layer"
													data-ga_data_layer="ga_lead|pc_recruit_editor|btn_clause|delete">삭제</button>
												<button type="button" class="btn_item add ga_data_layer"
													data-ga_data_layer="ga_lead|pc_recruit_editor|btn_clause|add">추가</button>
											</div>
											<div class="item_temp">
												<strong class="temp_tit">초기화</strong>
												<div class="toolTipWrap over">
													<button type="button">
														<span class="blind">도움말</span>
													</button>
													<div class="toolTip" style="top: 32px; left: -25px;">
														<span class="tail tail_top_left"></span>
														<div class="tooltipCont">
															<p class="desc_tooltip">입력 내용과 템플릿을 모두 초기화합니다.</p>
														</div>
													</div>
												</div>
												<button type="button" class="btn_refresh ga_data_layer"
													id="btnRefresh"
													data-ga_data_layer="ga_lead|pc_recruit_editor|btn_reset">
													<span class="blind">새로고침</span>
												</button>
											</div>
											<!--        <button type="button" class="btn_preview ga_data_layer" data-preview-type="pc" data-ga_data_layer="ga_lead|pc_recruit_editor|btn_preview|pc">PC 화면 미리보기</button>-->
											<button type="button" class="btn_preview ga_data_layer"
												data-preview-type="mobile"
												data-ga_data_layer="ga_lead|pc_recruit_editor|btn_preview|m">화면
												미리보기</button>
											<div class="optimize_preview">
												<span class="inpChk sizeM"><input type="checkbox"
													id="mobileContentsCheckTool" class="mobileCheck"
													data-check-type="tool"><label
													class="lbl ga_data_layer" for="mobileContentsCheckTool"
													data-ga_data_layer="ga_lead|pc_recruit_editor|chk_optimation_m">모바일
														최적화 적용</label></span>
												<div class="toolTipWrap over">
													<button type="button">
														<span class="blind">도움말</span>
													</button>
													<div class="toolTip" style="bottom: 32px; left: -125px;">
														<span class="tail tail_bottom_center"></span>
														<div class="tooltipCont">
															<p class="txt mobileTooltip">모바일에서도 PC와 동일한 템플릿으로
																보여지고 싶다면 체크를 해제하세요.</p>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="temp html_temp" style="display: none"
											id="htmlTools">
											<div class="item_temp">
												<strong class="temp_tit">HTML 모드</strong> <span
													class="inpRdoSw sizeM"> <span class="inOption">
														<input type="radio" name="htmlMode" id="htmlOn" value="on"><label
														class="lbl" for="htmlOn">ON</label>
												</span> <span class="inOption"> <input type="radio"
														name="htmlMode" id="htmlOff" value="off" checked=""><label
														class="lbl" for="htmlOff">OFF</label>
												</span>
												</span>
											</div>
											<div class="item_temp">
												<strong class="temp_tit">모두 삭제하기</strong>
												<button type="button" class="btn_item"
													id="btnDeleteContents">삭제</button>
											</div>
											<p class="desc_temp">
												스크립트를<br> 잘못 수정하는 경우,<br> 페이지가 깨질 수 있습니다<br>
												미리보기를 통해<br> 반드시 확인하세요!
											</p>
											<!--        <button type="button" data-preview-type="pc" class="btn_preview">PC 화면 미리보기</button>-->
											<button type="button" data-preview-type="mobile"
												class="btn_preview">화면 미리보기</button>
										</div>
									</div>
									<div class="editor">
										<!-- WMG-24247 width값 삭제 -->
										<textarea cols="60" rows="39" id="contents" name="contents"
											style="width: 100%; height: 688px; display: none;"></textarea>
										<iframe frameborder="0" scrolling="no"
											style="width: 100%; height: 737px;"
											src="/js/smart_editor_2.0/SmartEditor2_designTemplate.html"></iframe>
									</div>
									<div class="editor_layer_dimmed" style=""
										id="templateIntroLayerDimmed"></div>
									<div class="modalWrap modal_editor" style="display: block;"
										id="templateIntroLayer">
										<div class="modalCont">
											<em class="badge_editor">디자인 템플릿</em> <strong
												class="tit_editor">구직자가 집중할 수 있도록<br>원하는 디자인으로
												손쉽게 꾸며보세요
											</strong>
											<ul class="list_editor">
												<li><strong class="tit_list img">이미지</strong>
													<p class="desc_list">
														상단 이미지를 자유롭게 바꿔보세요<br> 회사 이미지 업로드도 가능합니다
													</p></li>
												<li><strong class="tit_list color">색상</strong>
													<p class="desc_list">
														기업에 맞는 색상으로<br> 템플릿을 만들 수 있습니다
													</p></li>
												<li><strong class="tit_list autocomplete">자동완성</strong>
													<p class="desc_list">
														‘템플릿 반영하기’를 클릭하면<br> 앞에서 등록한 내용이 자동완성됩니다
													</p></li>
											</ul>
										</div>
										<div class="modalBtn">
											<button type="button" class="btnSizeL colorWhite"
												id="templateIntroStartBtn">시작하기</button>
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
				<div id="insatong" class="items">
					<input type="hidden" name="insatong_page_action" value="add"
						id="insatong_page_action">
					<div class="area_tit">
						<strong class="tit">인사통</strong>
					</div>
					<div class="area_data">
						<p class="desc_template">구직자가 궁금해하는 질문을 모았습니다. 답변을 등록해 지원율을
							높여보세요</p>
						<ul class="tabList" data-help_target="insatong">
							<li id="cm1301" class="select"><button type="button"
									class="inTab" data-target="tab1"
									onmousedown="try{n_trackEvent('recruit_add', 'insatong', 'tab', '1');}catch(e){}">
									<span>근무 환경</span>
								</button></li>
							<li id="cm1401"><button type="button" class="inTab"
									data-target="tab2"
									onmousedown="try{n_trackEvent('recruit_add', 'insatong', 'tab', '2');}catch(e){}">
									<span>복지/처우</span>
								</button></li>
							<li id="cm1501"><button type="button" class="inTab"
									data-target="tab3"
									onmousedown="try{n_trackEvent('recruit_add', 'insatong', 'tab', '3');}catch(e){}">
									<span>입사 전형</span>
								</button></li>
							<li id="cm1601"><button type="button" class="inTab"
									data-target="tab4"
									onmousedown="try{n_trackEvent('recruit_add', 'insatong', 'tab', '4');}catch(e){}">
									<span>지원 자격</span>
								</button></li>
							<li id="cmfree"><button type="button" class="inTab"
									data-target="tab5"
									onmousedown="try{n_trackEvent('recruit_add', 'insatong', 'tab', '5');}catch(e){}">
									<span>자유 질문</span>
								</button></li>
						</ul>
						<div class="wrap_cont">
							<div id="insatong_cont">
								<div class="cont_tab cont_prefix" id="section_cm1301"
									style="display: block;">
									<div class="title">
										<p>
											<strong>Q. 근무 환경</strong>은 어떤가요?
										</p>
									</div>
									<div class="question_prefix">
										<dl>
											<dt>내근 및 외근 비율</dt>
											<dd>
												<span class="radio " id="cm1301_1_1"><input
													name="cm1301_1" type="radio" data-question-code="cm1301_1"
													value="1_1"><label for="insa_1">내근 100%</label></span>
											</dd>

											<dd>
												<span class="radio " id="cm1301_1_2"><input
													name="cm1301_1" type="radio" data-question-code="cm1301_1"
													value="1_2"><label for="insa_1">외근 50%</label></span>
											</dd>

											<dd>
												<span class="radio " id="cm1301_1_3"><input
													name="cm1301_1" type="radio" data-question-code="cm1301_1"
													value="1_3"><label for="insa_1">대부분 외근</label></span>
											</dd>

											<dd class="btn_user">
												<span class="radio " id="cm1301_1_etc_cont"><input
													name="cm1301_1" data-question-code="cm1301_1_etc"
													type="radio" value="1_etc"> <label for="insa_48">직접
														입력</label> </span>
											</dd>
											<dd class="answer_user">
												<div class="inner">
													<label for="insa_user_11" class="blind">직접 입력</label> <input
														type="text" id="cm1301_1_etc" name="cm1301_1"
														class="inpTypo text_user"
														placeholder="단답형 최대 28자 (ex. 다양함)" value="" maxlength="28">
													<button type="button" class="delete">
														<span class="blind">삭제</span>
													</button>
												</div>
											</dd>
										</dl>

										<dl>
											<dt>복장 규정</dt>
											<dd>
												<span class="radio " id="cm1301_2_1"><input
													name="cm1301_2" type="radio" data-question-code="cm1301_2"
													value="2_1"><label for="insa_1">자율 복장</label></span>
											</dd>

											<dd>
												<span class="radio " id="cm1301_2_2"><input
													name="cm1301_2" type="radio" data-question-code="cm1301_2"
													value="2_2"><label for="insa_1">비즈니스 캐주얼</label></span>
											</dd>

											<dd>
												<span class="radio " id="cm1301_2_3"><input
													name="cm1301_2" type="radio" data-question-code="cm1301_2"
													value="2_3"><label for="insa_1">정장</label></span>
											</dd>

											<dd>
												<span class="radio " id="cm1301_2_4"><input
													name="cm1301_2" type="radio" data-question-code="cm1301_2"
													value="2_4"><label for="insa_1">근무복 지급</label></span>
											</dd>

											<dd class="btn_user">
												<span class="radio " id="cm1301_2_etc_cont"><input
													name="cm1301_2" data-question-code="cm1301_2_etc"
													type="radio" value="2_etc"> <label for="insa_48">직접
														입력</label> </span>
											</dd>
											<dd class="answer_user">
												<div class="inner">
													<label for="insa_user_11" class="blind">직접 입력</label> <input
														type="text" id="cm1301_2_etc" name="cm1301_2"
														class="inpTypo text_user"
														placeholder="단답형 최대 28자 (ex. 다양함)" value="" maxlength="28">
													<button type="button" class="delete">
														<span class="blind">삭제</span>
													</button>
												</div>
											</dd>
										</dl>

										<dl>
											<dt>회식 빈도</dt>
											<dd>
												<span class="radio " id="cm1301_3_1"><input
													name="cm1301_3" type="radio" data-question-code="cm1301_3"
													value="3_1"><label for="insa_1">월 2회 이상</label></span>
											</dd>

											<dd>
												<span class="radio " id="cm1301_3_2"><input
													name="cm1301_3" type="radio" data-question-code="cm1301_3"
													value="3_2"><label for="insa_1">월 1회</label></span>
											</dd>

											<dd>
												<span class="radio " id="cm1301_3_3"><input
													name="cm1301_3" type="radio" data-question-code="cm1301_3"
													value="3_3"><label for="insa_1">분기 1회</label></span>
											</dd>

											<dd>
												<span class="radio " id="cm1301_3_4"><input
													name="cm1301_3" type="radio" data-question-code="cm1301_3"
													value="3_4"><label for="insa_1">연 1회</label></span>
											</dd>

											<dd class="btn_user">
												<span class="radio " id="cm1301_3_etc_cont"><input
													name="cm1301_3" data-question-code="cm1301_3_etc"
													type="radio" value="3_etc"> <label for="insa_48">직접
														입력</label> </span>
											</dd>
											<dd class="answer_user">
												<div class="inner">
													<label for="insa_user_11" class="blind">직접 입력</label> <input
														type="text" id="cm1301_3_etc" name="cm1301_3"
														class="inpTypo text_user"
														placeholder="단답형 최대 28자 (ex. 다양함)" value="" maxlength="28">
													<button type="button" class="delete">
														<span class="blind">삭제</span>
													</button>
												</div>
											</dd>
										</dl>

										<dl>
											<dt>평균 근속연수</dt>
											<dd>
												<span class="radio " id="cm1301_4_1"><input
													name="cm1301_4" type="radio" data-question-code="cm1301_4"
													value="4_1"><label for="insa_1">1~4년</label></span>
											</dd>

											<dd>
												<span class="radio " id="cm1301_4_2"><input
													name="cm1301_4" type="radio" data-question-code="cm1301_4"
													value="4_2"><label for="insa_1">5~7년</label></span>
											</dd>

											<dd>
												<span class="radio " id="cm1301_4_3"><input
													name="cm1301_4" type="radio" data-question-code="cm1301_4"
													value="4_3"><label for="insa_1">8~9년</label></span>
											</dd>

											<dd>
												<span class="radio " id="cm1301_4_4"><input
													name="cm1301_4" type="radio" data-question-code="cm1301_4"
													value="4_4"><label for="insa_1">10년 이상</label></span>
											</dd>

											<dd class="btn_user">
												<span class="radio " id="cm1301_4_etc_cont"><input
													name="cm1301_4" data-question-code="cm1301_4_etc"
													type="radio" value="4_etc"> <label for="insa_48">직접
														입력</label> </span>
											</dd>
											<dd class="answer_user">
												<div class="inner">
													<label for="insa_user_11" class="blind">직접 입력</label> <input
														type="text" id="cm1301_4_etc" name="cm1301_4"
														class="inpTypo text_user"
														placeholder="단답형 최대 28자 (ex. 다양함)" value="" maxlength="28">
													<button type="button" class="delete">
														<span class="blind">삭제</span>
													</button>
												</div>
											</dd>
										</dl>

										<dl>
											<dt>부서 연령 구성</dt>
											<dd>
												<span class="radio " id="cm1301_5_1"><input
													name="cm1301_5" type="radio" data-question-code="cm1301_5"
													value="5_1"><label for="insa_1">대부분 20·30대</label></span>
											</dd>

											<dd>
												<span class="radio " id="cm1301_5_2"><input
													name="cm1301_5" type="radio" data-question-code="cm1301_5"
													value="5_2"><label for="insa_1">대부분 30·40대</label></span>
											</dd>

											<dd>
												<span class="radio " id="cm1301_5_3"><input
													name="cm1301_5" type="radio" data-question-code="cm1301_5"
													value="5_3"><label for="insa_1">대부분 40대 이상</label></span>
											</dd>

											<dd>
												<span class="radio " id="cm1301_5_4"><input
													name="cm1301_5" type="radio" data-question-code="cm1301_5"
													value="5_4"><label for="insa_1">연령 구성 다양</label></span>
											</dd>

											<dd class="btn_user">
												<span class="radio " id="cm1301_5_etc_cont"><input
													name="cm1301_5" data-question-code="cm1301_5_etc"
													type="radio" value="5_etc"> <label for="insa_48">직접
														입력</label> </span>
											</dd>
											<dd class="answer_user">
												<div class="inner">
													<label for="insa_user_11" class="blind">직접 입력</label> <input
														type="text" id="cm1301_5_etc" name="cm1301_5"
														class="inpTypo text_user"
														placeholder="단답형 최대 28자 (ex. 다양함)" value="" maxlength="28">
													<button type="button" class="delete">
														<span class="blind">삭제</span>
													</button>
												</div>
											</dd>
										</dl>

										<dl>
											<dt>야근 빈도</dt>
											<dd>
												<span class="radio " id="cm1301_6_1"><input
													name="cm1301_6" type="radio" data-question-code="cm1301_6"
													value="6_1"><label for="insa_1">대부분 없음</label></span>
											</dd>

											<dd>
												<span class="radio " id="cm1301_6_2"><input
													name="cm1301_6" type="radio" data-question-code="cm1301_6"
													value="6_2"><label for="insa_1">주 1~2회</label></span>
											</dd>

											<dd>
												<span class="radio " id="cm1301_6_3"><input
													name="cm1301_6" type="radio" data-question-code="cm1301_6"
													value="6_3"><label for="insa_1">주 3~4회</label></span>
											</dd>

											<dd class="btn_user">
												<span class="radio " id="cm1301_6_etc_cont"><input
													name="cm1301_6" data-question-code="cm1301_6_etc"
													type="radio" value="6_etc"> <label for="insa_48">직접
														입력</label> </span>
											</dd>
											<dd class="answer_user">
												<div class="inner">
													<label for="insa_user_11" class="blind">직접 입력</label> <input
														type="text" id="cm1301_6_etc" name="cm1301_6"
														class="inpTypo text_user"
														placeholder="단답형 최대 28자 (ex. 다양함)" value="" maxlength="28">
													<button type="button" class="delete">
														<span class="blind">삭제</span>
													</button>
												</div>
											</dd>
										</dl>
									</div>
								</div>

								<div class="cont_tab cont_prefix" id="section_cm1401">
									<div class="title">
										<p>
											<strong>Q. 복지 및 처우</strong>는 어떻게 되나요?
										</p>
									</div>
									<div class="question_prefix">
										<dl>
											<dt>수습 기간 급여</dt>
											<dd>
												<span class="radio " id="cm1401_1_1"><input
													name="cm1401_1" type="radio" data-question-code="cm1401_1"
													value="1_1"><label for="insa_1">100%</label></span>
											</dd>

											<dd>
												<span class="radio " id="cm1401_1_2"><input
													name="cm1401_1" type="radio" data-question-code="cm1401_1"
													value="1_2"><label for="insa_1">80%</label></span>
											</dd>

											<dd>
												<span class="radio " id="cm1401_1_3"><input
													name="cm1401_1" type="radio" data-question-code="cm1401_1"
													value="1_3"><label for="insa_1">70%</label></span>
											</dd>

											<dd class="btn_user">
												<span class="radio " id="cm1401_1_etc_cont"><input
													name="cm1401_1" data-question-code="cm1401_1_etc"
													type="radio" value="1_etc"> <label for="insa_48">직접
														입력</label> </span>
											</dd>
											<dd class="answer_user">
												<div class="inner">
													<label for="insa_user_11" class="blind">직접 입력</label> <input
														type="text" id="cm1401_1_etc" name="cm1401_1"
														class="inpTypo text_user"
														placeholder="단답형 최대 28자 (ex. 다양함)" value="" maxlength="28">
													<button type="button" class="delete">
														<span class="blind">삭제</span>
													</button>
												</div>
											</dd>
										</dl>

										<dl>
											<dt>인센티브 제공</dt>
											<dd>
												<span class="radio " id="cm1401_2_1"><input
													name="cm1401_2" type="radio" data-question-code="cm1401_2"
													value="2_1"><label for="insa_1">연 1회</label></span>
											</dd>

											<dd>
												<span class="radio " id="cm1401_2_2"><input
													name="cm1401_2" type="radio" data-question-code="cm1401_2"
													value="2_2"><label for="insa_1">연 2~3회</label></span>
											</dd>

											<dd>
												<span class="radio " id="cm1401_2_3"><input
													name="cm1401_2" type="radio" data-question-code="cm1401_2"
													value="2_3"><label for="insa_1">인센티브 없음</label></span>
											</dd>

											<dd class="btn_user">
												<span class="radio " id="cm1401_2_etc_cont"><input
													name="cm1401_2" data-question-code="cm1401_2_etc"
													type="radio" value="2_etc"> <label for="insa_48">직접
														입력</label> </span>
											</dd>
											<dd class="answer_user">
												<div class="inner">
													<label for="insa_user_11" class="blind">직접 입력</label> <input
														type="text" id="cm1401_2_etc" name="cm1401_2"
														class="inpTypo text_user"
														placeholder="단답형 최대 28자 (ex. 다양함)" value="" maxlength="28">
													<button type="button" class="delete">
														<span class="blind">삭제</span>
													</button>
												</div>
											</dd>
										</dl>

										<dl>
											<dt>식대 포함 여부</dt>
											<dd>
												<span class="radio " id="cm1401_3_1"><input
													name="cm1401_3" type="radio" data-question-code="cm1401_3"
													value="3_1"><label for="insa_1">급여에 식대 포함</label></span>
											</dd>

											<dd>
												<span class="radio " id="cm1401_3_2"><input
													name="cm1401_3" type="radio" data-question-code="cm1401_3"
													value="3_2"><label for="insa_1">급여 외 식대 제공</label></span>
											</dd>

											<dd>
												<span class="radio " id="cm1401_3_3"><input
													name="cm1401_3" type="radio" data-question-code="cm1401_3"
													value="3_3"><label for="insa_1">중식 무료 제공</label></span>
											</dd>

											<dd class="btn_user">
												<span class="radio " id="cm1401_3_etc_cont"><input
													name="cm1401_3" data-question-code="cm1401_3_etc"
													type="radio" value="3_etc"> <label for="insa_48">직접
														입력</label> </span>
											</dd>
											<dd class="answer_user">
												<div class="inner">
													<label for="insa_user_11" class="blind">직접 입력</label> <input
														type="text" id="cm1401_3_etc" name="cm1401_3"
														class="inpTypo text_user"
														placeholder="단답형 최대 28자 (ex. 다양함)" value="" maxlength="28">
													<button type="button" class="delete">
														<span class="blind">삭제</span>
													</button>
												</div>
											</dd>
										</dl>

										<dl>
											<dt>평균 휴가 사용 일수</dt>
											<dd>
												<span class="radio " id="cm1401_4_1"><input
													name="cm1401_4" type="radio" data-question-code="cm1401_4"
													value="4_1"><label for="insa_1">5일 미만</label></span>
											</dd>

											<dd>
												<span class="radio " id="cm1401_4_2"><input
													name="cm1401_4" type="radio" data-question-code="cm1401_4"
													value="4_2"><label for="insa_1">5~10일</label></span>
											</dd>

											<dd>
												<span class="radio " id="cm1401_4_3"><input
													name="cm1401_4" type="radio" data-question-code="cm1401_4"
													value="4_3"><label for="insa_1">10~15일</label></span>
											</dd>

											<dd class="btn_user">
												<span class="radio " id="cm1401_4_etc_cont"><input
													name="cm1401_4" data-question-code="cm1401_4_etc"
													type="radio" value="4_etc"> <label for="insa_48">직접
														입력</label> </span>
											</dd>
											<dd class="answer_user">
												<div class="inner">
													<label for="insa_user_11" class="blind">직접 입력</label> <input
														type="text" id="cm1401_4_etc" name="cm1401_4"
														class="inpTypo text_user"
														placeholder="단답형 최대 28자 (ex. 다양함)" value="" maxlength="28">
													<button type="button" class="delete">
														<span class="blind">삭제</span>
													</button>
												</div>
											</dd>
										</dl>
									</div>
								</div>

								<div class="cont_tab cont_prefix" id="section_cm1501">
									<div class="title">
										<p>
											<strong>Q. 면접 및 입사</strong>는 어떻게 진행되나요?
										</p>
									</div>
									<div class="question_prefix">
										<dl>
											<dt>면접 시기</dt>
											<dd>
												<span class="radio " id="cm1501_1_1"><input
													name="cm1501_1" type="radio" data-question-code="cm1501_1"
													value="1_1"><label for="insa_1">접수기간 중 수시</label></span>
											</dd>

											<dd>
												<span class="radio " id="cm1501_1_2"><input
													name="cm1501_1" type="radio" data-question-code="cm1501_1"
													value="1_2"><label for="insa_1">마감 후 수시</label></span>
											</dd>

											<dd>
												<span class="radio " id="cm1501_1_3"><input
													name="cm1501_1" type="radio" data-question-code="cm1501_1"
													value="1_3"><label for="insa_1">마감 후 1~2주
														이내</label></span>
											</dd>

											<dd class="btn_user">
												<span class="radio " id="cm1501_1_etc_cont"><input
													name="cm1501_1" data-question-code="cm1501_1_etc"
													type="radio" value="1_etc"> <label for="insa_48">직접
														입력</label> </span>
											</dd>
											<dd class="answer_user">
												<div class="inner">
													<label for="insa_user_11" class="blind">직접 입력</label> <input
														type="text" id="cm1501_1_etc" name="cm1501_1"
														class="inpTypo text_user"
														placeholder="단답형 최대 28자 (ex. 다양함)" value="" maxlength="28">
													<button type="button" class="delete">
														<span class="blind">삭제</span>
													</button>
												</div>
											</dd>
										</dl>

										<dl>
											<dt>면접 형태</dt>
											<dd>
												<span class="radio " id="cm1501_2_1"><input
													name="cm1501_2" type="radio" data-question-code="cm1501_2"
													value="2_1"><label for="insa_1">1:1</label></span>
											</dd>

											<dd>
												<span class="radio " id="cm1501_2_2"><input
													name="cm1501_2" type="radio" data-question-code="cm1501_2"
													value="2_2"><label for="insa_1">지원자 1명, 면접관
														다수</label></span>
											</dd>

											<dd>
												<span class="radio " id="cm1501_2_3"><input
													name="cm1501_2" type="radio" data-question-code="cm1501_2"
													value="2_3"><label for="insa_1">다수 지원자 동시</label></span>
											</dd>

											<dd class="btn_user">
												<span class="radio " id="cm1501_2_etc_cont"><input
													name="cm1501_2" data-question-code="cm1501_2_etc"
													type="radio" value="2_etc"> <label for="insa_48">직접
														입력</label> </span>
											</dd>
											<dd class="answer_user">
												<div class="inner">
													<label for="insa_user_11" class="blind">직접 입력</label> <input
														type="text" id="cm1501_2_etc" name="cm1501_2"
														class="inpTypo text_user"
														placeholder="단답형 최대 28자 (ex. 다양함)" value="" maxlength="28">
													<button type="button" class="delete">
														<span class="blind">삭제</span>
													</button>
												</div>
											</dd>
										</dl>

										<dl>
											<dt>합격 여부 통보</dt>
											<dd>
												<span class="radio " id="cm1501_3_1"><input
													name="cm1501_3" type="radio" data-question-code="cm1501_3"
													value="3_1"><label for="insa_1">합격자만 통보</label></span>
											</dd>

											<dd>
												<span class="radio " id="cm1501_3_2"><input
													name="cm1501_3" type="radio" data-question-code="cm1501_3"
													value="3_2"><label for="insa_1">불합격도 통보</label></span>
											</dd>

											<dd class="btn_user">
												<span class="radio " id="cm1501_3_etc_cont"><input
													name="cm1501_3" data-question-code="cm1501_3_etc"
													type="radio" value="3_etc"> <label for="insa_48">직접
														입력</label> </span>
											</dd>
											<dd class="answer_user">
												<div class="inner">
													<label for="insa_user_11" class="blind">직접 입력</label> <input
														type="text" id="cm1501_3_etc" name="cm1501_3"
														class="inpTypo text_user"
														placeholder="단답형 최대 28자 (ex. 다양함)" value="" maxlength="28">
													<button type="button" class="delete">
														<span class="blind">삭제</span>
													</button>
												</div>
											</dd>
										</dl>

										<dl>
											<dt>입사 예정일</dt>
											<dd>
												<span class="radio " id="cm1501_4_1"><input
													name="cm1501_4" type="radio" data-question-code="cm1501_4"
													value="4_1"><label for="insa_1">합격 후 즉시</label></span>
											</dd>

											<dd>
												<span class="radio " id="cm1501_4_2"><input
													name="cm1501_4" type="radio" data-question-code="cm1501_4"
													value="4_2"><label for="insa_1">합격 후 2~3주내</label></span>
											</dd>

											<dd>
												<span class="radio " id="cm1501_4_3"><input
													name="cm1501_4" type="radio" data-question-code="cm1501_4"
													value="4_3"><label for="insa_1">일정 조율 가능</label></span>
											</dd>

											<dd class="btn_user">
												<span class="radio " id="cm1501_4_etc_cont"><input
													name="cm1501_4" data-question-code="cm1501_4_etc"
													type="radio" value="4_etc"> <label for="insa_48">직접
														입력</label> </span>
											</dd>
											<dd class="answer_user">
												<div class="inner">
													<label for="insa_user_11" class="blind">직접 입력</label> <input
														type="text" id="cm1501_4_etc" name="cm1501_4"
														class="inpTypo text_user"
														placeholder="단답형 최대 28자 (ex. 다양함)" value="" maxlength="28">
													<button type="button" class="delete">
														<span class="blind">삭제</span>
													</button>
												</div>
											</dd>
										</dl>
									</div>
								</div>

								<div class="cont_tab cont_prefix" id="section_cm1601">
									<div class="title">
										<p>
											<strong>Q. 지원 자격 및 채용 사유</strong>는 무엇인가요?
										</p>
									</div>
									<div class="question_prefix">
										<dl>
											<dt>채용 사유</dt>
											<dd>
												<span class="radio " id="cm1601_1_1"><input
													name="cm1601_1" type="radio" data-question-code="cm1601_1"
													value="1_1"><label for="insa_1">결원 발생</label></span>
											</dd>

											<dd>
												<span class="radio " id="cm1601_1_2"><input
													name="cm1601_1" type="radio" data-question-code="cm1601_1"
													value="1_2"><label for="insa_1">사세 확장</label></span>
											</dd>

											<dd>
												<span class="radio " id="cm1601_1_3"><input
													name="cm1601_1" type="radio" data-question-code="cm1601_1"
													value="1_3"><label for="insa_1">결원 및 사세 확장</label></span>
											</dd>

											<dd class="btn_user">
												<span class="radio " id="cm1601_1_etc_cont"><input
													name="cm1601_1" data-question-code="cm1601_1_etc"
													type="radio" value="1_etc"> <label for="insa_48">직접
														입력</label> </span>
											</dd>
											<dd class="answer_user">
												<div class="inner">
													<label for="insa_user_11" class="blind">직접 입력</label> <input
														type="text" id="cm1601_1_etc" name="cm1601_1"
														class="inpTypo text_user"
														placeholder="단답형 최대 28자 (ex. 다양함)" value="" maxlength="28">
													<button type="button" class="delete">
														<span class="blind">삭제</span>
													</button>
												</div>
											</dd>
										</dl>

										<dl>
											<dt>기재된 경력 연수 기준</dt>
											<dd>
												<span class="radio " id="cm1601_2_1"><input
													name="cm1601_2" type="radio" data-question-code="cm1601_2"
													value="2_1"><label for="insa_1">연수 반드시 충족 </label></span>
											</dd>

											<dd>
												<span class="radio " id="cm1601_2_2"><input
													name="cm1601_2" type="radio" data-question-code="cm1601_2"
													value="2_2"><label for="insa_1">미달도 가능</label></span>
											</dd>

											<dd>
												<span class="radio " id="cm1601_2_3"><input
													name="cm1601_2" type="radio" data-question-code="cm1601_2"
													value="2_3"><label for="insa_1">초과도 가능</label></span>
											</dd>

											<dd class="btn_user">
												<span class="radio " id="cm1601_2_etc_cont"><input
													name="cm1601_2" data-question-code="cm1601_2_etc"
													type="radio" value="2_etc"> <label for="insa_48">직접
														입력</label> </span>
											</dd>
											<dd class="answer_user">
												<div class="inner">
													<label for="insa_user_11" class="blind">직접 입력</label> <input
														type="text" id="cm1601_2_etc" name="cm1601_2"
														class="inpTypo text_user"
														placeholder="단답형 최대 28자 (ex. 다양함)" value="" maxlength="28">
													<button type="button" class="delete">
														<span class="blind">삭제</span>
													</button>
												</div>
											</dd>
										</dl>

										<dl>
											<dt>동종 업계 외 경력 인정</dt>
											<dd>
												<span class="radio " id="cm1601_3_1"><input
													name="cm1601_3" type="radio" data-question-code="cm1601_3"
													value="3_1"><label for="insa_1">유사 업계 경력 인정</label></span>
											</dd>

											<dd>
												<span class="radio " id="cm1601_3_2"><input
													name="cm1601_3" type="radio" data-question-code="cm1601_3"
													value="3_2"><label for="insa_1">동종 업계 경력만</label></span>
											</dd>

											<dd class="btn_user">
												<span class="radio " id="cm1601_3_etc_cont"><input
													name="cm1601_3" data-question-code="cm1601_3_etc"
													type="radio" value="3_etc"> <label for="insa_48">직접
														입력</label> </span>
											</dd>
											<dd class="answer_user">
												<div class="inner">
													<label for="insa_user_11" class="blind">직접 입력</label> <input
														type="text" id="cm1601_3_etc" name="cm1601_3"
														class="inpTypo text_user"
														placeholder="단답형 최대 28자 (ex. 다양함)" value="" maxlength="28">
													<button type="button" class="delete">
														<span class="blind">삭제</span>
													</button>
												</div>
											</dd>
										</dl>

										<dl>
											<dt>학력 미달시 지원</dt>
											<dd>
												<span class="radio " id="cm1601_4_1"><input
													name="cm1601_4" type="radio" data-question-code="cm1601_4"
													value="4_1"><label for="insa_1">지원 가능</label></span>
											</dd>

											<dd>
												<span class="radio " id="cm1601_4_2"><input
													name="cm1601_4" type="radio" data-question-code="cm1601_4"
													value="4_2"><label for="insa_1">지원 불가</label></span>
											</dd>

											<dd class="btn_user">
												<span class="radio " id="cm1601_4_etc_cont"><input
													name="cm1601_4" data-question-code="cm1601_4_etc"
													type="radio" value="4_etc"> <label for="insa_48">직접
														입력</label> </span>
											</dd>
											<dd class="answer_user">
												<div class="inner">
													<label for="insa_user_11" class="blind">직접 입력</label> <input
														type="text" id="cm1601_4_etc" name="cm1601_4"
														class="inpTypo text_user"
														placeholder="단답형 최대 28자 (ex. 다양함)" value="" maxlength="28">
													<button type="button" class="delete">
														<span class="blind">삭제</span>
													</button>
												</div>
											</dd>
										</dl>

										<dl>
											<dt>재지원 가능 여부</dt>
											<dd>
												<span class="radio " id="cm1601_5_1"><input
													name="cm1601_5" type="radio" data-question-code="cm1601_5"
													value="5_1"><label for="insa_1">재지원 가능</label></span>
											</dd>

											<dd>
												<span class="radio " id="cm1601_5_2"><input
													name="cm1601_5" type="radio" data-question-code="cm1601_5"
													value="5_2"><label for="insa_1">재지원 불가능</label></span>
											</dd>

											<dd class="btn_user">
												<span class="radio " id="cm1601_5_etc_cont"><input
													name="cm1601_5" data-question-code="cm1601_5_etc"
													type="radio" value="5_etc"> <label for="insa_48">직접
														입력</label> </span>
											</dd>
											<dd class="answer_user">
												<div class="inner">
													<label for="insa_user_11" class="blind">직접 입력</label> <input
														type="text" id="cm1601_5_etc" name="cm1601_5"
														class="inpTypo text_user"
														placeholder="단답형 최대 28자 (ex. 다양함)" value="" maxlength="28">
													<button type="button" class="delete">
														<span class="blind">삭제</span>
													</button>
												</div>
											</dd>
										</dl>
									</div>
								</div>

								<div class="cont_tab cont_user" id="section_cmfree">
									<div class="title">
										<p>
											<strong>Q. 질문을 직접 입력</strong>하고 싶으신가요?<br> <span
												class="sub">공고 또는 기업에 대해 추가로 어필하고 싶은 점을 Q&amp;A 형식으로
												작성해보세요.</span>
										</p>
									</div>
									<div class="question_user">

										<div class="question required" contents-idx="" data-index="0">
											<dl>
												<dt>
													<label for="insatong_q_0">질문1</label> <input
														id="insatong_q_0" data-question-code="0"
														class="inpTypo cmfree_question" type="text"
														placeholder="질문형 최대 28자 (ex. 분위기는 어떤가요?)" value=""
														maxlength="28">
												</dt>

												<dd class="required required">
													<label for="insatong_a_0_0">답변1</label> <input type="text"
														id="insatong_a_0_0" class="inpTypo cmfree_answer"
														name="0_0" placeholder="단답형 최대 28자 (ex. 자유로움)" value=""
														maxlength="28">
													<button type="button" class="btn_del_a">
														<span class="blind">답변삭제</span>
													</button>
													<button type="button" class="btn_add_a">
														<span class="blind">답변추가</span>
													</button>
												</dd>

											</dl>
											<button type="button" class="btn_del_q">- 질문삭제</button>
										</div>

										<div class="guide">
											<p>질문 및 답변 추가를 원하시면, '자유질문 추가' 버튼을 눌러주세요.</p>
										</div>
									</div>
									<button type="button" class="btn_add_q">+ 자유질문 추가</button>
								</div>
							</div>
							<button type="button" class="btn_tab prev"
								onmousedown="try{n_trackEvent('recruit_add', 'insatong', 'left_right', '');}catch(e){}">
								<span class="blind">이전</span>
							</button>
							<button type="button" class="btn_tab next on"
								onmousedown="try{n_trackEvent('recruit_add', 'insatong', 'left_right', '');}catch(e){}">
								<span class="blind">다음</span>
							</button>
						</div>
						<div class="nudge_new_insatong" style="display: none;">
							<div class="lpop_wrap lpop_new_insatong">
								<h3>
									<strong>새로워진 인사통</strong>을 사용해보시겠어요?
								</h3>
								<ul>
									<li>키워드형으로 간편하게!</li>
									<li>구직자들이 주로 궁금해 하는 내용만!</li>
									<li>한 눈에 보기좋은 UI</li>
								</ul>
								<div class="btn_wrap">
									<button type="button" class="btnSizeL colorWhite set_old"
										onmousedown="try{n_trackEvent('recruit_add', 'insatong','layer_old', '');}catch(e){}">기존
										인사통 유지</button>
									<button type="button" class="btnSizeL colorBlack set_renewal"
										onmousedown="try{n_trackEvent('recruit_add', 'insatong', 'layer_new', '');}catch(e){}">새로운
										인사통 등록하기</button>
								</div>
								<p class="copy">
									※ 새로운 인사통 등록시 <strong>기존 내용은 삭제</strong>됩니다
								</p>
								<button type="button" class="btn_close_lpop01"
									onmousedown="try{n_trackEvent('recruit_add', 'insatong', 'layer_close', '');}catch(e){}">닫기</button>
							</div>
						</div>
					</div>
				</div>
				<div class="items">
					<div class="area_tit">
						<strong class="tit">공고관리 및 채용정보<br> 공유 안내
						</strong>
					</div>
					<div class="area_data" id="manager_fl">
						<strong class="tit_info">담당자 정보</strong>
						<div class="template_exposure">
							<span class="inpRdo"><input type="radio"
								class="manager_all_open" name="manager_open" id="manager_open1"
								value="y"><label class="lbl" for="manager_open1">공개</label></span>
							<span class="inpRdo"><input type="radio"
								class="manager_all_open" name="manager_open" id="manager_open2"
								value="n" checked="checked"><label class="lbl"
								for="manager_open2">비공개</label></span>
						</div>
						<div class="optional_item" id="manager_open_item"
							style="display: none;">
							<span class="inpChk"> <input type="checkbox"
								id="manager_open" value="manager_open"> <label
								class="lbl" for="manager_open">성함</label>
							</span> <span class="inpChk"> <input type="checkbox"
								id="tel_open" value="tel_open"> <label class="lbl"
								for="tel_open">전화번호</label>
							</span> <span class="inpChk"> <input type="checkbox"
								id="cell_open" value="cell_open"> <label class="lbl"
								for="cell_open">휴대폰</label>
							</span> <span class="inpChk"> <input type="checkbox"
								id="email_open" value="email_open"> <label class="lbl"
								for="email_open">이메일</label>
							</span>
							<p class="txt_noti_email" style="display: none;">※ 이메일을 공개하실
								경우, 이메일을 통한 허위 입사지원의 사례가 발생할 수 있습니다.</p>
						</div>
						<div class="optional_item" id="recruit_share">
							<div class="template_share">
								<span class="inpChk"> <input type="checkbox"
									id="partnership_fl"> <label class="lbl"
									for="partnership_fl">등록한 공고를 사람인의 제휴사이트(워크넷)에 동시 게재합니다</label>
								</span>
								<div class="toolTipWrap over">
									<button type="button">
										<span class="blind">도움말</span>
									</button>
									<div class="toolTip">
										<span class="tail tail_top_center"></span>
										<div class="tooltipCont">
											<p class="desc_tooltip">
												※워크넷 동시 게재는 접수 시작일 <br>기준으로 최대 10일 까지 가능합니다.
											</p>
										</div>
									</div>
								</div>
							</div>
							<div class="template_share">
								<p class="txt_info">
									채용정보 정책에 위배될 경우, 공고가 게재되지 않을 수 있습니다. <span class="box_button">
										<button type="button" class="btn_share"
											data-uilayer-btn="recruit_law">채용절차 준수 안심보장 시스템</button> 및
										<button type="button" class="btn_share btn_noti_ly"
											data-uilayer-btn="not_save_caution">공고등록 제한 규정안내</button>
									</span>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<div class="wrap_bottom_btn">
			<button type="button"
				class="btn_entry_complete btn_next_step ga_data_layer"
				data-ga_data_layer="ga_lead|pc_recruit_step|btn_entry_complete">공고
				등록</button>
		</div>
	</div>


<!-- ********************* 여기부터는 스크립트 ************************ -->

	<!-- 담당자 정보내 선택값 템플릿 START-->
	<script id="managerOptionTemplate" type="text/x-handlebars-template">
    <li>{{text}}<button type="button" class="btn_del _del" value="{{code}}">삭제</button></li>
</script>
	<!-- 담당자 정보내 선택값 템플릿 END-->

	<!-- 담당자 이메일 자동완성 START -->
	<script id="emailAutoCompleteTemplate"
		type="text/x-handlebars-template">
    <li><a href="#" class="link_domain" data-complete="{{complete_mail}}"><strong>{{input_mail}}</strong>@{{domain}}</a></li>
</script>
	<!-- 담당자 이메일 자동완성 END -->

	<!-- 인근지역 셀렉트 템플릿 START -->
	<script id="locationSelectTemplate" type="text/x-handlebars-template">
    <li><span class="inpChk sizeM" ><input type="checkbox" id="loc_chk_{{code}}" data-mcode="{{mcode}}" value="{{code}}" {{checked}} {{disabled}}><label class="lbl" for="loc_chk_{{code}}">{{name}}</label></span></li>
</script>
	<!-- 인근지역 셀렉트 템플릿 END -->

	<!-- 인근지역 상세 항목 템플릿 START-->
	<script id="locationDetailCheckedTemplate"
		type="text/x-handlebars-template">
    <li>{{name}}<button type="button" class="btn_del loc_del" id="loc_delete_{{code}}" data-mcode="{{mcode}}" value="{{code}}" style="{{display}}">삭제</button></li>
</script>
	<!-- 인근지역 상세 항목 템플릿 END -->

	<!-- 해외지역 셀렉트 박스 옵션 START -->
	<script id="overseasOptionTemplate" type="text/x-handlebars-template">
    <option value="{{post}}" {{selected}}>{{name}}</option>
</script>
	<!-- 해외지역 셀렉트 박스 옵션 END -->

	<!-- 업종 하단 레이어 1,2depth 템플릿 START -->
	<script id="industryOneDepthTemplate" type="text/x-handlebars-template">
    <li class="{{on}}" data-depth="{{depth}}" data-mcode="{{mcode}}" data-bcode="{{bcode}}"><button type="button">{{text}}</button></li>
</script>
	<!-- 업종 하단 레이어 1,2depth 템플릿 END -->

	<!-- 업종 하단 레이어 3depth 템플릿 START -->
	<script id="industryThreeDepthTemplate"
		type="text/x-handlebars-template">
    <li>
        <span class="inpChk sizeM">
            <input type="checkbox" id="i_keyword_{{code}}" data-depth="{{depth}}" value="{{code}}" {{checked}}><label class="lbl" for="i_keyword_{{code}}">{{text}}</label>
        </span>
    </li>
</script>
	<!-- 업종 하단 레이어 3depth 템플릿 END -->

	<!-- 업종 검색 레이어 관련 템플릿 START -->
	<script id="industryAutoCompleteTemplate"
		type="text/x-handlebars-template">
    <li>
        <span class="inpChk sizeM">
            <input type="checkbox" id="industry_auto_complete_{{bcode}}_{{code}}" data-bcode="{{bcode}}" value="{{code}}" {{checked}}><label class="lbl" for="industry_auto_complete_{{bcode}}_{{code}}">{{text}}</label>
        </span>
    </li>
</script>
	<!-- 업종 검색 레이어 관련 템플릿 END -->

	<!-- 복리후생 레이어 관련 템플릿 START-->
	<script id="welfareLayerCheckTemplate"
		type="text/x-handlebars-template">
    <li>
        <span class="inpChk sizeM">
            <input type="checkbox" id="chk_wel_{{welfare_key}}" value="{{welfare_key}}"><label class="lbl" for="chk_wel_{{welfare_key}}">{{welfare_desc}}</label>
        </span>
    </li>
</script>
	<!-- 복리후생 레이어 관련 템플릿 END -->

	<!-- 모집분야 구성 관련 템플릿 START -->
	<script id="recruitDivisionElementTemplate"
		type="text/x-handlebars-template">
    <li class="recruit_division_line_detail {{end_state_class}}" id="line_detail_{{seq}}">
        <div class="summary">
            <em id="state_icon_{{seq}}" class=""></em>
            <strong class="tit_division" id="main_recruitment_title_{{seq}}">{{recruitment_title}}</strong>
            <div class="area_frm_btn" >
                <button type="button" class="btnSizeL colorWhite btn_end chg_state_btn ga_data_layer" id="chg_state_btn_{{seq}}" data-seq="{{seq}}" data-btn-state="" data-recruitment-seq="{{recruitment_seq}}" data-ga_data_layer=""></button>
                <button type="button" class="btnSizeL colorBlack btn_del btn_copy ga_data_layer" data-seq="{{seq}}" data-ga_data_layer="ga_lead|pc_rec_division|btn_copy">복사</button>
            </div>
            <button type="button" class="btn_view_division btn_detail_view" data-seq="{{seq}}"><span class="blind">모집분야 상세입력 보기</span></button>
            <em class="msgInvalid _invalid_msg_whole_tab_{{seq}}" id="invalid_msg_whole_msg_{{seq}}" style="display:none"></em>
        </div>
        <div class="fulldata">
            <div class="items">
                <div class="area_tit">
                    <strong class="tit">모집분야명</strong>
                    <em class="required">필수</em>
                </div>
                <div class="area_data">
                    <input type="hidden" id="original_title_{{seq}}" value="{{original_title}}"/>
                    <div class="division_name" id="division_name_area_{{seq}}">
                        <input type="text" id="recruitment_title_{{seq}}" class="inpTypo sizeL recruitment_title" data-help_target="display_division" value="{{recruitment_title}}" title="모집분야명" placeholder="예) R&amp;D, 경영지원" maxlength="30">
                    </div>
                    <span class="division_collect">
                        <input type="text" id="collect_cnt_{{seq}}" class="inpTypo sizeL collect_cnt _filter" title="모집인원" placeholder="ex) 00명" name="collect_cnt" data-filter="numeric" data-help_target="collect_cnt" value="{{collect_cnt}}" maxlength="6"> 명 모집
                    </span>
                    <em class="msgInvalid _invalid_msg_collect_{{seq}}" style="display:none;"><!-- 모집분야 & 모집인원 validation --></em>
                </div>
            </div>
            <div class="items">
                <div class="area_tit">
                    <strong class="tit">경력여부</strong>
                    <em class="required">필수</em>
                </div>
                <div class="area_data type_txt">
                    <span class="inpChk career_cd_{{seq}}"><input type="checkbox" id="career_cd_{{seq}}_1" value="{{seq}}_1" data-help_target="hope_career"><label class="lbl" for="career_cd_{{seq}}_1">신입</label></span>
                    <span class="inpChk career_cd_{{seq}}"><input type="checkbox" id="career_cd_{{seq}}_2" value="{{seq}}_2" data-help_target="hope_career"><label class="lbl" for="career_cd_{{seq}}_2">경력</label></span>
                    <span class="inpChk career_cd_{{seq}}"><input type="checkbox" id="career_cd_{{seq}}_0" value="{{seq}}_0" data-help_target="hope_career"><label class="lbl" for="career_cd_{{seq}}_0">경력무관</label></span>
                    <span class="inpChk career_cd_sub_0_{{seq}}" style="display:none"><input type="checkbox" class = "freshman_can_apply" id="freshman_can_apply_{{seq}}" value="y"><label class="lbl" for="freshman_can_apply_{{seq}}">신입 지원 가능</label></span>
                    <em class="msgInvalid _invalid_msg_career_{{seq}}" style="display:none;">경력을 입력해주세요.</em>
                    <div class="career_check career_cd_sub_2_{{seq}}" data-sub-for="{{seq}}_2" style="display:none;">
                        <div class="inpSel sizeL">
                            <select class="career_period" id="career_min_{{seq}}" name="career_min_{{seq}}" data-seq="{{seq}}">
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
                        </div>~
                        <div class="inpSel sizeL">
                            <select class="career_period" id="career_max_{{seq}}" name="career_max_{{seq}}" data-seq="{{seq}}">
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
                        <span class="inpChk"><input type="checkbox" class="no_matter_work_year" id="no_matter_work_year_{{seq}}"><label class="lbl" for="no_matter_work_year_{{seq}}">연수무관</label></span>
                    </div>
                    <em class="msgInvalid _invalid_msg_career_sub_{{seq}}" style="display:none;">경력 연수를 선택해주세요.</em>
                </div>
            </div>
            <div class="items">
                <div class="area_tit">
                    <strong class="tit">담당업무</strong>
                </div>
                <div class="area_data">
                    <input type="text" id="assign_task_nm_{{seq}}" value="{{assign_task_nm}}"  class="inpTypo sizeL assign_task_nm" title="담당업무" placeholder="담당업무를 자세히 기재할수록 지원율이 높아집니다." maxlength="300" data-help_target="responsibilities">
                </div>
            </div>
            <div class="subsection">
                <div class="items">
                    <div class="area_tit">
                        <span class="inpChk"><input type="checkbox" class="workpost_chk" id="workpost_chk_{{seq}}" value="{{seq}}" {{work_dept_checked}}><label class="lbl ga_data_layer" for="workpost_chk_{{seq}}" data-ga_data_layer="ga_lead|pc_rec_division|checkbox_department">근무부서</label></span>
                    </div>
                    <div class="area_data">
                        <!-- 근무부서 체크 시 노출 -->
                        <div class="detail_frm"  id="workpost_detail_{{seq}}" style="{{work_dept_display}}">
                            <input type="text" id="work_dept_nm_{{seq}}" name="work_dept_nm" class="inpTypo sizeL work_dept_nm" value="{{work_dept_nm}}" title="근무부서" placeholder="근무하게 될 부서 또는 근무지를 입력해주세요." maxlength="60" data-help_target="workpost">
                        </div>
                    </div>
                </div>
                <div class="items">
                    <div class="area_tit">
                        <span class="inpChk"><input type="checkbox" class="job_grade_chk" id="job_grade_chk_{{seq}}" value="{{seq}}" {{job_grade_checked}}><label class="lbl ga_data_layer" for="job_grade_chk_{{seq}}" data-ga_data_layer="ga_lead|pc_rec_division|checkbox_job_grade">직급직책</label></span>
                    </div>
                    <div class="area_data">
                        <!-- 직급직책 체크 시 노출 -->
                        <div id="job_grade_detail_{{seq}}" style="{{job_grade_display}}">
                            <!-- [dev] 직급직책 선택 전 -->
                            <div class="selected_item {{job_grade_selected}}" id="job_grade_summary_{{seq}}">
                                <p class="txt_placeholder">직급직책을 선택해주세요.</p>
                                <ul class="list_selected_item" id="job_grade_frm_box_list_{{seq}}" data-seq="{{seq}}"></ul>
                                <button type="button" class="btn_add job_grade_setting_btn" id="job_grade_{{seq}}_setting_btn" data-seq="{{seq}}">수정·추가하기</button>
                            </div>
                            <!-- 직급직책 선택 레이어 -->
                            <div class="wrap_layer">
                                <div class="layer_frm layer_add_jobgrade" id="job_grade_all_list_{{seq}}">
                                    <div class="tblWrap tblRow tbl_jobgrade">
                                        <table>
                                            <caption class="blind">직급/직책 테이블</caption>
                                            <colgroup>
                                                <col style="width:122px">
                                                <col style="">
                                            </colgroup>
                                            <tbody>
                                            <tr>
                                                <th scope="row">직급</th>
                                                <td>
                                                    <ul class="list_check job_grade_layer_list" id="ul_job_grade_{{seq}}"></ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">직책</th>
                                                <td>
                                                    <ul class="list_check job_duties_layer_list" id="ul_job_duties_{{seq}}"></ul>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="area_btn">
                                        <button type="button" class="btnSizeL colorWhite btn_cancel close_layer" data-seq="{{seq}}">취소</button>
                                        <button type="button" class="btnSizeL colorBlue btn_confirm" data-seq="{{seq}}">확인</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="items">
                    <div class="area_tit">
                        <span class="inpChk"><input type="checkbox" class="preferential_chk" id="preferential_chk_{{seq}}" value="{{seq}}" {{preference_checked}}><label class="lbl ga_data_layer" for="preferential_chk_{{seq}}" data-ga_data_layer="ga_lead|pc_rec_division|checkbox_preferred">필수/우대조건</label></span>
                    </div>
                    <div class="area_data type_txt">
                        <!-- 필수/우대조건 체크 시 노출 -->
                        <div id="preferential_detail_{{seq}}" style="{{preference_display}}">
                            <div class="list_recommend">
                                <strong class="tit">추천조건</strong>
                                <ul>
                                    <li><input type="checkbox" class="major_recommend" id="maj024_{{seq}}" value="maj024" data-text="공학계열"><label for="maj024_{{seq}}">전공/학과: 공학계열</label></li>
                                    <li><input type="checkbox" class="preference_recommend" id="pre043_{{seq}}" value="pre043" data-text="해당직무 근무경험"><label for="pre043_{{seq}}">보유역량: 해당직무 근무경험</label></li>
                                    <li><input type="checkbox" class="preference_recommend" id="pre026_{{seq}}" value="pre026" data-text="인근거주자"><label for="pre026_{{seq}}">보유역량: 인근거주자</label></li>
                                    <li><input type="checkbox" class="language_recommend" id="7453_{{seq}}" value="7453" data-text="TOEIC"><label for="7453_{{seq}}">외국어: TOEIC </label></li>
                                </ul>
                            </div>
                            <div class="selected_preference {{preference_selected}}" id="preference_summary_{{seq}}">
                                <ul class="list_preference" id="require_preference_frm_box_list_{{seq}}">
                                </ul>
                                <div class="area_bottom">
                                    <p class="txt_placeholder">보유역량, 자격증, 외국어, 전공학과 등 우대사항을 등록해보세요!</p>
                                    <button type="button" class="btn_add btn_more_ly_essential_preference ga_data_layer" data-seq="{{seq}}" data-uilayer-btn="recruit_division_preference" data-ga_data_layer="ga_lead|pc_rec_division|layer_preferred">선택하기</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </li>
</script>
	<!-- 모집분야 구성 관련 템플릿 END -->

	<!-- 모집분야 지원자수에 따른 툴팁 템플릿 START -->
	<script id="recruitDivisionTitleToolTipTemplate"
		type="text/x-handlebars-template">
    <div class="toolTipWrap" id="recruit_division_title_tool_tip_{{seq}}">
        <div class="toolTip" style="bottom: 65px; left: 138.5px;">
            <span class="tail tail_bottom_center"></span>
            <div class="tooltipCont">
                <p class="txt">지원자 또는 지원대기자가 발생하여 모집분야명을 수정할 수 없습니다.</p>
            </div>
        </div>
    </div>
</script>
	<!-- 모집분야 지원자수에 따른 툴팁 템플릿 END -->

	<!-- 모집분야 직급 직책 구성 탬플릿 START-->
	<script id="recruitDivisionJdbGradeTemplate"
		type="text/x-handlebars-template">
    <li>{{text}}<button type="button" class="btn_del btn_delete btn_delete_job_grade" value="{{code}}" data-seq="{{seq}}">삭제</button></li>
</script>
	<!-- 모집분야 직급 직책 구성 탬플릿 END-->

	<!-- 모집분야 우대조건 - 전공/ 학과 탬플릿 START-->
	<script id="recruitDivisionMajorTemplate"
		type="text/x-handlebars-template">
    <li data-code="{{code}}" data-seq="{{seq}}">
        <strong class="category">전공/학과</strong>
        <span class="desc">{{text}}</span>
        <span class="inpRdoSw">
            <span class="inOption"><input type="radio" class="major_cond" id="major_cond_req_{{seq}}_{{code}}" name="major_cond_{{seq}}_{{code}}" value="req" {{req_checked}}><label class="lbl" for="major_cond_req_{{seq}}_{{code}}">필수</label></span>
            <span class="inOption"><input type="radio" class="major_cond" id="major_cond_pre_{{seq}}_{{code}}" name="major_cond_{{seq}}_{{code}}" value="pre" {{pre_checked}}><label class="lbl" for="major_cond_pre_{{seq}}_{{code}}">우대</label></span>
        </span>
        <button type="button" class="btn_del btn_delete btn_delete_major" value="{{code}}"><span class="blind">삭제</span></button>
    </li>
</script>
	<!-- 모집분야 우대조건 - 전공/ 학과 탬플릿 END-->

	<!-- 모집분야 우대조건 - 보유역량 탬플릿 START-->
	<script id="recruitDivisionPreferenceTemplate"
		type="text/x-handlebars-template">
    <li data-code="{{code}}" data-seq="{{seq}}">
        <strong class="category">보유역량</strong>
        <span class="desc">{{text}}</span>
        <span class="inpRdoSw">
            <span class="inOption"><input type="radio" class="preference_cond" id="preference_req_{{seq}}_{{code}}" name="preference_{{seq}}_{{code}}" value="req" {{req_checked}}><label class="lbl" for="preference_req_{{seq}}_{{code}}">필수</label></span>
            <span class="inOption"><input type="radio" class="preference_cond" id="preference_pre_{{seq}}_{{code}}" name="preference_{{seq}}_{{code}}" value="pre" {{pre_checked}}><label class="lbl" for="preference_pre_{{seq}}_{{code}}">우대</label></span>
        </span>
        <button type="button" class="btn_del btn_delete btn_delete_preference" value="{{code}}"><span class="blind">삭제</span></button>
    </li>
</script>
	<!-- 모집분야 우대조건 - 보유역량 탬플릿 END-->

	<!-- 모집분야 우대조건 - 외국어 탬플릿 START-->
	<script id="recruitDivisionLanguageTemplate"
		type="text/x-handlebars-template">
    <li class="language" data-code="{{code}}" data-seq="{{seq}}">
        <strong class="category">외국어</strong>
        <span class="desc">{{text}}</span>
        <div class="score">
            <input type="text" data-code="{{code}}" class="inpTypo sizeS recruit_division_language_score language_score_{{seq}}_{{code}}" title="외국어 점수" value="{{score}}" maxlength="6">급(점) 이상
            <em class="msgInvalid _invalid_msg_language_{{seq}}_{{code}}" style="display: none;">점수를 입력하세요.</em>
        </div>
        <span class="inpRdoSw">
            <span class="inOption"><input type="radio" class="language_cond" id="language_req_{{seq}}_{{code}}" name="prefer_cond_{{seq}}_{{code}}" value="req" {{req_checked}}><label class="lbl" for="language_req_{{seq}}_{{code}}">필수</label></span>
            <span class="inOption"><input type="radio" class="language_cond" id="language_pre_{{seq}}_{{code}}" name="prefer_cond_{{seq}}_{{code}}" value="pre" {{pre_checked}}><label class="lbl" for="language_pre_{{seq}}_{{code}}">우대</label></span>
        </span>
        <button type="button" class="btn_del btn_delete btn_delete_language" value="{{code}}"><span class="blind">삭제</span></button>
    </li>
</script>
	<!-- 모집분야 우대조건 - 외국어 탬플릿 END-->

	<!-- 모집분야 우대조건 - 자격증 탬플릿 START-->
	<script id="recruitDivisionLicenseTemplate"
		type="text/x-handlebars-template">
    <li data-kcode="{{kcode}}" data-seq="{{seq}}">
        <strong class="category">자격증</strong>
        <span class="desc">{{text}}</span>
        <span class="inpRdoSw">
            <span class="inOption"><input type="radio" class="license_cond" id="license_cond_req_{{seq}}_{{kcode}}" name="license_cond_{{seq}}_{{kcode}}" data-seq="{{seq}}" value="req" {{req_checked}}><label class="lbl" for="license_cond_req_{{seq}}_{{kcode}}">필수</label></span>
            <span class="inOption"><input type="radio" class="license_cond" id="license_cond_pre_{{seq}}_{{kcode}}" name="license_cond_{{seq}}_{{kcode}}" data-seq="{{seq}}" value="pre" {{pre_checked}}><label class="lbl" for="license_cond_pre_{{seq}}_{{kcode}}">우대</label></span>
        </span>
        <button type="button" class="btn_del btn_delete btn_delete_license" value="{{kcode}}"><span class="blind">삭제</span></button>
    </li>
</script>
	<!-- 모집분야 우대조건 - 자격증 탬플릿 END-->

	<!-- 직급 직책 레이어 팝업 탬플릿 START-->
	<script id="recruitDivisionJdbGradeLayerTemplate"
		type="text/x-handlebars-template">
    <li>
        <span class="inpChk sizeM"><input type="checkbox" id="{{groupId}}_{{code}}" name="{{groupId}}[]" value="{{code}}" {{checked}}>
            <label class="lbl" for="{{groupId}}_{{code}}">{{text}}</label>
        </span>
    </li>
</script>
	<!-- 직급 직책 레이어 팝업 탬플릿 END-->

	<!-- 필수 / 우대조건 레이어팝업내 선택값 틀 탬플릿 START -->
	<script id="recruitDivisionLayerRequirePreferenceLineTemplate"
		type="text/x-handlebars-template">
    <ul class="list_selected_item" id="layer_{{section}}">
        <li class="upper">{{name}} &gt;</li>
        {{contents}}
    </ul>
</script>
	<!-- 필수 / 우대조건 레이어팝업내 선택값 틀 탬플릿 START -->

	<!-- 필수 / 우대조건 레이어팝업내 선택값 탬플릿 START -->
	<script id="recruitDivisionLayerRequirePreferenceTemplate"
		type="text/x-handlebars-template">
    <li id="{{section}}_{{code}}" data-seq="{{seq}}">{{text}}<button type="button" class="btn_del btn_delete_{{section}}" value="{{code}}">삭제</button></li>
</script>
	<!-- 필수 / 우대조건 레이어팝업내 선택값 탬플릿 START -->

	<!-- 필수 / 우대조건 레이어팝업내 탭 2depth 탬플릿 START -->
	<script id="recruitDivisionLayerRequirePreferenceTwoDepthTemplate"
		type="text/x-handlebars-template">
    <li class="two_depth_element" id="layer_two_depth_{{code}}" data-section="{{section}}" data-code="{{code}}"><button type="button">{{text}}</button></li>
</script>
	<!--  필수 / 우대조건 레이어팝업내 탭 2depth 탬플릿 END -->

	<!-- 필수 / 우대조건 레이어팝업내 탭 3depth 탬플릿 START -->
	<script id="recruitDivisionLayerRequirePreferenceThreeDepthTemplate"
		type="text/x-handlebars-template">
    <li>
        <span class="inpChk sizeM">
            <input type="checkbox" class="three_depth_{{section}}" id="layer_three_depth_{{code}}" data-text="{{text}}" data-section="{{section}}" value="{{code}}" data-parent-code="{{parent_code}}" {{checked}}><label class="lbl" for="layer_three_depth_{{code}}">{{text}}</label>
        </span>
    </li>
</script>
	<!-- 필수 / 우대조건 레이어팝업내 탭 3depth 탬플릿 END -->

	<!-- 필수 / 우대조건 레이어팝업내 자격증/ 면허증 검색 결과 START-->
	<script id="recruitDivisionLicenseListLayerTemplate"
		type="text/x-handlebars-template">
    <li>
        <span class="inpChk sizeM">
            <input type="checkbox" class="btn_sel_license" data-kcode="{{kcode}}" data-name="{{name}}" data-dept_nm="{{dept_nm}}" id="license_search_{{kcode}}"><label class="lbl" for="license_search_{{kcode}}">{{name}}</label>
        </span>
    </li>
</script>
	<!-- 필수 / 우대조건 레이어팝업내 자격증/ 면허증 검색 결과 END-->

	<!-- 필수 / 우대조건 레이어팝업내 자격증/ 면허증 검색 결과 START-->
	<script id="recruitDivisionLayerDirectPartTemplate"
		type="text/x-handlebars-template">
    <div class="area_directly on">
        <span class="directly_inp"><input type="text" id="direct_input" class="inpTypo sizeS" value="" title="보유역량 입력" placeholder="보유역량 입력"><button type="button" class="btn_add_inp direct_input_confirm">확인</button></span>
    </div>
</script>
	<!-- 필수 / 우대조건 레이어팝업내 자격증/ 면허증 검색 결과 END-->

	<!-- 셀렉트 박스 옵션 START -->
	<script id="selectOptionTemplate" type="text/x-handlebars-template">
    <option value="{{post}}">{{name}}</option>
</script>
	<!-- 셀렉트 박스 옵션 END -->

	<!-- 근무형태 옵션 START -->
	<script id="jobTypeOptionTemplate" type="text/x-handlebars-template">
    <li>
        <input type="checkbox" id="job_type_{{job_type_code}}" value="{{job_type_code}}" data-help_target="job_type"><label for="job_type_{{job_type_code}}" class="lbl">{{name}}</label>
    </li>
</script>
	<!-- 근무형태 옵션 END -->

	<!-- 인사통내 대질문 START -->
	<script id="mainQuestionTemplate" type="text/x-handlebars-template">
    <div class="cont_tab cont_prefix" id="section_{{code}}"><div class="title"><p>{{main_question}}</p></div><div class="question_prefix">[[sub_question_{{code}}]]</div></div>
</script>
	<!-- 인사통내 대질문 END -->

	<!-- 인사통내 소질문 START -->
	<script id="subQuestionTemplate" type="text/x-handlebars-template">
    <dl><dt>{{sub_question}}</dt>[[sub_answer_{{code}}_{{part_code}}]]</dl>
</script>
	<!-- 인사통내 소질문 END -->

	<!-- 인사통내 소질문 답변 START -->
	<script id="subAnswerTemplate" type="text/x-handlebars-template">
    <dd {{answer_css}}><span class="radio {{answer_select_class}}" id="{{code}}_{{part_code}}_{{answer_code}}" ><input name="{{code}}_{{part_code}}" type="radio" data-question-code="{{code}}_{{part_code}}" value="{{part_code}}_{{answer_code}}" {{answer_select}}/><label for="insa_1">{{answer_keyword}}</label></span></dd>
</script>
	<!-- 인사통내 소질문 답변 END -->

	<!-- 인사통내 소질문 답변 직접입력 START -->
	<script id="subAnswerWriteTemplate" type="text/x-handlebars-template">
    <dd class="btn_user" {{answer_css}}>
        <span class="radio {{answer_select}}" id="{{code}}_{{part_code}}_etc_cont"><input name="{{code}}_{{part_code}}" data-question-code="{{code}}_{{part_code}}_etc" type="radio" value="{{part_code}}_etc" />
             <label for="insa_48">직접 입력</label>
         </span>
    </dd>
    <dd class="answer_user" {{write_form_css}}>
        <div class="inner">
            <label for="insa_user_11" class="blind">직접 입력</label>
            <input type="text" id="{{code}}_{{part_code}}_etc" name="{{code}}_{{part_code}}" class="inpTypo text_user" placeholder="단답형 최대 28자 (ex. 다양함)" value="{{user_write_answer}}" maxlength="28"/>
            <button type="button" class="delete"><span class="blind">삭제</span></button>
        </div>
    </dd>
</script>
	<!-- 인사통내 소질문 답변 직접입력 END -->

	<!-- 인사통내 자유질문 틀 START -->
	<script id="tabFreeFrameTemplate" type="text/x-handlebars-template">
    <div class="cont_tab cont_user" id="section_cmfree">
        <div class="title">
            <p>
                <strong>Q. 질문을 직접 입력</strong>하고 싶으신가요?<br />
                <span class="sub">공고 또는 기업에 대해 추가로 어필하고 싶은 점을 Q&A 형식으로 작성해보세요.</span>
            </p>
        </div>
        <div class="question_user">
            [[freeQuestionHtml]]
            <div class="guide">
                <p>질문 및 답변 추가를 원하시면, '자유질문 추가' 버튼을 눌러주세요.</p>
            </div>
        </div>
        <button type="button" class="btn_add_q">+ 자유질문 추가</button>
    </div>
</script>
	<!-- 인사통내 자유질문 틀 END -->

	<!-- 인사통내 자유질문 항목 START -->
	<script id="tabFreeQuestionTemplate" type="text/x-handlebars-template">
    <div class="question" contents-idx="{{contents_idx}}">
        <dl >
            <dt>
                <label for="insatong_q_{{default_num}}">질문{{question_num}}</label>
                <input id="insatong_q_{{default_num}}" data-question-code="{{default_num}}" class="inpTypo cmfree_question" type="text" placeholder="질문형 최대 28자 (ex. 분위기는 어떤가요?)" value="{{user_question}}" {{max_length}}>
            </dt>
            [[answerTemplate_{{default_num}}]]
        </dl>
        <button type="button" class="btn_del_q">- 질문삭제</button>
    </div>
</script>
	<!-- 인사통내 자유질문 항목 END -->

	<!-- 인사통내 자유질문 답변 항목 START -->
	<script id="tabFreeAnswerTemplate" type="text/x-handlebars-template">
    <dd class="required {{minimum_answer}}">
        <label for="insatong_a_{{question_num}}_{{answer_num}}">답변1</label>
        <input type="text" id="insatong_a_{{question_num}}_{{answer_num}}" class="inpTypo cmfree_answer" name="{{question_num}}_{{answer_num}}" placeholder="단답형 최대 28자 (ex. 자유로움)" value="{{user_answer}}" {{max_length}}>
        <button type="button" class="btn_del_a"><span class="blind">답변삭제</span></button>
        <button type="button" class="btn_add_a"><span class="blind">답변추가</span></button>
    </dd>
</script>
	<!-- 인사통내 자유질문 답변 항목 END -->

	<!-- 채용절차 > 대표직무 -->
	<script id="recruitJobCategoryCheckboxTemplate"
		type="text/x-handlebars-template">
    <li>
        <span class="inpChk sizeM">
            <input type="checkbox" id="job_cate_{{id}}" data-code="{{code}}" data-code-name="{{code_name}}" data-keyword="{{keyword}}" data-keyword-name="{{keyword_name}}" data-category-name="{{category_name}}" {{checked}}>
            <label class="lbl" for="job_cate_{{id}}">{{keyword_name_full}}</label>
        </span>
    </li>
</script>

	<!-- 채용절차 > 전형절차 -->
	<script id="hiringProcessTemplate" type="text/x-handlebars-template">

    <li class="btn_step {{expand}}" id="hiring_detail_{{key}}" data-idx="{{key}}">
        <input type="hidden" class="hiring_process_seq" name="hiring_process_seq_{{key}}" value="{{hiring_process_seq}}">
        <input type="hidden" class="hiring_process_apply_cnt" name="hiring_process_apply_cnt_{{key}}" value="{{hiring_process_apply_cnt}}">
        <em class="badge_step">{{tit_step}}</em>
        <div class="summary">
            <div class="tit_hiring">{{process_type_nm}}</div>
            <div class="txt_period">{{process_dt}}</div>
        </div>
        <button type="button" class="btn_view_hiring" title="전형절차 상세입력"><span class="blind">전형절차 상세입력 보기</span></button>
        <div class="fulldata">
            <div class="optional_item">
                <dl class="type_input">
                    <dt>전형절차명</dt>
                    <dd>
                        <input type="text" class="inpTypo sizeL process_type_nm" name="process_type_nm_{{key}}" value="{{process_type_nm}}" title="전형절차명" placeholder="전형명을 입력해주세요.(최대30자)" maxlength="30">
                        <em class="msgInvalid" style="display: none;">전형명을 입력해주세요.</em>
                    </dd>
                </dl>
                <dl style="{{display_list_step_item}}">
                    <dt>전형유형</dt>
                    <dd>
                        <span class="inpRdo sizeM"><input type="radio" name="process_type_cd_{{key}}" id="process_type_cd1_{{key}}" value="hp001" checked><label class="lbl" for="process_type_cd1_{{key}}">서류</label></span>
                        <span class="inpRdo sizeM"><input type="radio" name="process_type_cd_{{key}}" id="process_type_cd2_{{key}}" value="hp002"><label class="lbl" for="process_type_cd2_{{key}}">면접</label></span>
                        <span class="inpRdo sizeM"><input type="radio" name="process_type_cd_{{key}}" id="process_type_cd3_{{key}}" value="hp003"><label class="lbl" for="process_type_cd3_{{key}}">인적성</label></span>
                        <span class="inpRdo sizeM"><input type="radio" name="process_type_cd_{{key}}" id="process_type_cd4_{{key}}" value="hp004"><label class="lbl" for="process_type_cd4_{{key}}">레퍼런스</label></span>
                        <span class="inpRdo sizeM"><input type="radio" name="process_type_cd_{{key}}" id="process_type_cd5_{{key}}" value="hp006"><label class="lbl" for="process_type_cd5_{{key}}">기타</label></span>
                        <span class="inpRdo sizeM" style="display:none;"><input type="radio" name="process_type_cd_{{key}}" id="process_type_cd6_{{key}}" value="hp005"><label class="lbl" for="process_type_cd6_{{key}}">합격</label></span>
                    </dd>
                </dl>
                <dl class="type_input">
                    <dt>
                        <span class="inpChk"><input type="checkbox" class="chk_date_reg" name="date_reg_{{key}}" id="date_reg_{{key}}" value="y" {{check_date_reg}}><label class="lbl" for="date_reg_{{key}}">전형기간</label></span>
                    </dt>
                    <dd class="hiring_period">
                        <input type="text" name="start_date_{{key}}" id="start_date_{{key}}" class="inpTypo sizeL type_calendar hiring_start_date" title="전형 시작일" value="{{process_start_dt}}" data-help_target="apply_period" readonly="" autocomplete="off" {{disabled_date_reg}} style="cursor: pointer;">
                        ~
                        <input type="text" name="end_date_{{key}}" id="end_date_{{key}}" class="inpTypo sizeL type_calendar hiring_end_date" title="전형 마감일" value="{{process_end_dt}}" data-help_target="apply_period" readonly="" autocomplete="off" {{disabled_date_reg}} style="cursor: pointer;">
                    </dd>
                </dl>
                <button type="button" class="btnSizeL colorBlack btn_set_hiring">입력완료</button>
            </div>
        </div>
        <div class="box_btn" style="{{display_box_btn}}">
            <button type="button" class="btn_order btn_down ga_data_layer" title="한칸 아래로 이동" data-ga_data_layer="ga_lead|pc_rec_hiring_process|btn_change_up" style="{{display_btn_up}}"><span class="blind">한칸 아래로 이동</span></button>
            <button type="button" class="btn_order btn_up ga_data_layer" title="한칸 위로 이동" data-ga_data_layer="ga_lead|pc_rec_hiring_process|btn_change_down" style="{{display_btn_down}}"><span class="blind">한칸 위로 이동</span></button>
            <button type="button" class="btn_order btn_delete ga_data_layer" title="전형 삭제" data-ga_data_layer="ga_lead|pc_rec_hiring_process|btn_delete"><span class="blind">전형 삭제</span></button>
        </div>
    </li>

</script>

	<!-- 제목 추천 영역 START -->
	<script id="titleAutoCompleteTemplate"
		type="text/x-handlebars-template">
    <li>
        <span class="inpRdo"><input type="radio" name="title_example" id="title_example_{{number}}" value="{{title}}"><label class="lbl" for="title_example_{{number}}">{{title}}</label></span>
    </li>
</script>
	<!-- 제목 추천 영역 END -->

	<!-- 제목 추천 영역 START -->
	<script id="incompleteItemListTemplate"
		type="text/x-handlebars-template">

</script>
<!-- 제목 추천 영역 END -->
	<!-- 필수전공 선택 -->
	<div class="modalWrap modal_preview" id="previewModal"
		style="display: none;">
		<div class="modalTit">
			<h3 class="title">실제 구직자에게 보여질 화면을 확인해보세요</h3>
		</div>
		<div class="modalCont">
			<div class="info_preview">
				<p class="desc_preview">
					입력한 내용이 반영되지 않았다면 <strong>템플릿 설정</strong> 단계에서 <strong>템플릿
						반영하기</strong> 버튼을 클릭하세요<br> 템플릿 색상 및 디자인을 변경하고 싶다면 <strong>템플릿
						설정</strong> 단계에서 수정할 수 있습니다
				</p>
				<button type="button" id="goToTemplateBody"
					class="btnSizeM colorWhite ga_data_layer"
					data-ga_data_layer="ga_lead|pc_recruit_preview|btn_shortcut">템플릿
					설정 바로가기</button>
			</div>
			<div class="cont_preview">
				<ul class="list_preview">
					<li class="on pc"><button type="button"
							class="btn_preview ga_data_layer"
							data-ga_data_layer="ga_lead|pc_recruit_preview|tap_preview|pc"
							data-view="pc">PC 미리보기</button></li>
					<li class="mobile"><button type="button"
							class="btn_preview ga_data_layer"
							data-ga_data_layer="ga_lead|pc_recruit_preview|tap_preview|m"
							data-view="mobile">모바일 미리보기</button></li>
				</ul>
				<div class="optimize_preview" style="display: none;">
					<span class="inpChk sizeM"><input type="checkbox"
						id="mobileContentsCheckPreview" class="mobileCheck"
						data-check-type="preview"><label class="lbl ga_data_layer"
						for="mobileContentsCheckPreview"
						data-ga_data_layer="ga_lead|pc_recruit_preview|chk_optimation_m">모바일
							최적화 만들기</label></span>
					<div class="toolTipWrap over">
						<button type="button">
							<span class="blind">도움말</span>
						</button>
						<div class="toolTip" style="top: 34px; left: -158px;">
							<span class="tail tail_top_center"></span>
							<div class="tooltipCont">
								<p class="txt mobileTooltip">모바일에서도 PC와 동일한 템플릿으로 보여지고 싶다면
									체크를 해제하세요.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="screen_preview">
				<div class="pc_preview on">
					<iframe frameborder="0" scrolling="0" style="width: 960px;"></iframe>
				</div>
				<div class="mobile_preview">
					<p class="desc_mobile_preview">
						많은 구직자가 <strong>모바일</strong>에서 채용공고를 조회합니다<span class="txt">모바일
							조회비중 <strong>64%</strong> 차지
						</span>
					</p>
					<iframe frameborder="0" scrolling="no" style="width: 360px;"></iframe>
				</div>
			</div>
		</div>
		<button type="button" class="btnClose ga_data_layer"
			data-ga_data_layer="ga_lead|pc_recruit_preview|btn_exit">
			<span class="blind">닫기</span>
		</button>
	</div>
	<div class="modalWrap modal_img" style="display: none;"
		id="templateModal">
		<div class="modalTit">
			<h3 class="title">템플릿 이미지 선택</h3>
		</div>
		<div class="modalCont validateRequired">
			<ul class="list_img">
				<li class="on"><button type="button" class="btn_img"
						data-type="templateImage">유형별 이미지</button></li>
				<li class=""><button type="button" class="btn_img"
						data-type="uploadImage">직접 업로드</button></li>
			</ul>
			<div class="wrap_desc" id="templateGuide">
				<p class="desc_img">
					인재상 템플릿은 <em class="emph">이미지</em>와 <em class="emph">모집부문</em> 디자인
					모두 변경됩니다
				</p>
				<div class="toolTipWrap over">
					<button type="button">
						<span class="blind">도움말</span>
					</button>
					<div class="toolTip" style="top: 34px; left: -215px;">
						<span class="tail tail_top_center"></span>
						<div class="tooltipCont">
							<strong>‘모집부문 및 상세내용’ 디자인을 변경하고 싶나요?</strong>
							<ul class="list_tooltip">
								<li>1. 먼저, 원하는 모집부문 디자인의 템플릿을 ‘인재상’ 카테고리에서<br>선택하여
									적용합니다 ( 리스트형/테이블형 중 택 1 )
								</li>
								<li>2. 교체하고자 하는 상단 이미지의 템플릿을 선택하여 다시 적용하세요</li>
								<li>3. (1번)모집부문 디자인과 (2번)상단 이미지가 합쳐져 템플릿이<br>완성됩니다
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="cont_img">
				<div class="type_img templateImage contentType on">
					<ul class="list_type">
						<li class="on"><button type="button" class="btn_type"
								data-category="all">전체</button></li>
						<li class=""><button type="button" class="btn_type"
								data-category="talent">
								인재상<span class="txt">모집부문</span>
							</button></li>
						<li class=""><button type="button" class="btn_type"
								data-category="store">외식/매장</button></li>
						<li><button type="button" class="btn_type"
								data-category="distribute">물류/유통</button></li>
						<li><button type="button" class="btn_type" data-category="it">개발/IT</button></li>
						<li><button type="button" class="btn_type"
								data-category="edu">강사/교육</button></li>
						<li><button type="button" class="btn_type"
								data-category="medical">의료/간호</button></li>
					</ul>
					<div class="cont_type">
						<ul class="list_type_img talentList on">
							<li><span class="inpRdo sizeM"> <input type="radio"
									name="templateNum" id="talent1" value="1"
									data-template-type="sample"> <label class="lbl talent1"
									for="talent1">텍스트형<span class="txt">리스트형</span></label>
							</span></li>
							<li><span class="inpRdo sizeM"> <input type="radio"
									name="templateNum" id="talent2" value="2"
									data-template-type="sample"> <label class="lbl talent2"
									for="talent2">소통/협력<span class="txt">테이블형</span></label>
							</span></li>
							<li><span class="inpRdo sizeM"> <input type="radio"
									name="templateNum" id="talent3" value="3"
									data-template-type="sample"> <label class="lbl talent3"
									for="talent3">전문<span class="txt">리스트형</span></label>
							</span></li>
							<li><span class="inpRdo sizeM"> <input type="radio"
									name="templateNum" id="talent4" value="4"
									data-template-type="sample"> <label class="lbl talent4"
									for="talent4">창의/혁신<span class="txt">테이블형</span></label>
							</span></li>
							<li><span class="inpRdo sizeM"> <input type="radio"
									name="templateNum" id="talent5" value="5"
									data-template-type="sample"> <label class="lbl talent5"
									for="talent5">글로벌<span class="txt">테이블형</span></label>
							</span></li>
							<li><span class="inpRdo sizeM"> <input type="radio"
									name="templateNum" id="talent6" value="6"
									data-template-type="sample"> <label class="lbl talent6"
									for="talent6">열정도전<span class="txt">리스트형</span></label>
							</span></li>
						</ul>
						<ul class="list_type_img storeList on">
							<li><span class="inpRdo sizeM"> <input type="radio"
									name="templateNum" id="store1" value="7"
									data-template-type="image"> <label class="lbl store1"
									for="store1">외식/매장 1</label>
							</span></li>
							<li><span class="inpRdo sizeM"> <input type="radio"
									name="templateNum" id="store2" value="8"
									data-template-type="image"> <label class="lbl store2"
									for="store2">외식/매장 2</label>
							</span></li>
							<li><span class="inpRdo sizeM"> <input type="radio"
									name="templateNum" id="store3" value="9"
									data-template-type="image"> <label class="lbl store3"
									for="store3">외식/매장 3</label>
							</span></li>
							<li><span class="inpRdo sizeM"> <input type="radio"
									name="templateNum" id="store4" value="10"
									data-template-type="image"> <label class="lbl store4"
									for="store4">외식/매장 4</label>
							</span></li>
							<li><span class="inpRdo sizeM"> <input type="radio"
									name="templateNum" id="store5" value="11"
									data-template-type="image"> <label class="lbl store5"
									for="store5">외식/매장 5</label>
							</span></li>
							<li><span class="inpRdo sizeM"> <input type="radio"
									name="templateNum" id="store6" value="12"
									data-template-type="image"> <label class="lbl store6"
									for="store6">외식/매장 6</label>
							</span></li>
							<li><span class="inpRdo sizeM"> <input type="radio"
									name="templateNum" id="store7" value="13"
									data-template-type="image"> <label class="lbl store7"
									for="store7">외식/매장 7</label>
							</span></li>
							<li><span class="inpRdo sizeM"> <input type="radio"
									name="templateNum" id="store8" value="14"
									data-template-type="image"> <label class="lbl store8"
									for="store8">외식/매장 8</label>
							</span></li>
							<li><span class="inpRdo sizeM"> <input type="radio"
									name="templateNum" id="store9" value="15"
									data-template-type="image"> <label class="lbl store9"
									for="store9">외식/매장 9</label>
							</span></li>
						</ul>
						<ul class="list_type_img distributeList on">
							<li><span class="inpRdo sizeM"> <input type="radio"
									name="templateNum" id="distribute1" value="16"
									data-template-type="image"> <label
									class="lbl distribute1" for="distribute1">물류/유통 1</label>
							</span></li>
							<li><span class="inpRdo sizeM"> <input type="radio"
									name="templateNum" id="distribute2" value="17"
									data-template-type="image"> <label
									class="lbl distribute2" for="distribute2">물류/유통 2</label>
							</span></li>
							<li><span class="inpRdo sizeM"> <input type="radio"
									name="templateNum" id="distribute3" value="18"
									data-template-type="image"> <label
									class="lbl distribute3" for="distribute3">물류/유통 3</label>
							</span></li>
							<li><span class="inpRdo sizeM"> <input type="radio"
									name="templateNum" id="distribute4" value="19"
									data-template-type="image"> <label
									class="lbl distribute4" for="distribute4">물류/유통 4</label>
							</span></li>
							<li><span class="inpRdo sizeM"> <input type="radio"
									name="templateNum" id="distribute5" value="20"
									data-template-type="image"> <label
									class="lbl distribute5" for="distribute5">물류/유통 5</label>
							</span></li>
							<li><span class="inpRdo sizeM"> <input type="radio"
									name="templateNum" id="distribute6" value="21"
									data-template-type="image"> <label
									class="lbl distribute6" for="distribute6">물류/유통 6</label>
							</span></li>
						</ul>
						<ul class="list_type_img itList on">
							<li><span class="inpRdo sizeM"> <input type="radio"
									name="templateNum" id="it1" value="22"
									data-template-type="image"> <label class="lbl it1"
									for="it1">개발/IT 1</label>
							</span></li>
							<li><span class="inpRdo sizeM"> <input type="radio"
									name="templateNum" id="it2" value="23"
									data-template-type="image"> <label class="lbl it2"
									for="it2">개발/IT 2</label>
							</span></li>
							<li><span class="inpRdo sizeM"> <input type="radio"
									name="templateNum" id="it3" value="24"
									data-template-type="image"> <label class="lbl it3"
									for="it3">개발/IT 3</label>
							</span></li>
							<li><span class="inpRdo sizeM"> <input type="radio"
									name="templateNum" id="it4" value="25"
									data-template-type="image"> <label class="lbl it4"
									for="it4">개발/IT 4</label>
							</span></li>
							<li><span class="inpRdo sizeM"> <input type="radio"
									name="templateNum" id="it5" value="26"
									data-template-type="image"> <label class="lbl it5"
									for="it5">개발/IT 5</label>
							</span></li>
							<li><span class="inpRdo sizeM"> <input type="radio"
									name="templateNum" id="it6" value="27"
									data-template-type="image"> <label class="lbl it6"
									for="it6">개발/IT 6</label>
							</span></li>
							<li><span class="inpRdo sizeM"> <input type="radio"
									name="templateNum" id="it7" value="28"
									data-template-type="image"> <label class="lbl it7"
									for="it7">개발/IT 7</label>
							</span></li>
							<li><span class="inpRdo sizeM"> <input type="radio"
									name="templateNum" id="it8" value="29"
									data-template-type="image"> <label class="lbl it8"
									for="it8">개발/IT 8</label>
							</span></li>
							<li><span class="inpRdo sizeM"> <input type="radio"
									name="templateNum" id="it9" value="30"
									data-template-type="image"> <label class="lbl it9"
									for="it9">개발/IT 9</label>
							</span></li>
						</ul>
						<ul class="list_type_img eduList on">
							<li><span class="inpRdo sizeM"> <input type="radio"
									name="templateNum" id="edu1" value="31"
									data-template-type="image"> <label class="lbl edu1"
									for="edu1">강사/교육 1</label>
							</span></li>
							<li><span class="inpRdo sizeM"> <input type="radio"
									name="templateNum" id="edu2" value="32"
									data-template-type="image"> <label class="lbl edu2"
									for="edu2">강사/교육 2</label>
							</span></li>
							<li><span class="inpRdo sizeM"> <input type="radio"
									name="templateNum" id="edu3" value="33"
									data-template-type="image"> <label class="lbl edu3"
									for="edu3">강사/교육 3</label>
							</span></li>
							<li><span class="inpRdo sizeM"> <input type="radio"
									name="templateNum" id="edu4" value="34"
									data-template-type="image"> <label class="lbl edu4"
									for="edu4">강사/교육 4</label>
							</span></li>
							<li><span class="inpRdo sizeM"> <input type="radio"
									name="templateNum" id="edu5" value="35"
									data-template-type="image"> <label class="lbl edu5"
									for="edu5">강사/교육 5</label>
							</span></li>
							<li><span class="inpRdo sizeM"> <input type="radio"
									name="templateNum" id="edu6" value="36"
									data-template-type="image"> <label class="lbl edu6"
									for="edu6">강사/교육 6</label>
							</span></li>
							<li><span class="inpRdo sizeM"> <input type="radio"
									name="templateNum" id="edu7" value="37"
									data-template-type="image"> <label class="lbl edu7"
									for="edu7">강사/교육 7</label>
							</span></li>
							<li><span class="inpRdo sizeM"> <input type="radio"
									name="templateNum" id="edu8" value="38"
									data-template-type="image"> <label class="lbl edu8"
									for="edu8">강사/교육 8</label>
							</span></li>
							<li><span class="inpRdo sizeM"> <input type="radio"
									name="templateNum" id="edu9" value="39"
									data-template-type="image"> <label class="lbl edu9"
									for="edu9">강사/교육 9</label>
							</span></li>
						</ul>
						<ul class="list_type_img medicalList on">
							<li><span class="inpRdo sizeM"> <input type="radio"
									name="templateNum" id="medical1" value="40"
									data-template-type="image"> <label class="lbl medical1"
									for="medical1">의료/간호 1</label>
							</span></li>
							<li><span class="inpRdo sizeM"> <input type="radio"
									name="templateNum" id="medical2" value="41"
									data-template-type="image"> <label class="lbl medical2"
									for="medical2">의료/간호 2</label>
							</span></li>
							<li><span class="inpRdo sizeM"> <input type="radio"
									name="templateNum" id="medical3" value="42"
									data-template-type="image"> <label class="lbl medical3"
									for="medical3">의료/간호 3</label>
							</span></li>
							<li><span class="inpRdo sizeM"> <input type="radio"
									name="templateNum" id="medical4" value="43"
									data-template-type="image"> <label class="lbl medical4"
									for="medical4">의료/간호 4</label>
							</span></li>
							<li><span class="inpRdo sizeM"> <input type="radio"
									name="templateNum" id="medical5" value="44"
									data-template-type="image"> <label class="lbl medical5"
									for="medical5">의료/간호 5</label>
							</span></li>
							<li><span class="inpRdo sizeM"> <input type="radio"
									name="templateNum" id="medical6" value="45"
									data-template-type="image"> <label class="lbl medical6"
									for="medical6">의료/간호 6</label>
							</span></li>
							<li><span class="inpRdo sizeM"> <input type="radio"
									name="templateNum" id="medical7" value="46"
									data-template-type="image"> <label class="lbl medical7"
									for="medical7">의료/간호 7</label>
							</span></li>
							<li><span class="inpRdo sizeM"> <input type="radio"
									name="templateNum" id="medical8" value="47"
									data-template-type="image"> <label class="lbl medical8"
									for="medical8">의료/간호 8</label>
							</span></li>
							<li><span class="inpRdo sizeM"> <input type="radio"
									name="templateNum" id="medical9" value="48"
									data-template-type="image"> <label class="lbl medical9"
									for="medical9">의료/간호 9</label>
							</span></li>
						</ul>
					</div>
				</div>
				<div class="upload_img uploadImage contentType">
					<div class="box_upload">
						<strong class="tit_upload">이미지등록</strong> <span
							class="info_upload"> <span class="txt_upload">파일찾기를
								클릭하세요</span> <span class="type_upload"></span>
						</span>

						<form name="formUploadCustomImage" method="post"
							enctype="multipart/form-data"
							action="/zf_user/memcom/recruit/upload-custom-image"
							target="iframeCustomUploadImage">
							<input type="hidden" name="trigger_key"> <input
								type="hidden" name="seq"> <input type="file"
								name="custom_image" id="custom_image" class="inp_upload">
							<span class="btnSizeM colorBlack">파일찾기</span>
						</form>
						<iframe name="iframeCustomUploadImage" src="about:blank" width="0"
							height="0" border="0" style="border: 0"></iframe>
					</div>
					<strong class="blind">유의사항</strong>
					<ul class="list_noti">
						<li>‘파일찾기’ 를 클릭한 후, 공고 상단에 들어갈 이미지를 선택하세요</li>
						<li>‘등록’ 버튼을 클릭하면 상단 이미지로 교체, 적용됩니다</li>
						<li>등록 가능한 최대 용량 : <span class="point_color">3MB</span></li>
						<li>등록 가능한 파일 형식 : jpg, jpeg, gif, png</li>
						<li>등록 가능한 최대 사이즈 : 세로 900px, 가로 860px</li>
					</ul>
					<strong class="tit_noti">저작권자의 허락 없이 무단으로 저작물 파일을 업로드할 경우</strong>
					<ul class="list_noti_type2">
						<li>관련 법령에 의거 처벌될 수 있습니다.</li>
						<li>제3자의 법 침해 주장시, 당사 판단으로 공고 게재 중지 및<br>수사기관에 제공 등 조치를
							취할 수 있습니다.
						</li>
					</ul>
				</div>
			</div>

		</div>
		<div class="modalBtn">
			<button type="button" class="btnSizeL colorBlue colorInvert cancel">취소</button>
			<button type="button" class="btnSizeL colorBlue ok templateImage">선택</button>
		</div>
		<button type="button" class="btnClose">
			<span class="blind">닫기</span>
		</button>
	</div>
	<div class="editor_layer_dimmed" style="display: none;"
		id="templateIntroLayerDimmed"></div>
	<div class="modalWrap modal_editor" style="display: none;"
		id="templateIntroLayer">
		<div class="modalCont">
			<em class="badge_editor">디자인 템플릿</em> <strong class="tit_editor">구직자가
				집중할 수 있도록<br>원하는 디자인으로 손쉽게 꾸며보세요
			</strong>
			<ul class="list_editor">
				<li><strong class="tit_list img">이미지</strong>
					<p class="desc_list">
						상단 이미지를 자유롭게 바꿔보세요<br> 회사 이미지 업로드도 가능합니다
					</p></li>
				<li><strong class="tit_list color">색상</strong>
					<p class="desc_list">
						기업에 맞는 색상으로<br> 템플릿을 만들 수 있습니다
					</p></li>
				<li><strong class="tit_list autocomplete">자동완성</strong>
					<p class="desc_list">
						‘템플릿 반영하기’를 클릭하면<br> 앞에서 등록한 내용이 자동완성됩니다
					</p></li>
			</ul>
		</div>
		<div class="modalBtn">
			<button type="button" class="btnSizeL colorWhite"
				id="templateIntroStartBtn">시작하기</button>
		</div>
	</div>
	<div class="modalWrap modal_step" style="display: none"
		id="templateStepModal">
		<div class="modalTit">
			<h3 class="title">전형절차 디자인</h3>
		</div>
		<div class="modalCont">
			<ul class="list_step_type">
				<li><span class="inpRdo sizeM"> <input type="radio"
						name="stepType" id="step_type1" value="1"> <label
						class="lbl" for="step_type1"> <span class="type type1">
								<span class="blind">전형절차 디자인 타입1</span>
						</span>
					</label>
				</span></li>
				<li><span class="inpRdo sizeM"> <input type="radio"
						name="stepType" id="step_type2" value="2"> <label
						class="lbl" for="step_type2"> <span class="type type2">
								<span class="blind">전형절차 디자인 타입2</span>
						</span>
					</label>
				</span></li>
				<li><span class="inpRdo sizeM"> <input type="radio"
						name="stepType" id="step_type3" value="3"> <label
						class="lbl" for="step_type3"> <span class="type type3">
								<span class="blind">전형절차 디자인 타입3</span>
						</span>
					</label>
				</span></li>
				<li><span class="inpRdo sizeM"> <input type="radio"
						name="stepType" id="step_type4" value="4"> <label
						class="lbl" for="step_type4"> <span class="type type4">
								<span class="blind">전형절차 디자인 타입4</span>
						</span>
					</label>
				</span></li>
				<li><span class="inpRdo sizeM"> <input type="radio"
						name="stepType" id="step_type5" value="5"> <label
						class="lbl" for="step_type5"> <span class="type type5">
								<span class="blind">전형절차 디자인 타입5</span>
						</span>
					</label>
				</span></li>
				<li><span class="inpRdo sizeM"> <input type="radio"
						name="stepType" id="step_type6" value="6"> <label
						class="lbl" for="step_type6"> <span class="type type6">
								<span class="blind">전형절차 디자인 타입6</span>
						</span>
					</label>
				</span></li>
				<li><span class="inpRdo sizeM"> <input type="radio"
						name="stepType" id="step_type7" value="7"> <label
						class="lbl" for="step_type7"> <span class="type type7">
								<span class="blind">전형절차 디자인 타입7</span>
						</span>
					</label>
				</span></li>
				<li><span class="inpRdo sizeM"> <input type="radio"
						name="stepType" id="step_type8" value="8"> <label
						class="lbl" for="step_type8"> <span class="type type8">
								<span class="blind">전형절차 디자인 타입8</span>
						</span>
					</label>
				</span></li>
				<li><span class="inpRdo sizeM"> <input type="radio"
						name="stepType" id="step_type9" value="9"> <label
						class="lbl" for="step_type9"> <span class="type type9">
								<span class="blind">전형절차 디자인 타입9</span>
						</span>
					</label>
				</span></li>
				<li><span class="inpRdo sizeM"> <input type="radio"
						name="stepType" id="step_type10" value="10"> <label
						class="lbl" for="step_type10"> <span class="type type10">
								<span class="blind">전형절차 디자인 타입10</span>
						</span>
					</label>
				</span></li>
			</ul>
		</div>
		<div class="modalBtn">
			<button type="button" class="btnSizeL colorBlue colorInvert cancel">취소</button>
			<button type="button" class="btnSizeL colorBlue ok">선택</button>
		</div>
		<button type="button" class="btnClose">
			<span class="blind">닫기</span>
		</button>
	</div>
	<input type="hidden" name="recruit_version" value="2.0.0"
		id="recruit_version">
	<input type="hidden" name="rec_idx" value="" id="rec_idx">
	<input type="hidden" name="payment_type" value="" id="payment_type">
	<input type="hidden" name="isNight" value="day" id="isNight">
	<input type="hidden" name="is_local_domain" value=""
		id="is_local_domain">
	<input type="hidden" name="is_occasion_recruit_company" value=""
		id="is_occasion_recruit_company">
	<input type="hidden" name="isRecruitAgency" value=""
		id="isRecruitAgency">
	<script>
		(function($) {

			$(document)
					.ready(
							function() {
								// 공고 등록/수정 버튼
								$('.btn_entry_complete')
										.on(
												'click',
												function(e, checkType) {
													if (!!checkType
															&& checkType.type === 'validation') {
														checkType.result = executeUnlessAjaxCheckingSameTitleExistIsInProgress(validateRecruit);
													} else {
														executeUnlessAjaxCheckingSameTitleExistIsInProgress(submitRecruit);
													}
												});

								// 공고 자격/조건 추가입력
								$('.toggle_subsection button')
										.on(
												"click",
												function() {
													if ($(this).parent()
															.hasClass("on")) {
														$(this).parent()
																.removeClass(
																		"on");
													} else {
														$(this).parent()
																.addClass("on");
													}
												});

								if (window.location.hash) {
									var hash_items = [ 'insatong' ], hash_item = window.location.hash
											.substring(1), delay_sec = 3000;

									if (navigator.userAgent.indexOf('9.0') > -1) {
										delay_sec = 5000;
									}

									if ($.inArray(hash_item, hash_items) > -1) {
										setTimeout(function() {
											var scrollTop = $('html, body')
													.find('#' + hash_item)
													.offset().top - 20;
											$('html, body').animate({
												scrollTop : scrollTop
											}, 100);
										}, delay_sec);
									}
								}
							});

			/**
			 * 공고 제목 확인 Ajax 요청이 진행 중인지 확인하고
			 * 진행중이면 callback 함수 등록 아니라면 바로 실행
			 */
			function executeUnlessAjaxCheckingSameTitleExistIsInProgress(
					callback) {
				if (window.checkSameTitleExistAjaxInProgress) {
					window.checkSameTitleExistAjaxInProgressCallback = callback;
					return false;
				}
				return callback();
			}

			function validateRecruit() {
				if (validate.required() === false) {
					window.checkSameTitleExistAjaxInProgressCallback = null;
					return false;
				}

				RecruitStore.emptyTemplateCheck(); // 상세요강 공백일 경우, 템플릿 적용여부 체크
				if (RecruitStore.changedTemplateCheck() === false) { // 공고내용 변경되었을 경우, 템플릿 반영여부 체크
					return false;
				}
				return true;
			}

			/**
			 * 공고 등록/수정 완료 (선택 상품이 없을때)
			 */
			function submitRecruit() {
				if (validateRecruit() === true) {
					// 3단계로 갈지 아니면 바로 저장할지 체크
					var $btnComplete = $('.btn_entry_complete'), next = $btnComplete
							.data('next')
							|| '';
					if (!!Navigation && Navigation.includeStep('applyForm')
							&& next === '') { // 지원서 설정 단계가 있으면 다음단계로 이동
						Navigation.nextStep();
					} else {
						RecruitStore.submit();
						$btnComplete.data('next', '');
					}
				}
			}
		})(jQuery);

		function setDocumentCookie(name, value) {
			var argv = setDocumentCookie.arguments;
			var argc = setDocumentCookie.arguments.length;
			var expires = (argc > 2) ? argv[2] : null;
			var path = (argc > 3) ? argv[3] : null;
			var domain = (argc > 4) ? argv[4] : null;
			var secure = (argc > 5) ? argv[5] : false;
			document.cookie = name
					+ "="
					+ escape(value)
					+ ((expires == null) ? "" : ("; expires=" + expires
							.toGMTString()))
					+ ((path == null) ? "" : ("; path=" + path))
					+ ((domain == null) ? "" : ("; domain=" + domain))
					+ ((secure == true) ? "; secure" : "");
		}

		var validate = {
			required : function() {
				return RecruitStore.validateComponent(true);
			}
		};
	</script>
	<script src="/js/libs/require-2.3.2.min.js"
		data-main="/js/company/recruit/RecruitStore" type="text/javascript"></script>
	<script>
		// todo 이종헌 런칭시에 비노출 추후 다시 노출 시킬 예정임
		//var assistOptions = {
		//    'dept' : 'recruit',
		//    'wrapper' : 'body',
		//    'NOCACHE_DT' : '//'
		//};
	</script>
	<!--<script src='/js/helpword/assist.js?v=-->
	<!--'></script>-->
	<!-- snb 영역 -->
	</div>

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
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="/resources/js/google-map.js"></script>
	<script src="/resources/js/main.js"></script>


</body>
</html>