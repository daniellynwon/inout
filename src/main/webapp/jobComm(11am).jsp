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
		
		$('#cm1').click(function(){
			$('#section_1').show();
			$('#section_2').hide();
			$('#section_3').hide();
			$('#section_4').hide();
			$('#section_5').hide();
		});
		
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

.step_recruit .frm_body .items {
	padding: 10px 60px;
	width: 100%;
	box-sizing: border-box;
}

.frm_template .items {
	position: relative;
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

/* .recruit_add */ 
.desc_template {
	margin-top: 12px;
}

/* .recruit_add */ 
.tabList {
	margin-top: 21px;
}

/* [class*="tabList"] {
	width: 100%;
} */
/* .recruit_add */ 
.tabList>li:first-child {
	border-radius: 5px 0 0 0;
}

.tabList>li.select {
	position: relative;
	z-index: 1;
	border: 1px solid #2365f2;
	box-sizing: border-box;
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

.tabList>li:last-child {
	border-right: 1px solid #ddd;
	border-radius: 0 5px 5px 0;
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

.recruit_add {
	color: #222;
	font-size: 15px;
	letter-spacing: -1px;
}

.recruit_add .tabList>li:last-child {
	border-radius: 0 5px 0 0;
}

.recruit_add .wrap_cont {
	position: relative;
	border: 1px solid #dedede;
	border-top: 0;
}

.recruit_add .question_prefix .radio label {
	display: inline-block;
	position: relative;
	padding: 0 18px;
	height: 39px;
	border: 1px solid #cfcfcf;
	border-radius: 4px;
	box-sizing: border-box;
	color: #666;
	font-size: 14px;
	line-height: 37px;
	vertical-align: top;
}

.recruit_add .cont_tab {
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

.recruit_add .question_prefix dt {
	float: left;
	padding-right: 30px;
	color: #666;
	font-size: 14px;
	font-weight: bold;
	line-height: 39px;
	vertical-align: top;
	white-space: nowrap;
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
	opacity: 0;
}

.recruit_add .btn_tab.prev {
	left: 0;
}

.recruit_add .btn_tab.next {
	right: 0;
}

.recruit_add .btn_tab.on {
	display: block;
}

.recruit_add .btn_tab {
	display: none;
	position: absolute;
	top: 50%;
	margin-top: -43px;
	width: 44px;
	height: 86px;
	color: #979797;
}

.recruit_add .cont_user .btn_del_a, .recruit_add .cont_user .btn_add_a {
	display: inline-block;
	position: relative;
	margin: 8px 7px 0 0;
	width: 27px;
	height: 27px;
	border: 1px solid #cfcfcf;
	border-radius: 27px;
	vertical-align: top;
	background: #fff;
}

.recruit_add .question_user {
	margin-top: 9px;
}

.recruit_add .question_user .question {
	position: relative;
	z-index: 1;
	margin-top: -1px;
	padding: 20px 0;
	border: 1px solid;
	border-color: #ededed #fff;
	background: #fff;
}

.recruit_add .question_user .question dl {
	position: relative;
	z-index: 1;
}

.recruit_add .question_user .question dt {
	display: block;
	position: relative;
	padding-left: 145px;
	height: 40px;
}

.recruit_add .question_user .question label {
	position: absolute;
	top: 0;
	left: 80px;
	height: 40px;
	color: #666;
	font-size: 14px;
	font-weight: bold;
	line-height: 38px;
}

.recruit_add .question_user input[type="text"] {
	margin-right: 20px;
	width: 400px;
}

.recruit_add .cont_user .btn_del_a, .recruit_add .cont_user .btn_add_a {
	display: inline-block;
	position: relative;
	margin: 8px 7px 0 0;
	width: 27px;
	height: 27px;
	border: 1px solid #cfcfcf;
	border-radius: 27px;
	vertical-align: top;
	background: #fff;
}

.recruit_add .cont_user .btn_del_q:hover {
	border-color: #e1e1e1;
}

/* 질문 삭제 */
.recruit_add .cont_user .btn_del_q {
	position: absolute;
	top: -1px;
	right: -1px;
	z-index: 2;
	padding: 6px 0 10px;
	width: 83px;
	height: 33px;
	border: 1px solid #ededed;
	color: #888;
	font-size: 12px;
	letter-spacing: -1px;
	line-height: 16px;
	background: #fff;
}

/* 질문 추가 */
.recruit_add .cont_user .btn_add_q {
	display: inline-block;
	margin: 23px 0 0 80px;
	height: 24px;
	border-bottom: 1px solid #666;
	color: #666;
	font-size: 14px;
	font-weight: bold;
	letter-spacing: -1px;
}

.recruit_add .question_user .guide {
	display: none;
	position: relative;
	z-index: 1;
	margin-top: -1px;
	padding: 20px 0;
	height: 90px;
	border: 1px solid;
	border-color: #ededed #fff;
	line-height: 90px;
	text-align: center;
	background: #fff;
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
	<div class="step_recruit" id="frmTemplate">
		<div class="frm_body frm_template">
			<!-- 인사통 -->
			<form action="./newNoticeOk" method="post">
			
			<div class="items" id="insatong">
				<input type="hidden" name="insatong_page_action" value="add" id="insatong_page_action">

				<div class="area_tit" style="padding-left: 10px;">
					<strong class="tit">인사통</strong>
				</div>
				
				<div class="area_data" style="padding-left: 10px;">
					<p>인사통 질문 리스트 입니다.</p>
					
					<!-- 인사통 탭리스트 -->

					<div class="wrap_cont">
						<div id="insatong_cont">

								<div class="cont_tab cont_user" id="section_cmfree" style="display: block;">
									<div class="title">
										<p>
											<strong>Q. 질문을 직접 입력</strong>하고 싶으신가요?<br>
											<span class="sub">공고 또는 기업에 대해 추가로 어필하고 싶은 점을 Q&amp;A 형식으로 작성해보세요.</span>
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
						<!-- <button type="button" class="btn_tab prev">
							<span class="blind">이전</span>
						</button>
						<button type="button" class="btn_tab next on">
							<span class="blind">다음</span>
						</button> -->
					</div>
					<!-- wrap_cont div end -->

				</div>
				<!-- area_data end -->
				
			</div>
			<!-- .items insatong end -->
			
			<button type="button" id="btn_next" class="btn btn-primary btn-lg" style="border: none; background-color: white; margin: 0 auto; width:100%; "> 다음 페이지 </button>
			
			<!-- 폼태그 -->
			</form>
			
		</div>
		<!-- .frm_body end -->
		
	</div>
	<!-- step_recruit end -->
</body>
</html>