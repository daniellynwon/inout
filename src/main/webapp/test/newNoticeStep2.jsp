<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>채용절차 등록</title>
</head>
<body>
	<form action="./newNoticeStep2" method="post">
		<table>
			<tr>
				<th>채용절차이름</th>
				<td><input type="text" name="notice_prcs_name" id="" value="서류전형"/></td>
			</tr>
			<tr>
				<th>채용절차타입(구분값)</th>
				<td><input type="text" name="notice_prcs_type" id="" /></td>
			</tr>
			<tr>
				<th>전형시작날짜</th>
				<td><input type="text" name="notice_prcs_detail_start" id="" value="20200608" /></td>
			</tr>
			<tr>
				<th>전형종료날짜</th>
				<td><input type="text" name="notice_prcs_detail_end" id="" value="20200620"/></td>
			</tr>
		</table>
	</form>
</body>
</html>