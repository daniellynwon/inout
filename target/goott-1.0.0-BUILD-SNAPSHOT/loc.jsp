<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">


ol, ul, li {
	list-style: none;
}

</style>
</head>
<body>
	<div id="locdiv" style="background-color: white; width: 810px; height: 300px; position: absolute; left: 280px; border: 1px solid #a3a3a3;">

		<ul>
			<li style="float: left;"><input id="locplace" type="text"
				placeholder="(근무지역 최대 3개)" style="float: l6eft; margin-left: 20px; width: 650px; height: 50px; border: 1px solid #a3a3a3; border-radius: 2px;" />

				<button value="초기화"
					style="width: 75px; height: 50px; padding: 0px; border: 1px solid #a3a3a3; background-color: white;">
					<label for="" class="locbuttonlabel">초기화</label>
				</button>
			</li>

		</ul>

		<div style="width: 150px; height: 250px; background-color: white; float: left; border: 1px solid #a3a3a3;">
		
			<button class="klocbutton" id="seoulbtn">
				<label for="" class="locbuttonlabel">서울</label>
			</button>

			<button class="klocbutton" id="Gyeonggibtn">
				<label for="" class="locbuttonlabel">경기</label>
			</button>

			<button class="klocbutton" id="Daegubtn">
				<label for="" class="locbuttonlabel">대구</label>
			</button>

			<button class="klocbutton" id="Daejeonbtn">
				<label for="" class="locbuttonlabel">대전</label>
			</button>

		</div>


		<div style="width: 646px; height: 250px; background-color: white; float: right; border: 1px solid #a3a3a3;">
		
			<div class="seoul" style="width: 598px; height: 230px; background-color: white;" id="seouldiv">

				<input class="gu" type="radio" name="seoulloc" id="guro" value="구로구" />구로구

				<input class="gu" type="radio" name="seoulloc" id="mapo" value="마포구" />마포구

				<input class="gu" type="radio" name="seoulloc" id="dongdaemoon" value="동대문구" />동대문구
				<input class="gu" type="radio" name="seoulloc" id="songpa" value="송파구" />송파구
				<input class="gu" type="radio" name="seoulloc" id="dongjak" value="동작구" />동작구
				<input class="gu" type="radio" name="seoulloc" id="dragonmountain" value="용산구" />용산구
				<hr />

				<input type="radio" name="Gyeonggiloc" id="anyang" value="안양시" />안양시
				<input type="radio" name="Gyeonggiloc" id="ilsan" value="일산" />일산
				<input type="radio" name="Gyeonggiloc" id="gunpo" value="군포시" />군포시
				<input type="radio" name="Gyeonggiloc" id="goldsky" value="금천구" />금천구
				<input type="radio" name="Gyeonggiloc" id="dragonhuman" value="용인시" />용인시
				<input type="radio" name="Gyeonggiloc" id="fuck" value="양평시" />양평시
				<hr />

				<input type="radio" name="Daeguloc" id="" value="namgu" />남구 
				<input type="radio" name="Daeguloc" id="" value="dalsugu" />달서구
				<input type="radio" name="Daeguloc" id="" value="dalsunggun" />달성군
				<input type="radio" name="Daeguloc" id="" value="donggu" />동구
				<input type="radio" name="Daeguloc" id="" value="qukgu" />북시
				<input type="radio" name="Daeguloc" id="" value="junggu" />중구
				<hr />

				<input type="radio" name="Daejeonloc" id="daeduckgu" value="대덕구" />대덕구
				<input type="radio" name="Daejeonloc" id="donggu" value="동구" />동구
				<input type="radio" name="Daejeonloc" id="seugu" value="서구" />서구
				<input type="radio" name="Daejeonloc" id="usunggu" value="유성구" />유성구
				<input type="radio" name="Daejeonloc" id="junggu" value="중구" />중구
				<input type="radio" name="Daejeonloc" id="bukgu" value="북구" />북구



				<button style="width: 100px; height: 50px; float: right; margin-top: 125px;" class="loccancle1">
					<label for="" class="locbuttonlabel">취소</label>
				</button>

				<button id="sendloc1" style="width: 100px; height: 50px; float: right; margin-top: 125px;">
					<label for="" class="locbuttonlabel">확인</label>
				</button>

			</div>
		</div>
	</div>
</body>
</html>