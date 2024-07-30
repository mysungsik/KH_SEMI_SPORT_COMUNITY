
/* 댓글 */
let communityData = [
	{ author: "[ 작성자 ]", comments: "야구 룰이 너무 어려움", date: "2024-07-06 22:49:31", like: 3 },
	{ author: "[ 작성자 ]", comments: "야구 룰이 너무 어려움", date: "2024-07-06 22:49:31", like: 3 },

]

let replyData = [];
let likeData = [];
let reportTypeData = [];


// 댓글 페이지네이션 템플릿 함수
function replyPaginationTemplate(data) {
	let item = "";
	
	$.each(data, function(index, d) {
		item +=
			`
				<div class="reply">
					<input type="hidden" name="userNo" value="${d.userNo}">
					<input type="hidden" name="replyTypeNo" value="${d.replyTypeNo}">
					<input type="hidden" name="replyTargetNo" value="${d.replyTargetNo}">
					<div class="reply-author-info d-flex">
						<div class="reply-author">
							<img class="author-profile" 
								src="${d.userProfileImg != '' ? d.userProfileImg : contextPath + '/public/images/profile/user_img1.jpg'}"/> 
							<p class="author-name fs-14__b ml-8">${d.userName}</p>
						</div>
					</div>
					<div class="reply-content">
						<p class="fs-12">${d.replyContent}</p>
					</div>
					<div class="reply-extra-info">
						<div>
							<span class="fs-10 fc__gray pointer">좋아요 0:todo ♥</span>
							<span class="fs-10 fc__gray"> | </span>
							<span class="fs-10 fc__gray pointer" data-type="reply-update" data-replyno="${d.replyNo}" onclick="showReplyUpdateModal($(this))">수정</span>
							<span class="fs-10 fc__gray"> | </span>
							<span class="fs-10 fc__gray pointer" data-type="reply-delete" data-replyno="${d.replyNo}" onclick="showDeleteModal($(this))">삭제</span>
							<span class="fs-10 fc__gray"> | </span>
							<span class="fs-10 fc__gray pointer" data-type="reply-report" data-replyno="${d.replyNo}" onclick="showReportModal($(this))">신고</span>
						</div>           
						<div><span class="fs-10 fc__gray" class="fs-10">${d.replyDt}</span></div>
					</div>
				</div>
			`
	})
	return item;
}



// 페이지네이션 실행 함수
function paginationActive(id, datas, template) {
	let page_size = 5;

	if ($(`#${id}-pagination`).length > 0) {

		$(`#${id}-pagination`).pagination({
			dataSource: datas,

			pageSize: page_size,

			callback: function (data, pagination) {
				var html = template(data);

				$(`#${id}-data`).html(html);	// 데이터 페이지네이션

				var currentPage = pagination.pageNumber;	// 현재 페이지 번호

				// 페이지네이션 변경
				var pagingEl = $(`.paginationjs-page[data-num='${currentPage}'] a`);
				pagingEl.css({
					fontSize: "14px",
					textDecoration: "underline",
					color: "#458BE2"
				})
			}
		})
	}
}



// 댓글 데이터 가져오는 함수
function getReplies(){
	const request_url = `${contextPath}/api/reply/getReplyAll`;
	$.ajax({
		type: "GET",
		url: request_url,
		data : {
			typeNo : 3,
			targetNo :$("input[name='playerNo']").eq(0).val()
		},
		dataType: "json",
		success: function (res) {
			let isGetData = res.hasOwnProperty("data");

			if (isGetData){
				replyData = res.data
				paginationActive("reply", replyData, replyPaginationTemplate)
				
				$(".reply-cnt").html(res.data.length)
			}
		}
	});
}


// 좋아요 데이터 가져오는 함수
function getLikes(){
	const request_url = `${contextPath}/api/like/getLikeAll`;
	$.ajax({
		type: "GET",
		url: request_url,
		data : {
			typeNo : 3,
			targetNo : $("input[name='playerNo']").eq(0).val()
		},
		dataType: "json",
		success: function (res) {
			
			let isGetData = res.hasOwnProperty("data");
			if (isGetData){
				likeData = res.data
				$(".like-cnt").html(likeData.length)
			}
		}
	});
}

// 댓글 입력 함수
function insertReply(){
	let replyContent = $("textarea[name='reply-content']").val() 
	
	if (loginUser == ""){
		toastPop("warn", "로그인 후 이용해주세요");
		return;
	}
	
	const request_url = `${contextPath}/api/reply/insertReply`;
	
	if (replyContent.trim() != ""){
		$.ajax({
			type: "POST",
			url: request_url,
			data : {
				typeNo : 1,	// comm
				targetNo : $("input[name='playerNo']").eq(0).val(),
				replyContent
			},
			dataType: "json",
			success: function (res) {
				let isInsertReply = res.hasOwnProperty("data");
				
				if(isInsertReply){
					$("textarea[name='reply-content']").val("") 
					
					// 댓글 최상단에 입력 (unshift(...))
					replyData.unshift(res.data)
					paginationActive("reply", replyData, replyPaginationTemplate)
				
					// 댓글 개수 변경
					$(".reply-cnt").html(replyData.length)
				}
				
				else{
					toastPop("warn", res.message)
				}
			}
		});
	}
}

// 댓글 삭제 함수
function deleteReply(el){
	
	let deleteModalEl = $('#deleteModal');
	var deleteModal = bootstrap.Modal.getInstance(deleteModalEl);
	
	let replyNo = parseInt($(el).data("replyno"));
	if (loginUser == ""){
		toastPop("warn", "로그인 후 이용해주세요");
		return;
	}
	
	const request_url = `${contextPath}/api/reply/deleteReply`;

	$.ajax({
		type: "POST",
		url: request_url,
		data : {
			replyNo
		},
		dataType: "json",
		success: function (res) {
			let isDeleteReply = res.hasOwnProperty("data");
			
			if(isDeleteReply){
				
				replyData = replyData.filter(function(item){
					return item.replyNo != replyNo;
				})
				paginationActive("reply", replyData, replyPaginationTemplate)
			
				// 댓글 개수 변경
				$(".reply-cnt").html(replyData.length)
				
				// 모달 종료
				deleteModal.hide();
			}
			
			else{
				toastPop("warn", res.message)
				deleteModal.hide();
			}
		}
	});
}

// 댓글 수정 함수
function updateReply(el){
	
	let updateReplyEl = $('#updateReplyModal');
	let updateReplyModal = bootstrap.Modal.getInstance(updateReplyEl);
	let replyContent = updateReplyEl.find("textarea[name='update-reply-content']").val();
	let replyNo = parseInt($(el).data("replyno"));
	
	if (loginUser == ""){
		toastPop("warn", "로그인 후 이용해주세요");
		return;
	}
	
	// 요청
	const request_url = `${contextPath}/api/reply/updateReply`;
	
	if (replyContent.trim() != ""){
		$.ajax({
			type: "POST",
			url: request_url,
			data : {
				replyNo,
				replyContent
			},
			dataType: "json",
			success: function (res) {
				let isInsertReply = res.hasOwnProperty("data");
				
				if(isInsertReply){
					// 댓글 데이터 찾아서 변경, 페이지네이션 재실행
					getReplies();
					// 모달 종료
					updateReplyModal.hide();
				}
				
				else{
					toastPop("warn", res.message)
				}
			}
		});
	} else{
		toastPop("warn", "댓글을 입력해주세요")
	}
}

// 좋아요 추가/삭제 함수
function modifyLike(){
	if (loginUser == ""){
		toastPop("warn", "로그인 후 이용해주세요");
		return;
	}
	
	const board_like_btn = $(".board-like").eq(0)
	const request_url = `${contextPath}/api/like/modifyLike`;
	let like_cnt = parseInt($(".like-cnt").html());
	
	if (board_like_btn.hasClass("disabled")){
		toastPop("warn", "요청이 너무 빠릅니다!")
		return;
	}
	
	$.ajax({
		type: "POST",
		url: request_url,
		data : {
			typeNo : 3,	// COMM
			targetNo : $("input[name='playerNo']").eq(0).val()
		},
		dataType: "json",
		success: function (res) {
			// 좋아요 버튼 disable
			board_like_btn.addClass("disabled")
			
			let isModifyLike = res.hasOwnProperty("data");
			
			if(isModifyLike){
				if (res.data == "deleteLike"){
					$(".like-cnt").html(like_cnt -1)
					
				} else if(res.data == "insertLike"){
					$(".like-cnt").html(like_cnt + 1)
					toastPop("info", "좋아요!")
				}
			}
			else{
				toastPop("warn", res.message)
			}
		}
	});
	
	setTimeout(function(){
		board_like_btn.removeClass("disabled")
	}, 1000)
	
}



// Delete 모달 생성
function showDeleteModal(el){
	if (loginUser == ""){
		toastPop("warn", "로그인 후 이용해주세요");
		return;
	}
	
	let deleteModalEl = $('#deleteModal');

	deleteModalEl.find(".modal-title").html(`<p class="fs-14 fc__white">댓글 삭제</p>`)
		
	deleteModalEl.modal('show');
	
	deleteModalEl.find(".acceptBtn").one("click", function(){
		deleteReply(el)
	})
}

// Report 모달 생성
function showReportModal(el){
	if (loginUser == ""){
		toastPop("warn", "로그인 후 이용해주세요");
		return;
	}
	
	let reportModalEl = $('#reportModal');
	let modalType = $(el).data("type");
	
	let item = (modalType == "board-report") ? "게시글" : "댓글";
	reportModalEl.find(".modal-title").html(`<p class="fs-14 fc__white">${item} 신고</p>`)

	reportModalEl.modal('show');
}

// ReplyUpdate 모달 생성
function showReplyUpdateModal(el){
	if (loginUser == ""){
		toastPop("warn", "로그인 후 이용해주세요");
		return;
	}
	
	let reportModalEl = $('#updateReplyModal');
	
	let item = "댓글";
	reportModalEl.find(".modal-title").html(`<p class="fs-14 fc__white">${item} 수정</p>`)

	reportModalEl.modal('show');
	
	reportModalEl.find(".acceptBtn").one("click", function(){
		updateReply(el)
	})
}



function loginCheck(){
	if (loginUser == ""){
		toastPop("warn", "로그인 후 이용해주세요");
		return;
	}
}
//-------------------------------------------------------------------------------

// 페이지 커버 
function showPageCoverBottom(d){
	
	if(d.teamColor == undefined){
		d.teamColor = "base_color"
	}
	
	
	let html =
		`
			<div class="pagecover-bottom ${d.teamColor}">
				<div class="pagecover-bottom-inner d-flex fc__white">
					<ul>
						<li><a href="players?type=1">코칭스태프</a></li>
						|
						<li><a href="players?type=2">투수</a></li>
						|
						<li><a href="players?type=3">포수</a></li>
						|
						<li><a href="players?type=4">내야수</a></li>
						|
						<li><a href="players?type=5">외야수</a></li>
					</ul>
				</div>
			</div>
		`
		
	
	const sibling = $(".pagecover-img").eq(0)
	sibling.after(html)
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
//---------------------------------------------------------------------------------------
// 선수 정보
const player_data=[
	{team_name: "kia", player_position:"투수", uniform_no: 54, player_name: "양현종", pose_img:"https://tigers.co.kr/files/playerImg/tigersImg2/2024_54_C.png", bd_year: 1988, bd_month:03, bd_day:01, height:183,weight :91, school:"학강초,광주동성중,광주동성고,KIA,텍사스", hire_year:2007, salary:50000, career:"2007 KIA타이거즈, 2021 텍사스 레인저스, 2022 KIA 타이거즈, 2010 아시안게임 국가대표, 2017 WBC 국가대표, 2014, 2017 최동원상 수상, 2017 KBO리그 정규시즌 다승왕(20승), 2017 KBO리그 정규시즌 MVP, 2017 KBO 한국시리즈 MVP, 2017 KBO 골든글러브 수상, 2018 아시안게임 국가대표" } 
]

$(document).ready(function() {
	let playerNo = $("input[name='playerNo']").val();
	let request_url = `${contextPath}/api/player/getPlayerInfo`
	
	console.log(playerNo)
	$.ajax({
		type: "GET",
		url: request_url,
		dataType: "json",
		data:{team,
			"playerNo": playerNo},
		success: function (res) {
			
			console.log(res.data)
			let isGetData = res.hasOwnProperty("data");
			if (isGetData){
				//changePageCover(res.data);
				showPageCoverBottom(res.data);
				showPitcherInfo(player_record);
				showPlayerInfo(res.data);
				showPlayerDetail(res.data);
				
			}
		},
		error:function(){
			alert('실패!');
		}

	});
	
	getReplies();
	getLikes();
});

const player_record=[
	
	{player_position:"투수", uniform_no:54, player_name:"양현종", position_no:2, era:3.91, win:6, lose:3, save:"-", struck_out:69},
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
	let html= "";
	$.each(data, function(index, d){
	
	let imgSrc = d.playerPoseImg == undefined 
            ? `${contextPath}/public/images/profile/user_img1.jpg` 
            : `${contextPath}/${d.playerPoseImg}`;
            
	
	html+=
		`
		<div class="player-info-content">
			<div class="info-content">
				<div class="info-content-top">
					<p class="position fs-20">${d.positionName}</p>
					<span class="player-num">${d.playerUniformNo}</span> 
					<span class="player-name">${d.playerName}</span> 
					<i class="fa-solid fa-heart" id="heart" ></i>
				</div>
				<table class="info-content-bottom">
					<tr>
						<th class="fs-20__b">생년월일</th>
						<td class="fs-20">${d.playerBD}</td>
					</tr>
					<tr>
						<th class="fs-20__b">프로입단</th>
						<td class="fs-20">${d.joinYear}년</td>
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
				src="${imgSrc}"
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
	let html= "";
	$.each(data, function(index, d){
		html +=`
			<table class="player-profile-detail">
				<tr>
					<th>생년월일</th>
					<td>${d.playerBD}</td>
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
					<td>${d.joinYear}년</td>
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


