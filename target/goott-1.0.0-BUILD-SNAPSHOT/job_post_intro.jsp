<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/main/mainPage/mp_naviBar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>어떤 채용을 진행하시나요?</title>
<style type="text/css">
body{
	font-family: "나눔스퀘어";
}


.wrap_recruit_type {
	width: 1260px;
	padding: 140px 0;
	margin: 0 auto;
	background-color: #f2f6f9;
}

.tit {
	display: block;
	min-height: 120px;
	font-size: 30px;
	letter-spacing: -2px;
	text-align: center;
	margin-top: 80px;
}

.recruit_list {
	text-align: center;
}

img {
	border-radius: 6px;
	box-shadow: 0 7px 17px 0 rgba(180, 180, 180, 0.2);
	box-sizing: border-box;
}

</style>
</head>
<body>

	<div id="content" style="margin: 15px;">
		<div id="wrap_recruit_type">
			<p class="tit">
				<strong>{id }</strong>님, <br />
				<span class="txt_emph" style="font-weight: bold;">어떤 채용을 진행하시나요?</span>
			</p>
			
			<div class="recruit_list">
				<div class="basic">
					<a href="jo_job_post.jsp"><img src="../resources/images/basic_type.PNG" alt="등록하기" /></a>
				</div>
			</div>
		</div>
	</div>

</body>
</html>