/**

/* Modal Sign In */
$('#access_link2').magnificPopup({
	type: 'inline',
	fixedContentPos: true,
	fixedBgPos: true,
	overflowY: 'auto',
	closeBtnInside: true,
	preloader: false,
	midClick: true,
	removalDelay: 300,
	mainClass: 'my-mfp-zoom-in'
});

/* Modal Sign In */
$('#access_link3').magnificPopup({
	type: 'inline',
	fixedContentPos: true,
	fixedBgPos: true,
	overflowY: 'auto',
	closeBtnInside: true,
	preloader: false,
	midClick: true,
	removalDelay: 300,
	mainClass: 'my-mfp-zoom-in'
});

/* member_admin.jsp : wishlistDelete */
$(".wishlist_close_admin").on("click", function (e) {
	$(this).parent().parent().parent().fadeOut("slow", function (c) {
		var mNo = $(this).attr("mNo");
		var pNo = $(this).attr("pNo");
		console.log(mNo);
		console.log(pNo);
		$.ajax({
			url : "wishlist_delete",
			data : "mNo="+mNo+"&pNo="+pNo,
			method : "POST",
			dataType : "json",
			success : function() {
			}
		});
	});
});

/* member_admin.jsp : updatePassword */
function updatePassword() {
	var oldPassword = $("#old_password").val();
	var newPassword = $("#new_password").val();
	var confirmNewPassword = $("#confirm_new_password").val();
	var password = $("#password1").val();
	var tempPassword = $("#password2").val();
	if (oldPassword == null || oldPassword == "") {
		alert("기존 비밀번호 입력하십시오");
	}
	if (newPassword == null || newPassword == "") {
			alert("새 비밀번호 입력하십시오");
	}
	if (confirmNewPassword == null || confirmNewPassword == "") {
			alert("새 비밀번호 확인하십시오");
	}
	if (newPassword != confirmNewPassword) {
		alert("비밀번호가 일치하지 않습니다");
	}
	if (oldPassword != password && oldPassword != tempPassword) {
		alert("잘못된 기존 비밀번호 입니다");
	}
}

/* member_admin.jsp : updateEmail */
function updateEmail() {
	var oldEmail = $("#old_email").val();
	var newEmail = $("#new_email").val();
	var confirmNewEmail = $("#confirm_new_email").val();
	var email = $("#email1").val();
	if (oldEmail == null || oldEmail == "") {
		alert("기존 이메일주소 입력하십시오");
	}
	if (newEmail == null || newEmail == "") {
			alert("새 이메일주소 입력하십시오");
	}
	if (confirmNewEmail == null || confirmNewEmail == "") {
			alert("새 이메일주소 확인하십시오");
	}
	if (newEmail != confirmNewEmail) {
		alert("이메일주소가 일치하지 않습니다");
	}
	if (oldEmail == null || oldEmail == "") {
		alert("기존 이메일주소 입력하십시오");
	}
	if (oldPassword != password && oldPassword != tempPassword) {
		alert("잘못된 기존 이메일주소 입니다");
	}
}

/* member_admin.jsp : updateMember */
function updateMember() {
	alert("!!!");
	var fileName = $("#js-upload-files").val();
	console.log("fileName:" + fileName);
	console.log(fileName);
}