// nav
// http://localhost:8083/ksy/teams/kia
$(document).ready(function() {
});

/* 좋아요 버튼 구현 */
const like = document.getElementsByClassName("like-button")[0];
const heart = document.getElementById("heart");

like.addEventListener("click", function(){
    heart.classList.toggle("active");
    like.classList.toggle("active");
    
})


