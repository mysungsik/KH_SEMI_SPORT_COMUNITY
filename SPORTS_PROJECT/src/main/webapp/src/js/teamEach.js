

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

const today_schedule = [
	{team1_name: "kia", team1_logo:"https://upload.wikimedia.org/wikipedia/en/e/e0/Kia_Tigers_2017_New_Team_Logo.png", pitcher1:"양현종" , date: "24.07.02 (화)", region:"광주", time : "18:30", team2_name: "lg", team2_logo : "https://upload.wikimedia.org/wikipedia/commons/4/41/LG_Twins_2017.png", pitcher2:"김승연"},
	{team1_name: "kia", team1_logo:"https://upload.wikimedia.org/wikipedia/en/e/e0/Kia_Tigers_2017_New_Team_Logo.png", pitcher1:"양현종" , date: "24.07.03 (수)", region:"광주", time : "18:30", team2_name: "lg", team2_logo : "https://upload.wikimedia.org/wikipedia/commons/4/41/LG_Twins_2017.png", pitcher2:"김승연"},
	{team1_name: "kia", team1_logo:"https://upload.wikimedia.org/wikipedia/en/e/e0/Kia_Tigers_2017_New_Team_Logo.png", pitcher1:"양현종" , date: "24.07.04 (목)", region:"광주", time : "18:30", team2_name: "lg", team2_logo : "https://upload.wikimedia.org/wikipedia/commons/4/41/LG_Twins_2017.png", pitcher2:"김승연"}
]

// nav
$(document).ready(function() {
	showTodaySchedule(today_schedule);
	
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
	    }
	});
});



function showTodaySchedule(data){
	html = "";
	$.each(data, function(index, d){
	  	html += 
  		`
			<div class="swiper-slide">
				<p class="fs-20 fc__white mt-10">${d.date}</p>
				<p class="fc__white">${d.region} ${d.time}</p>
				<div class="swiper-logo">
					<img src="${d.team1_logo}"
						class="ml-20" alt=""> <span class="fc__white">vs</span>
					<img src="${d.team2_logo}"
						class="mr-20" alt="">
				</div>
				<div class="swiper-team-info">
					<div class="swiper-team-name">
						<div class="swiper-left-team">
							<p class="fs-14  fc__white">${d.team1_name}</p>
							<p class="fs-12 fc__white">선발 : ${d.pitcher1}</p>
						</div>
						<a href="${contextPath}/match/matchResult">
							<button>경기 결과</button>
						</a>
						<div class="swiper-right-team">
							<p class="fs-14  fc__white">${d.team2_name}</p>
							<p class="fs-12 fc__white">선발 : ${d.pitcher2}</p>
						</div>
					</div>
				</div>
			</div>
		`
	})
	
	const parent = $(".today-schedule-swiper").eq(0)
	parent.html(html)
	
}


/* 좋아요 버튼 구현 */
const like = document.getElementsByClassName("like-button")[0];
const heart = document.getElementById("heart");

like.addEventListener("click", function(){
    heart.classList.toggle("active");
    like.classList.toggle("active");
    
})


