<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>체크박스</title>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script>

	$(function() {

		//전체체크와 헤제
		$("#all").click(function() {
			if($("#all").is(":checked")) {
				
				//체크에 따른 출력
				var txt = "";
				$("[name=item]").each(function(){
					if($(this).prop("checked")==false){
						txt += $(this).val();
					}
				})
				$("#result").append(txt); //
				$("[name=item]").prop("checked", true);
			}else{ 
				$("[name=item]").prop("checked", false);
				$("#result").text("");	  //
			}
	});
	
		//아이템 전체 체크도 전체체크
		$("[name=item]").click(function() {
			var total = $("[name=item]").length;
			var checked = $("[name=item]:checked").length;
		
			if(total != checked) {
				$("#all").prop("checked", false);
			}else{ $("#all").prop("checked", true); 
		}
			//체크에 따른 출력
			if($(this).is(":checked")){
				$("#result").append($(this).val());
			}else{
				$("#result").text( $("#result").text().replace($(this).val(), "") ); 
		}
	});
	
		//체크박스 성공 실패
		$("#check").click(function() {
			var checked = $("[name=item]:checked").length;
			if (checked == 0) {
				alert("선택해주세요");
			}else if(checked <= 4 || $("all").is(":checked")) { 
				alert("성공");
			}else{ 
				alert("실패");
		}
	});


});


</script>
</head>

<body>
	<h3>체크박스 클리어!</h3>
	<hr>
	
	<form method="get" action="CheckboxServlet">
		<input type="checkbox" name="all" id="all" value="all"><label for = "all">all</label>
		<input type="button" name="check" id="check" value="확인">
		<br><br>
		<input type="checkbox" name="item" id="a" value="사과"><label for = "a">사과</label>
		<input type="checkbox" name="item" id="b" value="포도"><label for = "b">포도</label>
		<input type="checkbox" name="item" id="c" value="감귤"><label for = "c">감귤</label>
		<input type="checkbox" name="item" id="d" value="백향과"><label for = "d">백향과</label>
		<input type="checkbox" name="item" id="e" value="리치"><label for = "e">리치</label>
		<input type="checkbox" name="item" id="f" value="망고"><label for = "f">망고</label>
		<input type="checkbox" name="item" id="g" value="키위"><label for = "g">키위</label>
		<input type="checkbox" name="item" id="h" value="파인애플"><label for = "h">파인애플</label>
		<input type="checkbox" name="item" id="i" value="수박"><label for = "i">수박</label>
		<br><br>
		<div id="result"></div>
	</form>

</body>
</html>