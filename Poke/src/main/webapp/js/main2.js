/** 내가 항거 */

/* 로그아웃 누르면 세션 없애기 */
$(document).ready(() => {
	document.getElementById("btn_logout").onclick = () => {
		document.logout.submit();
	}
});

/* 로그인 시 아이디 중복확인 */
$('.id').focusout(()=>{
	let id = $('.id').val(); // id에 입력되는 값

	$.ajax({
		url :  "아이디 중복확인하는 컨트롤러",
		type : "post",
		data : {id: id}, // 너가 알아서 설정해..몰라..
		dataType : 'json',
		success : function(result) {
			if(result == 0) {
				$('#checkId').html('사용할 수 없는 아이디입니다.');
				$('#checkId').attr('color', 'red');
			}else {
				$('#checkId').html('사용할 수 있는 아이디입니다.');
				$('#checkId').attr('color', 'green');
			}
		},
		error : function(){
			alert("error");
		}
	})
})

/* 식물정보수정 식물애칭 중복확인 */
$('.id').focusout(()=>{
	let id = $('.plant_nicname').val(); // id에 입력되는 값

	$.ajax({
		url :  "식물애칭 중복확인하는 컨트롤러",
		type : "post",
		data : {plant_nicname: plant_nicname}, 
		dataType : 'json',
		success : function(result) {
			if(result == 0) {
				$('#checkPlant').html('사용할 수 없는 애칭입니다.');
				$('#checkPlant').attr('color', 'red');
			}else {
				$('#checkPlant').html('사용할 수 있는 애칭입니다.');
				$('#chekPlantd').attr('color', 'green');
			}
		},
		error : function(){
			alert("error");
		}
	})
})
/* 로그인 시 비밀번호 일치 여부 */
$('.pw').keyup(() => {
	let pw1 = $("#pw1").val();
	let pw2 = $("#pw2").val();

	if(pw1 != "" || pw2 != ""){
		if(pw1 == pw2){
			$("#checkPw").html('비밀번호가 일치합니다.');
			$("#checkPw").attr('color', 'green');
		}else {
			$("#checkPw").html('비밀번호가 일치하지 않습니다.');
			$("#checkPw").attr('color', 'red');
		}
	}
});

// 비빌번호 변경 시 일치 여부
$('.changePw').keyup(() => {
	let changePw1 = $("#changePw1").val();
	let changePw2 = $("#changePw2").val();

	if(changePw1 != "" || changePw2 != ""){
		if(changePw1 == changePw2){
			$("#checkChangePw").html('비밀번호가 일치합니다.');
			$("#checkChangePw").attr('color', 'green');
		}else {
			$("#checkChangePw").html('비밀번호가 일치하지 않습니다.');
			$("#checkChangePw").attr('color', 'red');
		}
	}
});



/* 회원정보 수정 완료 후 alert창 띄우기 */
/* 자스론 어케하는지 모르겠음  찾아보기,,ㅠ_ㅠ */

// 닉네임 수정 팝업
let pop_nick_change = document.querySelector(".pop_nick_change"); 
let trigger2 = document.querySelector("#trigger2"); 
let closeButton1 = document.querySelector(".close-button1"); 
let cancelButton1 = document.querySelector("#cancel1")


function togglepop_nick_change() { 
    pop_nick_change.classList.toggle("show-modal"); 
 }

function windowOnClick(event) { 
 if (event.target === pop_nick_change) { 
     togglepop_nick_change(); 
 } 
}

trigger2.addEventListener("click", togglepop_nick_change); 
closeButton1.addEventListener("click", togglepop_nick_change); 
cancel1.addEventListener("click", togglepop_nick_change); 
window.addEventListener("click", windowOnClick); 

$('.changeNickname').focusout(()=>{
	let changeNickname = $('.changeNickname').val(); 

	$.ajax({
		url :  "닉네임 중복확인하는 컨트롤러",
		type : "post",
		data : {changeNickname: changeNickname}, 
		dataType : 'json',
		success : function(result) {
			if(result == 0) {
				$('#checkNickname').html('이미 존재하는 닉네임입니다.');
				$('#checkNickname').attr('color', 'red');
			}else {
				$('#checkNickname').html('사용할 수 있는 닉네임입니다.');
				$('#checkNickname').attr('color', 'green');
			}
		},
		error : function(){
			alert("error");
		}
	})
})



/* 비밀번호 수정 팝업 */

let modal = document.querySelector(".pop_pw_change"); 
let trigger = document.querySelector("#trigger"); 
let closeButton = document.querySelector(".close-button"); 
let cancelButton = document.querySelector("#cancel");


function toggleModal() { 
    modal.classList.toggle("show-modal"); 
 }

function windowOnClick(event) { 
 if (event.target === modal) { 
     toggleModal(); 
 } 
}

trigger.addEventListener("click", toggleModal); 
closeButton.addEventListener("click", toggleModal); 
cancel.addEventListener("click", toggleModal); 
window.addEventListener("click", windowOnClick); 


// 이메일 수정 팝업
let pop_email_change = document.querySelector(".pop_email_change"); 
let trigger3 = document.querySelector("#trigger3"); 
let closeButton2 = document.querySelector(".close-button2"); 
let cancelButton2 = document.querySelector("#cancel2")


function togglepop_email_change() { 
    pop_email_change.classList.toggle("show-modal"); 
 }

function windowOnClick(event) { 
 if (event.target === pop_email_change) { 
     togglepop_email_change(); 
 } 
}

trigger3.addEventListener("click", togglepop_email_change); 
closeButton2.addEventListener("click", togglepop_email_change); 
cancel2.addEventListener("click", togglepop_email_change); 
window.addEventListener("click", windowOnClick); 

$('.changeNickname').focusout(()=>{
	let changeNickname = $('.changeNickname').val(); 

	$.ajax({
		url :  "이메일 중복확인하는 컨트롤러",
		type : "post",
		data : {changeEmail: changeEmail}, 
		dataType : 'json',
		success : function(result) {
			if(result == 0) {
				$('#checkEmail').html('이미 존재하는 이메일입니다.');
				$('#checkEmail').attr('color', 'red');
			}else {
				$('#checkEmail').html('사용할 수 있는 이메일입니다.');
				$('#checkEmail').attr('color', 'green');
			}
		},
		error : function(){
			alert("error");
		}
	})
})
