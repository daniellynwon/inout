<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Job Post New Last - Last</title>
<style type="text/css">
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
	padding: 24px 0 20px 124px;
	min-height: 22px;
	line-height: 20px;
}

.frm_hiring .list_process .summary .tit_hiring {
	float: left;
	font-weight: bold;
}

/* 전형 절차 상세보기 */
.frm_hiring .list_process .btn_view_hiring {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
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
		
		<div class="frm_body frm_hiring">
			<div class="items" id="hiringProcedure">
				<div class="area_tit"><strong class="tit">채용절차</strong></div>
				<div class="area_data type_txt">
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
								<button type="button" class="btn_order btn_delete ga_data_layer"
									title="전형 삭제"
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
								<button type="button" class="btn_order btn_delete ga_data_layer"
									title="전형 삭제"
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
								<button type="button" class="btn_order btn_delete ga_data_layer"
									title="전형 삭제"
									data-ga_data_layer="ga_lead|pc_rec_hiring_process|btn_delete">
									<span class="blind">전형 삭제</span>
								</button>
							</div></li>

					</ol>
				</div>
			</div>
		</div>
	</div>

</body>
</html>