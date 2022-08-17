$(document).ready(function() {
 
	$("#passwd2").on("keyup", function() {
		let passwd = $("#passwd").val();
		let mesg = "비밀번호 불일치";
		if (passwd == $(this).val()) {
			mesg = "비밀번호 일치";
		}
		$("#checkpw").text(mesg);
	});

	$("#emailSel").change(function() {
		$("#email2").val($(this).val());
	});
});