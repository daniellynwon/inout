<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>newNotice.do</title>
</head>
<body>
	<h1>들어온 아이디 : ${sessionScope.loginComp.comp_id }</h1>
	<h1>새로운 공고를 등록하는 창</h1>
	
	<form action="./newNoticeStep1.do" method="post">
		<table>
			<tr>
				<th>채용공고이름</th>
				<td><input type="text" name="notice_title" id=""  value="채용공고 이름"/></td>
			</tr>
			<tr>
				<th>담당자 성함</th>
				<td><input type="text" name="notice_man" id="" value="담당자"/></td>
			</tr>
			<tr>
				<th>담당자 부서</th>
				<td><input type="text" name="notice_man_dept" id="" value="부서" /></td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td><input type="text" name="notice_man_tel" id=""  value="010-1234-5789"/></td>
			</tr>
			<tr>
				<th>휴대폰 번호</th>
				<td><input type="text" name="notice_man_mp" id="" value="010-2313-1413"/></td>
			</tr>
			<tr>
				<th>이메일 주소</th>
				<td><input type="text" name="notice_man_email" id="" value="dd@dd.dd"/></td>
			</tr>
			<tr>
				<th>업종(체크박스)</th>
				<td><input type="text" name="notice_comp_type" id="" value="101"/></td>
			</tr>
			<tr>
				<th>대표 근무지역(구분값)</th>
				<td><input type="text" name="notice_comp_adrs1" id="" value="10101"/></td>
			</tr>
			<tr>
				<th>세부 지역</th>
				<td><input type="text" name="notice_comp_adrs1_detail" id="" value="시흥대로 161가길 11"/></td>
			</tr>
			<tr>
				<th>인근지역(구분값)</th>
				<td><input type="text" name="notice_comp_adrs2" id="" value="0"/></td>
			</tr>
			<tr>
				<th>복리후생</th>
				<td><input type="text" name="notice_comp_benefits" id="" value="커피제공"/></td>
			</tr>
			<tr>
				<th>지원자 학력(구분값)</th>
				<td><input type="text" name="notice_req_edu" id="" value="2"/></td>
			</tr>
			<tr>
				<th>연봉/급여(구분값)</th>
				<td><input type="text" name="notice_req_sal" id="" /></td>
			</tr>
			<tr>
				<th>근무형태(체크박스)</th>
				<td><input type="text" name="notice_req_worktype" id="" value="1,2,3"/></td>
			</tr>
			<tr>
				<th>정규직수습기간</th>
				<td><input type="text" name="notice_req_jgj_susb" id="" value="3" /></td>
			</tr>
			<tr>
				<th>계약직계약기간</th>
				<td><input type="text" name="notice_req_gyj_gigan" id="" /></td>
			</tr>
			<tr>
				<th>계약직-정규직전환여부(구분값)</th>
				<td><input type="text" name="notice_req_gyj_tojgj" id="" /></td>
			</tr>
			<tr>
				<th>인턴기간</th>
				<td><input type="text" name="notice_req_int_gigan" id="" /></td>
			</tr>
			<tr>
				<th>인턴직-정규직전환여부(구분값)</th>
				<td><input type="text" name="notice_req_int_tojgj" id="" /></td>
			</tr>
			<tr>
				<th>파견직파견기간</th>
				<td><input type="text" name="notice_req_pgj_gigan" id="" /></td>
			</tr>
			<tr>
				<th>파견직-정규직전환여부(구분값)</th>
				<td><input type="text" name="notice_req_pgj_tojgj" id="" /></td>
			</tr>
			<tr>
				<th>근무요일</th>
				<td><input type="text" name="notice_req_workday" id="" value="월화수목금"/></td>
			</tr>
			<tr>
				<th>근무시간</th>
				<td><input type="text" name="notice_req_worktime" id="" value="09:00~18:00" /></td>
			</tr>
			<tr>
				<th>성별구분(구분값)</th>
				<td><input type="text" name="notice_req_gendewr" id="" /></td>
			</tr>
			<tr>
				<th>최대연령(출생년도로 입력)</th>
				<td><input type="text" name="notice_req_minage" id="" /></td>
			</tr>
			<tr>
				<th>최소연령(출생년도로 입력)</th>
				<td><input type="text" name="notice_req_maxage" id="" /></td>
			</tr>
			<tr>
				<th>공고대표직무</th>
				<td><input type="text" name="notice_prcs_job" id="" /></td>
			</tr>
			<tr>
				<th>접수시작날짜</th>
				<td><input type="text" name="notice_prcs_start" id="" /></td>
			</tr>
			<tr>
				<th>접수종료날짜</th>
				<td><input type="text" name="notice_prcs_end" id="" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="공고 저장" /> <input type="reset" value="reset" /></td>
			</tr>
		</table>
	</form>
</body>
</html>