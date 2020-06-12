<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Job Post Edit Page</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		/* $('.frm_body'). */
		/* 수정 추가하기 버튼 누르면 textfield 활성화 */
		
	});
	
	$(document).ready(function(){
		$('.frm_body').attr("readonly", true).attr("disabled", false);
	});
	
</script>

<!-- CSS 적용 -->
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/job_post_css.css'/>">
</head>
<body>
	
	<div class="wrap_recruit_frm">
		<form action="#" method="post">
			<div class="step_recruit" id="frmManager">
				<div id="manager">
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
								<span class="manager_name"> <input type="text"
									name="comp_name" id="" class="inpTypo sizeL" title="회사 이름 입력"
									placeholder="회사 이름 입력" maxlength="30" style="width: 300px;" />
								</span>
							</div>
						</div>

						<div class="items">
							<div class="area_tit">
								<strong class="tit">채용공고 이름</strong>
							</div>
							<div class="area_data">
								<span class="manager_name"> <input type="text"
									name="notice_title" id="" class="inpTypo sizeL"
									title="채용 공고 이름 입력" placeholder="채용 공고 이름 입력" maxlength="50"
									style="width: 600px;" />
								</span>
							</div>
						</div>

						<div class="items">
							<div class="area_tit">
								<strong class="tit">담당자 성함</strong>
							</div>
							<div class="area_data">
								<span class="manager_name"> <input type="text"
									name="notice_man" id="manager_nm" class="inpTypo sizeL"
									title="담당자명 입력" placeholder="담당자명 입력" maxlength="30"
									style="width: 300px;" />
								</span> <span class="manager_part"> <input type="text"
									name="notice_man_dept" id="manager_dept" class="inpTypo sizeL"
									title="담당자 부서명 입력" placeholder="담당자 부서명" maxlength="30"
									style="width: 300px;" />
								</span>
							</div>
						</div>

						<div class="items">
							<div class="area_tit">
								<strong class="tit">전화번호</strong>
							</div>
							<div class="area_data">
								<span class="manager_phone"> <input type="text" id="tel1"
									name="notice_man_tel1" class="inpTypo sizeL _filter"
									title="전화번호 첫번째 자리 입력" maxlength="3" placeholder="070">
								</span> <span class="manager_phone">
									<p class="dash">-</p> <input type="text" id="tel2"
									name="notice_man_tel2" class="inpTypo sizeL _filter"
									title="전화번호 두번째 자리 입력" maxlength="4" placeholder="1234">
								</span> <span class="manager_phone">
									<p class="dash">-</p> <input type="text" id="tel3"
									name="notice_man_tel3" class="inpTypo sizeL _filter"
									title="전화번호 세번째 자리 입력" maxlength="4" placeholder="5678">
								</span>
							</div>
						</div>

						<div class="items">
							<div class="area_tit">
								<strong class="tit">담당자 휴대폰</strong>
							</div>
							<div class="area_data">
								<span class="manager_phone"> <input type="text"
									name="cell1" id="notice_man_mp1" class="inpTypo sizeL"
									title="휴대폰 첫번째 자리 입력" maxlength="3" placeholder="010" />
								</span> <span class="manager_phone">
									<p class="dash">-</p> <input type="text" name="cell2"
									id="notice_man_mp2" class="inpTypo sizeL" title="휴대폰 두번째 자리 입력"
									maxlength="4" placeholder="1234" />
								</span> <span class="manager_phone">
									<p class="dash">-</p> <input type="text" name="cell3"
									id="notice_man_mp3" class="inpTypo sizeL" title="휴대폰 세번째 자리 입력"
									maxlength="4" placeholder="5678" />
								</span>
							</div>
						</div>

						<div class="items">
							<div class="area_tit">
								<strong class="tit">이메일 주소</strong>
							</div>
							<div class="area_data">
								<div class="manager_email">
									<input type="text" id="email" name="notice_man_email"
										class="inpTypo sizeL" title="이메일 주소 입력"
										placeholder="이메일 주소를 입력해주세요.">
								</div>
							</div>
						</div>

						<div class="items">
							<div class="area_tit">
								<strong class="tit">업종</strong>
							</div>
							<div class="area_data" id="industry">
								<div class="selected_item" id="industry_summary">
									<!-- <p class="txt_placeholder">업종은 최대 1개 선택할 수 있습니다.</p> -->
									<!-- <ul class="list_selected_item frm_box_list" data-help_target="industry"> -->
									<input type="text" name="" id="list_selected_item"
										class=" inpTypo sizeL inp_keyword" style="border: none;"
										title="업종명" placeholder="업종명을 입력하세요">
									<button type="button" class="btn_add btn btn-link btn_more_ly"
										id="btn_cat_area">수정·추가하기</button>
								</div>

								<div class="wrap_layer">
									<div class="layer_frm layer_add_industry"
										id="industry_all_list">
										<div class="area_keyword">
											<div class="wrap_search" id="industry_auto_complete_wrap">
											</div>
										</div>

										<div class="area_category_select">
											<div class="depth1">
												<div class="area_scroll category_step">
													<ul class="list_category" id="ul_cat_list">
														<li class="on" data-depth="0" value="100">
															<button type="button" class="btn btn-default">서비스업</button>
														</li>

														<li class="on" data-depth="0" value="200">
															<button type="button" class="btn btn-default">제조·화학</button>
														</li>

														<li class="on" data-depth="0" value="300">
															<button type="button" class="btn btn-default">IT·웹·통신</button>
														</li>

														<li class="on" data-depth="0" value="400">
															<button type="button" class="btn btn-default">은행·금융업</button>
														</li>

														<li class="on" data-depth="0" value="500">
															<button type="button" class="btn btn-default">미디어·디자인</button>
														</li>

														<li class="on" data-depth="0" value="1000">
															<button type="button" class="btn btn-default">기관·협회</button>
														</li>
													</ul>
												</div>
											</div>

											<!-- 두번째 카테고리 -->
											<div class="depth2" id="100" style="display: table-cell;">
												<div class="area_scroll category_step">
													<ul class="list_category">
														<li class="on1" data-depth="1" data-mcode="1"
															data-bcode="108" value="호텔·여행·항공">
															<button type="button" class="btn_depth2" value="호텔·여행·항공">호텔·여행·항공</button>
														</li>

														<li class="on1" data-depth="1" data-mcode="1"
															data-bcode="109" value="외식업·식음료">
															<button type="button" class="btn_depth2" value="외식업·식음료">외식업·식음료</button>
														</li>

														<li class="on1" data-depth="1" data-mcode="1"
															data-bcode="111" value="시설관리·경비·용역">
															<button type="button" class="btn_depth2"
																value="시설관리·경비·용역">시설관리·경비·용역</button>
														</li>

														<li class="on1" data-depth="1" data-mcode="1"
															data-bcode="115" value="레저·스포츠·여가">
															<button type="button" class="btn_depth2"
																value="레저·스포츠·여가">레저·스포츠·여가</button>
														</li>

														<li class="on1" data-depth="1" data-mcode="1"
															data-bcode="118" value="AS·카센터·주유">
															<button type="button" class="btn_depth2"
																value="AS·카센터·주유">AS·카센터·주유</button>
														</li>

														<li class="on1" data-depth="1" data-mcode="1"
															data-bcode="119" value="렌탈·임대">
															<button type="button" class="btn_depth2" value="렌탈·임대">렌탈·임대</button>
														</li>

														<li class="on1" data-depth="1" data-mcode="1"
															data-bcode="120" value="웨딩·장례·이벤트">
															<button type="button" class="btn_depth2"
																value="웨딩·장례·이벤트">웨딩·장례·이벤트</button>
														</li>

														<li class="on1" data-depth="1" data-mcode="1"
															data-bcode="121" value="기타서비스업">
															<button type="button" class="btn_depth2" value="기타서비스업">기타서비스업</button>
														</li>

														<li class="on1" data-depth="1" data-mcode="1"
															data-bcode="122" value="뷰티·미용">
															<button type="button" class="btn_depth2" value="뷰티·미용">뷰티·미용</button>
														</li>
													</ul>
												</div>
											</div>

											<div class="depth2" id="200" style="display: table-cell;">
												<div class="depth2" id="200" style="display: table-cell;">
													<div class="area_scroll category_step">
														<ul class="list_category">
															<li class="on1" data-depth="1" data-mcode="2"
																data-bcode="201" value="전기·전자·제어">
																<button type="button">전기·전자·제어</button>
															</li>

															<li class="on1" data-depth="1" data-mcode="2"
																data-bcode="202" value="기계·설비·자동차">
																<button type="button">기계·설비·자동차</button>
															</li>

															<li class="on1" data-depth="1" data-mcode="2"
																data-bcode="204" value="석유·화학·에너지">
																<button type="button">석유·화학·에너지</button>
															</li>

															<li class="on1" data-depth="1" data-mcode="2"
																data-bcode="205" value="섬유·의류·패션">
																<button type="button">섬유·의류·패션</button>
															</li>

															<li class="on1" data-depth="1" data-mcode="2"
																data-bcode="207" value="화장품·뷰티">
																<button type="button">화장품·뷰티</button>
															</li>

															<li class="on1" data-depth="1" data-mcode="2"
																data-bcode="208" value="생활용품·소비재·사무">
																<button type="button">생활용품·소비재·사무</button>
															</li>

															<li class="on" data-depth="1" data-mcode="2"
																data-bcode="209" value="가구·목재·제지">
																<button type="button">가구·목재·제지</button>
															</li>

															<li class="on" data-depth="1" data-mcode="2"
																data-bcode="210" value="농업·어업·광업·임업">
																<button type="button">농업·어업·광업·임업</button>
															</li>

															<li class="on" data-depth="1" data-mcode="2"
																data-bcode="211" value="금속·재료·철강·요업">
																<button type="button">금속·재료·철강·요업</button>
															</li>

															<li class="on" data-depth="1" data-mcode="2"
																data-bcode="212" value="212">
																<button type="button">조선·항공·우주</button>
															</li>

															<li class="on" data-depth="1" data-mcode="2"
																data-bcode="213" value="213">
																<button type="button">기타제조업</button>
															</li>

															<li class="on" data-depth="1" data-mcode="2"
																data-bcode="214" value="214">
																<button type="button">식품가공·개발</button>
															</li>

															<li class="on" data-depth="1" data-mcode="2"
																data-bcode="215" value="215">
																<button type="button">반도체·광학·LCD</button>
															</li>

															<li class="on" data-depth="1" data-mcode="2"
																data-bcode="216" value="216">
																<button type="button">환경</button>
															</li>
														</ul>
													</div>
												</div>

												<div class="depth2" id="300" style="display: table-cell;">
													<div class="area_scroll category_step">
														<ul class="list_category">
															<li class="on1" data-depth="1" data-mcode="3"
																data-bcode="301" value="솔루션·SI·ERP·CRM">
																<button type="button">솔루션·SI·ERP·CRM</button>
															</li>

															<li class="on1" data-depth="1" data-mcode="3"
																data-bcode="302" value="웹에이젼시">
																<button type="button">웹에이젼시</button>
															</li>

															<li class="on1" data-depth="1" data-mcode="3"
																data-bcode="304" value="쇼핑몰·오픈마켓">
																<button type="button">쇼핑몰·오픈마켓</button>
															</li>

															<li class="" data-depth="1" data-mcode="3"
																data-bcode="305">
																<button type="button">포털·인터넷·컨텐츠</button>
															</li>

															<li class="" data-depth="1" data-mcode="3"
																data-bcode="306">
																<button type="button">네트워크·통신·모바일</button>
															</li>

															<li class="" data-depth="1" data-mcode="3"
																data-bcode="307">
																<button type="button">하드웨어·장비</button>
															</li>

															<li class="" data-depth="1" data-mcode="3"
																data-bcode="308">
																<button type="button">정보보안·백신</button>
															</li>

															<li class="" data-depth="1" data-mcode="3"
																data-bcode="313">
																<button type="button">IT 컨설팅</button>
															</li>

															<li class="" data-depth="1" data-mcode="3"
																data-bcode="314">
																<button type="button">게임</button>
															</li>

														</ul>
													</div>
												</div>

												<div class="depth2" id="400" style="display: table-cell;">
													<div class="area_scroll category_step">
														<ul class="list_category">
															<li class="on1" data-depth="1" data-mcode="4"
																data-bcode="401" value="은행·금융·저축">
																<button type="button">은행·금융·저축</button>
															</li>

															<li class="on1" data-depth="1" data-mcode="4"
																data-bcode="402" value="대출·캐피탈·여신">
																<button type="button">대출·캐피탈·여신</button>
															</li>

															<li class="on1" data-depth="1" data-mcode="4"
																data-bcode="405" value="기타금융">
																<button type="button">기타금융</button>
															</li>

															<li class="on1" data-depth="1" data-mcode="4"
																data-bcode="406" value="증권·보험·카드">
																<button type="button">증권·보험·카드</button>
															</li>

														</ul>
													</div>
												</div>

												<div class="depth2" id="500" style="display: table-cell;">
													<div class="area_scroll category_step">
														<ul class="list_category">
															<li class="on1" data-depth="1" data-mcode="5"
																data-bcode="501" value="신문·잡지·언론사">
																<button type="button">신문·잡지·언론사</button>
															</li>

															<li class="on1" data-depth="1" data-mcode="5"
																data-bcode="502" value="방송사·케이블">
																<button type="button">방송사·케이블</button>
															</li>

															<li class="on1" data-depth="1" data-mcode="5"
																data-bcode="503" value="연예·엔터테인먼트">
																<button type="button">연예·엔터테인먼트</button>
															</li>

															<li class="on1" data-depth="1" data-mcode="5"
																data-bcode="504" value="광고·홍보·전시">
																<button type="button">광고·홍보·전시</button>
															</li>

															<li class="on1" data-depth="1" data-mcode="5"
																data-bcode="505" value="영화·배급·음악">
																<button type="button">영화·배급·음악</button>
															</li>

															<li class="" data-depth="1" data-mcode="5"
																data-bcode="506">
																<button type="button">공연·예술·문화</button>
															</li>

															<li class="" data-depth="1" data-mcode="5"
																data-bcode="509">
																<button type="button">출판·인쇄·사진</button>
															</li>

															<li class="" data-depth="1" data-mcode="5"
																data-bcode="510">
																<button type="button">캐릭터·애니메이션</button>
															</li>

															<li class="" data-depth="1" data-mcode="5"
																data-bcode="511">
																<button type="button">디자인·설계</button>
															</li>

														</ul>
													</div>
												</div>

												<div class="depth2" id="1000" style="display: table-cell;">
													<div class="area_scroll category_step">
														<ul class="list_category">
															<li class="on1" data-depth="1" data-mcode="10"
																data-bcode="1001" value="정부·공공기관·공기업">
																<button type="button">정부·공공기관·공기업</button>
															</li>

															<li class="on1" data-depth="1" data-mcode="10"
																data-bcode="1002" value="협회·단체">
																<button type="button">협회·단체</button>
															</li>

															<li class="on1" data-depth="1" data-mcode="10"
																data-bcode="1003" value="법률·법무·특허">
																<button type="button">법률·법무·특허</button>
															</li>

															<li class="on1" data-depth="1" data-mcode="10"
																data-bcode="1004" value="세무·회계">
																<button type="button">세무·회계</button>
															</li>

															<li class="on1" data-depth="1" data-mcode="10"
																data-bcode="1005" value="연구소·컨설팅·조사">
																<button type="button">연구소·컨설팅·조사</button>
															</li>

														</ul>
													</div>
												</div>
												<!-- 두번째 카테고리 끝 -->

											</div>
											<!-- area_category_select end -->

											<div class="area_btn">
												<button type="button"
													class="btnSizeL colorWhite close_layer" id="btn_lit_cnc">취소</button>
												<button type="button"
													class="btnSizeL colorBlue confirm_layer" id="btn_lit_chk">확인</button>
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
							<div class="area_tit">
								<strong class="tit">대표 근무지역</strong>
							</div>
							<div class="area_data" id="address">
								<div class="manager_location">
									<span class="inpChk"> <!-- <input type="checkbox" id="chk_typ3_01" name="work-site-cd" value="site050" data-help_target="company_address">
								<label class="lbl" for="chk_typ3_01">재택근무 가능</label> -->
									</span>
								</div>

								<!-- 근무지역 input -->
								<div class="input_address internal">
									<span class="manager_address">
										<input type="text" class="inpTypo sizeL address01 _inputWrapper"
										id="address_depth1" name="notice_comp_adrs1" data-help_target="company_address" title="주소 입력"
										placeholder="서울특별시 구로구 구로3동 시흥대로 ">
									</span>
									<span class="manager_address2">
										<input type="text" class="inpTypo sizeL address02 _inputWrapper"
										id="address_depth2" name="notice_comp_adrs1_detail" data-help_target="company_address" title="상세주소 입력"
										placeholder="상세주소 : 예) 187-10 코오롱싸이언스밸리">
									</span>
									<span class="manager_address3">
										<input type="text" class="inpTypo sizeL address02 _inputWrapper"
										id="address_depth3" name="notice_comp_adrs2" data-help_target="company_address" title="인근 지역"
										placeholder="인근지역: 예) 관악구">
									</span>
								</div>
							</div>
						</div>
						<!-- 대표 근무지역 end -->


					</div>
					<!-- frm_body frm_manager end -->

				</div>
				<!-- div id manager end -->
				
				<input type="submit" value="수정하기" id="btn_edit" class="btn btn-primary btn-lg" style="border: none; background-color: white; margin: 0 auto; width:100%; "/>
				
			</div>
		</form>
	</div>
	
	
</body>
</html>