var swiper = new Swiper(".mySwiper", {
    slidesPerView: 1,
	centeredSlides: true,
	initialSlide: 1,
    pagination: {
       el: ".swiper-pagination",
       clickable: true,
    },
    navigation: {
      nextEl: ".swiper-button-next",
      prevEl: ".swiper-button-prev",
    },
});

var swiper2 = new Swiper(".swiper-news", {
    spaceBetween: 24,
    slidesPerView: 3, // 슬라이드 2개씩 보이도록 설정
    initialSlide: 0,
    centeredSlides: false,
    autoplay: {
	    delay: 4000,
	    disableOnInteraction: false
    },
    pagination: {
	    el: ".swiper-pagination",
	    clickable: true
    },
    navigation: {
	    nextEl: ".swiper-button-next",
	    prevEl: ".swiper-button-prev"
    }
});



// 공지사항 swiper
var swiper3 = new Swiper(".swiper-info", {
    spaceBetween: 24,
    slidesPerView: 1, // 슬라이드 2개씩 보이도록 설정
    initialSlide: 0,
    centeredSlides: true,
    autoplay: {
	    delay: 2500,
	    disableOnInteraction: false,
    },
    pagination: {
	    el: ".swiper-pagination",
	    clickable: true
    },
    navigation: {
	    nextEl: ".swiper-button-next",
	    prevEl: ".swiper-button-prev"
	},
	
	direction: 'vertical'
	
});

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


