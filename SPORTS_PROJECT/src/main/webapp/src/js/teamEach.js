// nav
// http://localhost:8083/ksy/teams/kia
$(document).ready(function() {
	contextPath ="/"+ window.location.pathname.split("/")[1];
	console.log(contextPath);
	let sub = $("input[name='sub']");
	console.log(sub);
	let sub_value = sub.val();
	console.log(sub_value);
	

});