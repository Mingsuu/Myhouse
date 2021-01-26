	$(document).ready(function(){
		
	/**
	 *	회원가입 중복체크
	 */
	$("#idCheck").click(function(){
		if(!ruleCheck($("#id"))){
			return false;
		}else{
			//ajax를 활용한 서버연동
			$.ajax({
				url:"idCheck.do?id="+$("#id").val(),
				success:function(result){
					if(result==1){
						$("#idcheck_result").text("이미 중복된 아이디가 존재합니다. 다시 입력해주세요.")
						.css("color","red");
						$("#id").focus();
					}else{
						$(".idcheck").css("display","none");
						$("#idcheck_result").text("사용 가능한 아이디입니다.")
						.css("color","blue");
					}
				}
			});
		}
	});
		
	/**
	*	로그인 폼 체크 함수
	**/
	$("#btnLogin").click(function(){
		if(!ruleCheck($("#id"))){
			return false;
		}else if($("#pass").val() == ""){
			alert("패스워드를 입력해주세요");
			$("$pass").focus();
			return false;
		}else{
			//서버 전송:폼이름.submit();
			loginForm.submit();
		}		
	});
	
	
	/**
	 * 회원가입 폼 체크
	 */
	$("#btnJoin").click(function(){
		if(!ruleCheck($("#email"))){			
			return false;
		}else if($("#email").val() == ""){
			alert("이메일을 입력해주세요");
			$("#email").focus();
			return false;
		}else if($("#pass").val() == ""){
			alert("패스워드를 입력해주세요");
			$("#pass").focus();
			return false;
		}else if($("#cpass").val() == ""){
			alert("패스워드 확인을 입력해주세요");
			$("#cpass").focus();
			return false;
		}else if($("#nickname").val() == ""){
			alert("별명을 입력해주세요");
			$("#name").focus();
			return false;
		}else if(!$("#checkAll").prop("checked")){
			alert("약관에 동의해주세요");
			return false;
		}else {
			//서버전송
			joinForm.submit();
		}
	});
	
	
	
	
	/** 
	*  비밀번호, 비밀번호 확인 체크
	**/
	$("#cpass").focusout(function(){
		if($("#pass").val() != "" && $("#cpass").val() !=""){	
			
			if($("#pass").val() == $("#cpass").val()){
				$("#msg").text("패스워드가 동일합니다").css("color","blue");
				$("#name").focus();
				return true; 
			}else{
				$("#msg").text("패스워드가 다릅니다. 다시 입력해주세요").css("color","red");
				$("#pass").val("");
				$("#cpass").val("");
				$("#pass").focus();
				return false;				
			}		
		}
	});//focusout
	
	
	
	
});//ready


	/**
	*	이메일 정규식 체크
	**/
	function ruleCheck(obj){
		var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
		
		if(obj.val() == ""){
			alert("이메일을 입력해주세요");
			obj.focus();
			return false;
		}else{
			if(regExp.test(obj.val())){
				return true;	//이메일 형식에 맞는 경우
			}else{
				alert("이메일 형식으로 입력해 주세요");
				obj.focus();
				return false;
			}
		}	

	}//ruleCheck
	
	
	
	
	
	
	
	
	
	