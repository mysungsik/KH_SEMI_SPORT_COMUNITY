let now;
let year;
let date;
let day;

var swiper = new Swiper(".swiper-events", {
    spaceBetween: 30,
    centeredSlides: false,
    autoplay: {
    delay: 6000,
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

var swiper2 = new Swiper(".swiper-news", {
    spaceBetween: 24,
    slidesPerView: 3, // 슬라이드 2개씩 보이도록 설정
    initialSlide: 1,
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

var swiper3 = new Swiper(".swiper-highlight", {
    spaceBetween: 24,
    slidesPerView: 4, // 슬라이드 2개씩 보이도록 설정
    initialSlide: 2,
    centeredSlides: false,  // 슬라이드 중앙정렬 false
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

// 다음날 함수
function beforeDay(){
    now.setDate(now.getDate() - 1);
    getFormattedDate();
    updateDate();
}