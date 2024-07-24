const team_player = [
	{team_name: "kia", player_position:"투수", uniform_no: 54, player_name: "양현종", player_headshot:null},
	{team_name: "kia", player_position:"투수", uniform_no: 54, player_name: "양현종", player_headshot:null},
	{team_name: "kia", player_position:"투수", uniform_no: 54, player_name: "양현종", player_headshot:null},
	{team_name: "kia", player_position:"투수", uniform_no: 54, player_name: "양현종", player_headshot:null},
	{team_name: "kia", player_position:"투수", uniform_no: 54, player_name: "양현종", player_headshot:null},
	{team_name: "kia", player_position:"투수", uniform_no: 54, player_name: "양현종", player_headshot:null},
	{team_name: "kia", player_position:"투수", uniform_no: 54, player_name: "양현종", player_headshot:null},
	{team_name: "kia", player_position:"투수", uniform_no: 54, player_name: "양현종", player_headshot:null}
]

$(document).ready(function() {
	showTeamPlayers(team_player)
});


function showTeamPlayers(data){
	html = "";
	
	$.each(data, function(index, d){
		html +=
		`
			<td>
				<div class="card-thumbnail">
					<a href="${contextPath }/team/${d.team_name}/player">
						<img class="card-thumbnail-img" src="${d.player_headshot}">
					</a>
					<div class="card-thumbnail-infos">
						<div class="card-thumbnail-position ml-10">
							<p class="fs-12 fc__white">${d.player_position}</p>
						</div>
						<div class="card-thumbnail-content fs-20">
							<a href="${contextPath }/team/${d.team_name}/player" class="fs-20 fc__white">${d.uniform_no} ${d.player_name}</a>
						</div>
					</div>
				</div>	
			</td>
		`
	})
	
	const parent = $(".team-player-table").eq(0)
	parent.html(html)
}