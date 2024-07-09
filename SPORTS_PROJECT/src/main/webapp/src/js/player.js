/* 좋아요 버튼 구현 */
const heart = document.getElementById("heart");

heart.addEventListener("click", function(){
    heart.classList.toggle("active");
})

