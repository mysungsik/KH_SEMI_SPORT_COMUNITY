const team_player = [
	{team_name: "kia", player_position:"투수", uniform_no: 54, player_name: "양현종", player_headshot:"",  team_color: "kia_color"}
]

$(document).ready(function() {
	showPageCoverBottom(team_player);
	showTeamPlayers(team_player);
	showBtnArea(team_player);
});


function showTeamPlayers(data){
	html = "";
	
	$.each(data, function(index, d){
		html +=
		`
			<td>
				<div class="card-thumbnail">
					<div class="card-thumbnail-img">
						<a href="${contextPath}/team/${d.team_name}/player">
							<img src="${d.player_headshot}">
						</a>
					</div>
					<div class="${d.team_color} card-thumbnail-infos">
						<div class="card-thumbnail-position ml-10">
							<p class="fs-12 fc__white">${d.player_position}</p>
						</div>
						<div class="card-thumbnail-content fs-20">
							<a href="${contextPath}/team/${d.team_name}/player" class="fs-20 fc__white">${d.uniform_no} ${d.player_name}</a>
						</div>
					</div>
				</div>	
			</td>
		`
	})
	
	const parent = $(".team-player-table").eq(0)
	parent.html(html)
}

function showPageCoverBottom(data){
	html = "";
	
	$.each(data, function(index, d){
		html =
		`
			<div class="pagecover-bottom ${d.team_color}">
				<div class="pagecover-bottom-inner d-flex fc__white">
					<ul>
						<li><a href="${contextPath}/team/${d.team_name}/players?type=1">코칭스태프</a></li>
						|
						<li><a href="${contextPath}/team/${d.team_name }/players?type=2">투수</a></li>
						|
						<li><a href="${contextPath}/team/${d.team_name }/players?type=3">포수</a></li>
						|
						<li><a href="${contextPath}/team/${d.team_name }/players?type=4">내야수</a></li>
						|
						<li><a href="${contextPath}/team/${d.team_name }/players?type=5">외야수</a></li>
					</ul>
				</div>
			</div>
		`
	})
	
	const sibling = $(".pagecover-img").eq(0)
	sibling.after(html)
}

function showBtnArea(data){
	html="";
	
	$.each(data, function(index, d){
		html = 
		`
			<button id="add-player-btn" class ="${d.team_color}" onclick="location.href='${contextPath}/team/${d.team_name}/playerAdd' ">선수 추가</button>
			<button id="delete-player-btn">선수 삭제</button>
		`
	})
	
	
	const parent = $(".button-area").eq(0)
	parent.html(html)
}