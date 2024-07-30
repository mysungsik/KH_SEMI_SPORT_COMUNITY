const team_player = [
	{team_name: "kia", player_position:"투수", uniform_no: 54, player_name: "양현종", player_headshot:"",  team_color: "kia_color"}
]

$(document).ready(function() {
	
	let request_url=`${contextPath}/api/player/getPlayer`
	
	$.ajax({
		type: "GET",
		url: request_url,
		dataType: "json",
		data:{team},
		success: function (res) {
			let isGetData = res.hasOwnProperty("data");
			if (isGetData){
				changePageCover(res.data);
				showPageCoverBottom(res.data);
				showTeamPlayers(res.data);
				showBtnArea(res.data);
			}
		},
		error:function(){
			alert('실패!');
		}
		
	});
	
});


function showTeamPlayers(data){
	html = "";
	
	$.each(data, function(index, d){
		console.log(d);
		let imgSrc = d.headShot == undefined 
            ? `${contextPath}/public/images/profile/user_img1.jpg` 
            : `${contextPath}/${d.headShot}`;
            
		html +=
		`
			<td>
				<div class="card-thumbnail">
					<div class="card-thumbnail-img">
						<a href="${contextPath}/team/${d.teamName}/player">
							<img src="${imgSrc}">
						</a>
					</div>
					<div class="card-thumbnail-infos">
						<div class="card-thumbnail-position ml-10">
							<p class="fs-12 fc__white">${d.positionName}</p>
						</div>
						<div class="card-thumbnail-content fs-20">
							<a href="${contextPath}/team/${d.teamName}/player" class="fs-20 fc__white">${d.playerUniformNo} ${d.playerName}</a>
						</div>
					</div>
				</div>	
			</td>
		`
	})
	
	const parent = $(".team-player-table").eq(0)
	parent.html(html)
}


function changePageCover(d){
	if(d.imgOriginal4 != undefined){
		$(".pagecover-img").css("background-image", `url("${contextPath}${d.imgOriginal4}")`);
		$(".pagecover-img").css("background-color", 0);
	}
}

function showPageCoverBottom(d){
	if(d.teamColor == undefined){
		d.teamColor = "base_color"
	}
	
	
	let html =
		`
			<div class="pagecover-bottom ${d.teamColor}">
				<div class="pagecover-bottom-inner d-flex fc__white">
					<ul>
						<li><a href="players?type=1" onclick="goPosition()">코칭스태프</a></li>
						|
						<li><a href="players?type=2" onclick="goPosition()">투수</a></li>
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

function goPosition(){
	let request_url =`${contextPath}/api/player/getPlayerPosition`
	$.ajax({
		type: "GET",
		url: request_url,
		dataType: "json",
		data:{team},
		success: function (res) {
			let isGetData = res.hasOwnProperty("data");
			if (isGetData){
				showPageCoverBottom(res.data);
				showTeamPlayers(res.data);
			}
		},
		error:function(){
			alert('실패!');
		}
		
});
}

function showBtnArea(d){
	let html = 
		`
			<button id="add-player-btn" class ="${d.teamColor}" onclick="location.href='${contextPath}/team/${d.teamName}/playerAdd' ">선수 추가</button>
			<button id="delete-player-btn" class ="${d.teamColor} fc__white">선수 삭제</button>
		`
	
	
	const parent = $(".button-area").eq(0)
	parent.html(html)
}