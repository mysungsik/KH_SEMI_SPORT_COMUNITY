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
	let team = $("input[name='team']");
	let team_value = team.val();
	console.log(team_value);
	
	switch (team_value) {
		case "kia": {
			$(".team-name").text("KIA TIGERS");
			$(".team-logo").attr({ src: "https://upload.wikimedia.org/wikipedia/en/e/e0/Kia_Tigers_2017_New_Team_Logo.png" });
			$(".team-each-image").css("background-image", `url(${"https://tigers.co.kr/files/banner/2023/02/08/catchphrase_pc.png"})`);
			
		}break;
		
		case "lg": {
			$(".team-name").text("LG TWINS");
			$(".team-logo").attr({src : "https://upload.wikimedia.org/wikipedia/commons/4/41/LG_Twins_2017.png"})
			$(".team-each-image").css("background-image", `url(${"https://www.lgtwins.com/service/download.ncd?actID=BR_RetrieveFile&baRq=IN_DS&baRs=DOWNLOAD&IN_DS.FILE_TYPE=MNP&IN_DS.FILE_ID=6350"})`);
			
		}break;
	}

});


