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

console.log("hi");
/* 좋아요 버튼 구현 */
const like = document.getElementsByClassName("like-button")[0];
const heart = document.getElementById("heart");

like.addEventListener("click", function(){
    heart.classList.toggle("active");
    like.classList.toggle("active");
    
})


