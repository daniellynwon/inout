<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	
	$(function(){
		
		$('#section_2').hide();
		$('#section_3').hide();
		$('#section_4').hide();
		$('#section_5').hide();
		
		$('#cm2').click(function(){
			$('#section_1').hide();
			$('#section_2').show();
			$('#section_3').hide();
			$('#section_4').hide();
			$('#section_5').hide();
		});
		
		$('#cm3').click(function(){
			$('#section_1').hide();
			$('#section_2').hide();
			$('#section_3').show();
			$('#section_4').hide();
			$('#section_5').hide();
		});
		
		$('#cm4').click(function(){
			$('#section_1').hide();
			$('#section_2').hide();
			$('#section_3').hide();
			$('#section_4').show();
			$('#section_5').hide();
		});
		
		$('#cm5').click(function(){
			$('#section_1').hide();
			$('#section_2').hide();
			$('#section_3').hide();
			$('#section_4').hide();
			$('#section_5').show();
		});
		
		
	});
	
</script>

<style type="text/css">
.wrap_recruit_frm .step_recruit {
	margin: 70px auto 0;
	width: 1260px;
}

.step_recruit .frm_body {
	padding: 50px 0;
	border-radius: 6px;
	background: #fff;
	box-shadow: 0 6px 15px 0 rgba(180, 180, 180, 0.15);
}

.step_recruit .frm_body.frm_template .items {
	padding: 40px 60px 10px;
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

.recruit_add .desc_template {
	margin-top: 12px;
}

.recruit_add .tabList {
	margin-top: 21px;
}

[class*="tabList"] {
	width: 100%;
}

.recruit_add .tabList>li:first-child {
	border-radius: 5px 0 0 0;
}

.tabList>li .inTab {
	display: block;
	position: relative;
	padding: 12px 30px 15px;
	width: 100%;
	height: 50px;
	box-sizing: border-box;
	color: #222;
	font-size: 17px;
	letter-spacing: -1px;
	line-height: 23px;
	text-align: center;
}

.tabList>li.select+li {
	border-left: 0;
}

.tabList>li {
	float: left;
	width: 20%;
	height: 100%;
	border: 1px solid #ddd;
	border-right: 0;
	box-sizing: border-box;
	color: #222;
	vertical-align: top;
	background-color: #fff;
}

.recruit_add .tabList>li:last-child {
	border-radius: 0 5px 0 0;
}

.recruit_add .wrap_cont {
	position: relative;
	border: 1px solid #dedede;
	border-top: 0;
}

.recruit_add .cont_tab {
	/* display: none; */
	overflow-y: auto;
	position: relative;
	padding: 0 50px 43px 50px;
	height: 440px;
	box-sizing: border-box;
	background: #fff;
}

.recruit_add .cont_tab .title {
	height: 112px;
	line-height: 104px;
	text-align: center;
}

.recruit_add .cont_tab .title>p {
	display: inline-block;
	color: #222;
	font-size: 17px;
	line-height: 24px;
	vertical-align: middle;
}

.recruit_add .question_prefix dl:first-child {
	margin-top: 0;
}

.recruit_add .question_prefix dl {
	display: table;
	margin-top: 9px;
	height: 40px;
	font-size: 0;
}

.recruit_add .question_prefix dd {
	display: table-cell;
	padding-right: 9px;
	vertical-align: top;
}

.recruit_add .question_prefix .radio {
	display: inline-block;
	position: relative;
	vertical-align: top;
	user-select: none;
}

.recruit_add .question_prefix .radio input[type="radio"] {
	clip: rect(1px, 1px, 1px, 1px);
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	color: transparent;
	background: none;
	-webkit-appearance: none;
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

/* 체크박스 */
input[type=radio]+label {
	/* border: 1px solid #bcbcbc; */
	border-radius: 5px;
}
</style>
</head>
<body>
	<div class="step_recruit" id="frmTemplate">
		<div class="frm_body frm_template">
			<!-- 인사통 -->
			
			<div class="items" id="insatong">
				<input type="hidden" name="insatong_page_action" value="add" id="insatong_page_action">

				<div class="area_tit">
					<strong class="tit">인사통</strong>
				</div>
				
				<div class="area_data">
					<p class="desc_template">구직자가 궁금해하는 질문을 모았습니다. 답변을 등록해 지원율을 높여보세요</p>

					<ul class="tabList" data-help_target="insatong">
						<li id="cm1" class="select"><button type="button"
								class="inTab" data-target="tab1"
								onmousedown="try{n_trackEvent('recruit_add', 'insatong', 'tab', '1');}catch(e){}">
								<span>근무 환경</span>
							</button></li>
						<li id="cm2"><button type="button" class="inTab"
								data-target="tab2"
								onmousedown="try{n_trackEvent('recruit_add', 'insatong', 'tab', '2');}catch(e){}">
								<span>복지/처우</span>
							</button></li>
						<li id="cm3"><button type="button" class="inTab"
								data-target="tab3"
								onmousedown="try{n_trackEvent('recruit_add', 'insatong', 'tab', '3');}catch(e){}">
								<span>입사 전형</span>
							</button></li>
						<li id="cm4"><button type="button" class="inTab"
								data-target="tab4"
								onmousedown="try{n_trackEvent('recruit_add', 'insatong', 'tab', '4');}catch(e){}">
								<span>지원 자격</span>
							</button></li>
						<li id="cm5"><button type="button" class="inTab"
								data-target="tab5"
								onmousedown="try{n_trackEvent('recruit_add', 'insatong', 'tab', '5');}catch(e){}">
								<span>자유 질문</span>
							</button></li>
					</ul>
					<!-- 인사통 탭리스트 -->

					<div class="wrap_cont">
						<div id="insatong_cont">
							<div class="cont_tab cont_prefix" id="section_1" style="display: block;">
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

							<div class="cont_tab cont_prefix" id="section_2" style="display: block;">
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

							<div class="cont_tab cont_prefix" id="section_3" style="display: block;">
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
												value="1_3"><label for="insa_1">마감 후 1~2주 이내</label></span>
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

							<div class="cont_tab cont_prefix" id="section_4" style="display: block;">
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

							<div class="cont_tab cont_user" id="section_5" style="display: block;">
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
						<!-- 인사통 div end -->
						<button type="button" class="btn_tab prev">
							<span class="blind">이전</span>
						</button>
						<button type="button" class="btn_tab next on">
							<span class="blind">다음</span>
						</button>
					</div>
					<!-- wrap_cont div end -->

				</div>
				<!-- area_data end -->
				
			</div>
			<!-- .items insatong end -->
			
		</div>
		<!-- .frm_body end -->
	</div>
	<!-- step_recruit end -->
</body>
</html>