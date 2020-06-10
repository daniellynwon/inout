<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>모집분야 등록</title>
</head>
<body>
	<form action="./newNoticeStep2" method="post">
		<table>
			<tr>	
				<th>모집분야명</th>
				<td><input type="text" name="notice_want_name" id="" value="모집분야명"/></td>
			</tr>
			<tr>
				<th>모집인원</th>
				<td><input type="text" name="notice_want_many" id="" value="5"/></td>
			</tr>
			<tr>
				<th>최소경력</th>
				<td><input type="text" name="notice_want_mincar" id="" value="0"/></td>
			</tr>
			<tr>
				<th>최대경력</th>
				<td><input type="text" name="notice_want_maxcar" id="" value="0"/></td>
			</tr>
			<tr>
				<th>담당업무</th>
				<td><input type="text" name="notice_want_task" id="" /></td>
			</tr>
			<tr>
				<th>근무부서</th>
				<td><input type="text" name="notice_want_dept" id="" /></td>
			</tr>
			<tr>
				<th>필수/우대조건(체크박스)</th>
				<td><input type="text" name="notice_want_condition" id="" /></td>
			</tr>
		</table>
	</form>
</body>
</html>