<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="user_content">
		<div class="pc_recruit_template ver2 blue check">
			<table class="info_recruit_template">
				<tbody>
					<tr>
						<td>
							<div class="top_recruit_template">
								<div class="top_area type1">
									<div class="info_top">
										<div class="img_top" id="template_image"></div>
										<div class="wrap_top">
											<div class="cont_top">
												<div class="inner">
													<div class="tit_top" id="template_common_title">
														<div>{ 채용 공고 제목 }</div>
													</div>
												</div>
											</div>
										</div>
									</div>	<!-- div info_top end -->
									<div class="desc_top" id="template_common_company_intro" style="display: none;">
										<div>학원 설명</div>
									</div>
								</div>
							</div>	<!-- class top_recruit_template -->
							
						</td>
					</tr>
				</tbody>
			</table>
			<table class="cont_recruit_template">
				<tr>
					<td>
						<div class="btns">
							<a href="jp_want_edit.jsp" target="_blank">
								<button type="button" class="spr_jview btn_jview btn_modify" style="margin: 0 auto; width: 100%; border: none;">
								<span>모집분야 수정</span></button>
							</a>
							<a href="jp_want_edit.jsp" target="_blank">
								<button type="button" class="spr_jview btn_jview btn_modify" style="margin: 0 auto; width: 100%; border: none;">
								<span>모집분야 추가</span></button>
							</a>
						</div>
					</td>
				</tr>
			</table>
			<div class="wrap_tbl_template">
				<h2 class="tit_template" id="template_divisions_title">
					<span class="ico">모집분야</span>
				</h2>
				<table class="tbl_template txt_type tbl_list" id="divisionTable">
					<tbody>
						<tr id="common_table">
							<td id="recruit_name">모집분야명: <%=request.getParameter("notice_want_name") %></td>
						</tr>
						<tr>
							<td id="career_no">경력 여부: <%=request.getParameter("car") %> <%=request.getParameter("newb") %></td>
						</tr>
						<tr>
							<td id="respons">담당 업무: <%=request.getParameter("notice_want_task") %></td>
						</tr>
						<tr>
							<td id="dept">근무 부서: <%= request.getParameter("notice_want_dept") %></td>
						</tr>
						<tr>
							<td id="preference">필수우대조건: <%= request.getParameter("pre") %></td>
						</tr>
					</tbody>
				</table>
				<table class="cont_recruit_template">
					<tr>
						<td>
							<div class="btns">
								<a href="jp_prcs_edit.jsp" target="_blank">
									<button type="button" class="spr_jview btn_jview btn_modify" style="margin: 0 auto; width: 100%; border: none;">
									<span>모집분야 수정</span></button>
								</a>
								<a href="jp_prcs_edit.jsp" target="_blank">
									<button type="button" class="spr_jview btn_jview btn_modify" style="margin: 0 auto; width: 100%; border: none;">
									<span>모집분야 추가</span></button>
								</a>
							</div>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</body>
</html>