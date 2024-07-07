let now;
let year;
let date;
let day;

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

$(document).ready(function () {
    // 날짜함수 실행
    now = new Date()
    getFormattedDate();
    updateDate();
});

// 날짜 지정 함수
function getFormattedDate(){
    year = now.getFullYear();
    month = now.getMonth() + 1;
    date = now.getDate()

    day = now.getDay();
    switch(day){
        case 1 : day = "월";break;
        case 2 : day = "화";break;
        case 3 : day = "수";break;
        case 4 : day = "목";break;
        case 5 : day = "금";break;
        case 6 : day = "토";break;
        case 0 : day = "일";break;
    }

    if(month < 10){
        month = "0" + month
    }
    if(date < 10){
        date = "0" + date
    }
}

// 날짜 표기 함수
function updateDate(){
    $("#dateDisplay").text(String(year).substring(2) + `.${month}.${date} (${day})`)
}

// 다음날 함수
function nextDay(){
    now.setDate(now.getDate() + 1);
    getFormattedDate();
    updateDate();
}

// 전날 함수
function beforeDay(){
    now.setDate(now.getDate() - 1);
    getFormattedDate();
    updateDate();
}

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
$(document).ready(function() {
	contextPath = "/" + window.location.pathname.split("/")[1];

	let team = $("input[name='team']");
	let team_value = team.val();
	teamName = document.getElementsByClassName("team-name")[0];

	switch (team_value) {
		case "kia": {
			teamName.innerText = "KIA TIGERS";
			$(".team-logo").attr({ src: "https://upload.wikimedia.org/wikipedia/en/e/e0/Kia_Tigers_2017_New_Team_Logo.png" });
			$(".team-each-image").css("background-image", `url(${"https://tigers.co.kr/files/banner/2023/02/08/catchphrase_pc.png"})`);
			
		}break;
		
		case "lg": {
			teamName.innerText="LG TWINS";
			
			$(".team-logo").attr({src : "https://upload.wikimedia.org/wikipedia/commons/4/41/LG_Twins_2017.png"})
			$(".team-each-image").css("background-image", `url(${"https://www.lgtwins.com/service/download.ncd?actID=BR_RetrieveFile&baRq=IN_DS&baRs=DOWNLOAD&IN_DS.FILE_TYPE=MNP&IN_DS.FILE_ID=6350"})`);
			
		}break;
	}

});
