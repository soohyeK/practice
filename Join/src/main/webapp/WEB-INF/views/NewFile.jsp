<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script>
	
	$(function(){
		
		$("#regi_btn").click(function(){
			
			
			
			var emailRule = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
			var email = $("#email1").val() + '@' + $("#email2").val();
			
// 			aaaa@naver.com
			
			if(!emailRule.test(email)){
				alert("유효하지 않은");
			}
			
		})
		
		$("#idChk").click(function(){
			var id = $("#id").val();
			var engNum =  /^[a-zA-Z0-9]*$/;
			
			if(id == ''){
				alert("아이디를 입력하세요");
				$("#id").focus();
			}else if(!engNum.test(id)){
				alert("영어 숫자만 가능합니다.");
				$("#id").val("");
			}else if(id=='test'){
				alert("중복");
			}else{
				alert("사용가능");
			}
			
		})
		
		
		
// 		$("#name").on("keyup", function(){
			
// 		})
		
		$("#name").keyup(function(){
			
			if($("#name").val().length > 5){
				
				$("#name").val( $("#name").val().slice(0, 5) );
				
// 				$("#name").val().slice()
// 				$("#name").val().substr()
				
// 				123456aaaa.slice(4,5)
// 				123456aaaa.substr(4,5)
				
				
// 				$("#name").val().charAt()
				
				
			}
			
		})
		
		$("#jumin2").keyup(function(){
			var jumin2 = $("#jumin2").val().charAt($("#jumin2").val().length-1);
			$("#jumin3").val( $("#jumin3").val() + jumin2 );
			
			if($("#jumin2").val().length > 1){
				$("#jumin2").val( $("#jumin2").val().slice(0,-1) + '*' );
			}
			
		})
		
	})
	
	
</script>
</head>
<body>
<form>
 <table width="1400" height="650">
  <tr>
   <td width="100%" height="10%">회원가입
   </td>
  </tr>
  <tr>
   <td height="60%" align="center" valign="top">
   <hr><br>
   <p align="left" style="padding-left:160px">
   <br><br>
   ID : <input type="text" size="10" maxlength="15" name="id" id = "id">
   		<input type = "button" name = "idChk" id = "idChk" value = "중복체크">
   <br><br>
   비밀번호 : <input type="password" size="15" maxlength="20" name="pass" id = "pass"><br><br>
   비밀번호 확인 : <input type="password" size="15" maxlength="20" name="pass2" id = "pass2"><br><br>
   이름 : <input type="text" size="13" name="name" id = "name"><br><br>
   이메일 : <input type="text" size="15" name="email1" id = "email1">@<input type="text" size="15" name="email2" id = "email2"><br><br>
   휴대폰 : <select name="ph1">
       <option value="010">010</option>
       <option value="011">011</option>
       <option value="016">016</option>
       <option value="017">017</option>
       <option value="019">019</option>
     </select>
     - <input type="text" name="ph2" size="5" maxlength="4" id = "ph2"> - <input type="text" name="ph3" size="5" maxlength="4" id = "ph3"><br><br>
   성별 : <input type="radio" name="gender" value="남자"> 남자&nbsp;&nbsp;
  	    <input type="radio" name="gender" id = "female" value="여자"><label for = "female">여자</label>	<br><br>
   주민번호 : <input type = "text" name = "jumin1" id = "jumin1"> -  <input type = "text" name = "jumin2" id = "jumin2" >
   			<input type = "hidden" name = "jumin3" id = "jumin3"><br><br>
   주소 : <input type="text" name="address" size="15" maxlength="15" on><br>
   *주소는 (시/도)만 입력해주세요 (예: 경기도, 서울특별시, 경상남도 등)
   </p>
  </td>
  </tr>
  <tr>
   <td align="center">
   <hr><br>
    <input type="button"  id = "regi_btn" value="가입신청">&nbsp;
    <input type="reset" value="다시입력">&nbsp;
    <input type="button" value="취소">
   </td>
  </tr>
 </table>
</form>
</body>
</html>