

/* 댓글 */
let communityData = [
	{ author: "[ 작성자 ]", comments: "야구 룰이 너무 어려움", date: "2024-07-06 22:49:31", like: 3 },
	{ author: "[ 작성자 ]", comments: "야구 룰이 너무 어려움", date: "2024-07-06 22:49:31", like: 3 },

]

// 일반 유저 페이지네이션 템플릿 함수
function paginationTemplate(data) {
	let item = "";
	
	$.each(data, function(index, d) {
		item +=
			`<div class="reply">
				<div class="comment">
					<span class="fs-12">${d.comments}</span>
					<div class="author">
						<span class="fs-10 fc__gray">${d.author}</span>
						<div><span class="fs-10">${d.date}</span></div>
					</div>
				</div>
				
				<div class="reply-info">
					<span>좋아요 ${d.like} ♥</span>
					<span> | </span>
					<span>수정</span>
					<span> | </span>
					<span data-type="reply-delete" onclick="showModal(this)">삭제</span>
					<span> | </span>
					<span data-type="reply-report" onclick="showModal(this)">신고</span>
				</div>
			</div>`
	})

	return item;
}





// 페이지네이션 실행 함수
function paginationActive(id, datas, template) {

	$(`#${id}-pagination`).pagination({
		dataSource: datas,

		callback: function(data) {
			var html = template(data);

			$(`#${id}-data`).html(html);	// 데이터 페이지네이션
		}
	})
}

// 컨디션 표
var ctx= document.getElementById("myChart");

var config = {
	type : 'line', 
	
	data:{
		datasets:[{
			label: '방어율',
			
			data: [
				{ x: '03월', y: 1.69 }, 
				{ x: '04월', y: 3.86 }, 
				{ x: '05월', y: 3.2 }, 
				{ x: '06월', y: 5.94 }, 
				{ x: '07월', y: 5.4 }
			],
			borderWidth: 2,
			tension: 0.5,
		},{
			label: '승리',
			data: [
			{ x: '03월', y: 0 }, 
			{ x: '04월', y: 2 }, 
			{ x: '05월', y: 2 }, 
			{ x: '06월', y: 2 }, 
			{ x: '07월', y: 0 }
			],
			borderWidth: 2,
			tension: 0.5

		},{
			label: '승률',
			data: [
			{ x: '04월', y: 0.667 }, 
			{ x: '05월', y: 0.5 }, 
			{ x: '06월', y: 1 }
			],
			borderWidth: 2,
			tension: 0.5,
		},{
			label: '탈삼진',
			data: [
			{ x: '03월', y: 4 }, 
			{ x: '04월', y: 23 }, 
			{ x: '05월', y: 24 }, 
			{ x: '06월', y: 13 }, 
			{ x: '07월', y: 5 }
			],
			borderWidth: 2,
			tension: 0.5
			
		}]
	},
		
	options: {
		plugins:{
					legend: {
						display: false
					},
					colors: {
				      enabled: true
				    }
				},
		scales: {
		  y: {
			beginAtZero: true
		  }
		}
	}

};

//  chart  생성
var myChart = new Chart(ctx, config);

// button 눌렀을 때 차트 숨기기
document.getElementById("era-button").addEventListener("click", function(){
	myChart.data.datasets[0].hidden = !this.click;
	myChart.data.datasets[1].hidden= this.click;
	myChart.data.datasets[2].hidden = this.click;
	myChart.data.datasets[3].hidden = this.click;
	myChart.update();
})

document.getElementById("victory-button").addEventListener("click", function(){
	myChart.data.datasets[0].hidden = this.click;
	myChart.data.datasets[1].hidden= !this.click;
	myChart.data.datasets[2].hidden = this.click;
	myChart.data.datasets[3].hidden = this.click;
	myChart.update();
})

document.getElementById("odd-button").addEventListener("click", function(){
	for(let i=0; i<4; i++){
		myChart.data.datasets[i].hidden=this.click;
	}
	myChart.data.datasets[2].hidden=!this.click;
	myChart.update();
})

document.getElementById("k-button").addEventListener("click", function(){
	for(let i=0; i<4; i++){
		myChart.data.datasets[i].hidden=this.click;
	}
	myChart.data.datasets[3].hidden=!this.click;
	myChart.update();
})

// 선수 정보
const player_data=[
	{team_name: "kia", player_position:"투수", uniform_no: 54, player_name: "양현종", pose_img:"https://tigers.co.kr/files/playerImg/tigersImg2/2024_54_C.png", bd_year: 1988, bd_month:03, bd_day:01, height:183,weight :91, school:"학강초,광주동성중,광주동성고,KIA,텍사스", hire_year:2007, salary:50000, career:"2007 KIA타이거즈, 2021 텍사스 레인저스, 2022 KIA 타이거즈, 2010 아시안게임 국가대표, 2017 WBC 국가대표, 2014, 2017 최동원상 수상, 2017 KBO리그 정규시즌 다승왕(20승), 2017 KBO리그 정규시즌 MVP, 2017 KBO 한국시리즈 MVP, 2017 KBO 골든글러브 수상, 2018 아시안게임 국가대표" } 
]

$(document).ready(function() {
	showPlayerInfo(player_data);
	showPlayerDetail(player_data);
	
	
	for(let p of player_record){
		
		if(p.position_no=2){
			showPitcherInfo(player_record);
		}else if(p.position_no=1){
			
		}else{
			showHitterInfo(player_record);
		}
	}
	// 페이지네이션 실행
	paginationActive("player", communityData, paginationTemplate);
});

const player_record=[
	
	{player_position:"투수", uniform_no:54, player_name:"양현종", position_no:2, era:3.91, win:6, lose:3, save:null, struck_out:69},
	//{player_position:"외야수", uniform_no:34, player_name:"최형우", position_no:5, play_count:88, hit:98, home_run:19, hit_point:91, hit_ratio:0.295}
]

function showPitcherInfo(data){
	$.each(data, function(index, d){
	html =
		`
			<div class="card-thumbnail">
				<div class="card-thumbnail-infos">
					<div class="card-thumbnail-position fc__white">ERA</div>
					<hr>
					<div class="card-thumbnail-content fc__white">${d.era}</div>
				</div>
			</div>
		
			<div class="card-thumbnail">
				<div class="card-thumbnail-infos">
					<div class="card-thumbnail-position fc__white">승</div>
					<hr>
					<div class="card-thumbnail-content fc__white">${d.win}</div>
				</div>
			</div>
		
			<div class="card-thumbnail">
				<div class="card-thumbnail-infos">
					<div class="card-thumbnail-position fc__white">패</div>
					<hr>
					<div class="card-thumbnail-content fc__white">${d.lose}</div>
				</div>
			</div>
		
			<div class="card-thumbnail">
				<div class="card-thumbnail-infos">
					<div class="card-thumbnail-position fc__white">세이브</div>
					<hr>
					<div class="card-thumbnail-content fc__white">${d.save}</div>
				</div>
			</div>
		
			<div class="card-thumbnail">
				<div class="card-thumbnail-infos">
					<div class="card-thumbnail-position fc__white">탈삼진</div>
					<hr>
					<div class="card-thumbnail-content fc__white">${d.struck_out}</div>
				</div>
			</div>
		`
	})
	
	const parent = $(".player-card").eq(0)
	parent.html(html)
}

function showHitterInfo(data){
	$.each(data, function(index, d){
	html =
		`
			<div class="card-thumbnail">
				<div class="card-thumbnail-infos">
					<div class="card-thumbnail-position fc__white">경기</div>
					<hr>
					<div class="card-thumbnail-content fc__white">${d.play_count}</div>
				</div>
			</div>
		
			<div class="card-thumbnail">
				<div class="card-thumbnail-infos">
					<div class="card-thumbnail-position fc__white">안타</div>
					<hr>
					<div class="card-thumbnail-content fc__white">${d.hit}</div>
				</div>
			</div>
		
			<div class="card-thumbnail">
				<div class="card-thumbnail-infos">
					<div class="card-thumbnail-position fc__white">홈런</div>
					<hr>
					<div class="card-thumbnail-content fc__white">${d.home_run}</div>
				</div>
			</div>
		
			<div class="card-thumbnail">
				<div class="card-thumbnail-infos">
					<div class="card-thumbnail-position fc__white">타점</div>
					<hr>
					<div class="card-thumbnail-content fc__white">${d.hit_point}</div>
				</div>
			</div>
		
			<div class="card-thumbnail">
				<div class="card-thumbnail-infos">
					<div class="card-thumbnail-position fc__white">타율</div>
					<hr>
					<div class="card-thumbnail-content fc__white">${d.hit_ratio}</div>
				</div>
			</div>
		
	
		
		`
	})
	
	const parent = $(".player-card").eq(0)
	parent.html(html)
}

function showPlayerInfo(data){
	$.each(data, function(index, d){
		html =
		`
		<div class="player-info-content">
			<div class="info-content">
				<div class="info-content-top">
					<p class="position fs-20">${d.player_position}</p>
					<span class="player-num">${d.uniform_no}</span> 
					<span class="player-name">${d.player_name}</span> 
					<i class="fa-solid fa-heart" id="heart" ></i>
				</div>
				<table class="info-content-bottom">
					<tr>
						<th class="fs-20__b">생년월일</th>
						<td class="fs-20">${d.bd_year}년 ${d.bd_month}월 ${d.bd_day}일</td>
					</tr>
					<tr>
						<th class="fs-20__b">프로입단</th>
						<td class="fs-20">${d.hire_year}년</td>
					</tr>
					<tr>
						<th class="fs-20__b">신장/체중</th>
						<td class="fs-20">${d.height}cm/${d.weight}kg</td>
					</tr>
					<tr>
						<th class="fs-20__b">출신학교</th>
						<td class="fs-20">${d.school}</td>
					</tr>
					<tr>
						<th class="fs-20__b">연봉</th>
						<td class="fs-20">${d.salary}만원</td>
					</tr>
				</table>
			</div>
		</div>
		<div class="player-info-img">
			<img
				src="${d.pose_img}"
				alt="">
		</div>
	`
	})
	
	
	const parent = $(".player-info").eq(0)
	parent.html(html)
		
	$('#heart').on('click', function(){
		this.classList.toggle('active');
	})

}

function showPlayerDetail(data){
	html = "";
	
	$.each(data, function(index, d){
		html =
		`
			<table class="player-profile-detail">
				<tr>
					<th>생년월일</th>
					<td>${d.bd_year}년 ${d.bd_month}월 ${d.bd_day}일</td>
					<th rowspan="7">경력사항</th>
					<td rowspan="7" class="career-area"><pre>
${d.career}
					</pre></td>
				</tr>
				<tr>
					<th>신장/체중</th>
					<td>${d.height}cm / ${d.weight}kg</td>
				</tr>
				<tr>
					<th>출신학교</th>
					<td>${d.school}</td>
				</tr>
				<tr>
					<th>프로입단</th>
					<td>${d.hire_year}년</td>
				</tr>
				<tr>
					<th>연봉</th>
					<td>${d.salary}만원</td>
				</tr>
			</table>
		`
	})
	
	const parent = $(".player-profile").eq(0)
	parent.html(html)
}

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


