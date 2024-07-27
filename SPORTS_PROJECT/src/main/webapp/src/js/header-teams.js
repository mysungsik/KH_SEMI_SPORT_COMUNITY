$(document).ready(function() {
	getHeader();
	
});

function getHeader(){
	let request_url= `${contextPath}/api/teams/getTeamNav`	
	
	$.ajax({
		type: "GET",
		url: request_url,
		dataType: "json",
		data : {
			team
		},
		success: function(res) {
			let isGetData = res.hasOwnProperty("data");
			if (isGetData){
				showOneTeam(res.data);
			}
		},
		error:function(){
			alert('실패!');
		}
		
	});
	
}


function showOneTeam(d){
	
  	let html = 
	`
		<li>
			<a class="fs-20__b ${d.teamColor} team-name" href="${contextPath}/team/${d.teamName}/info">${d.teamName}</a>
		</li>
		<li>
			<a class="fs-20__b ${d.teamColor}" href="${contextPath}/team/${d.teamName}/players">PLAYERS</a>
		</li>
		<li>
			<a href="${contextPath}/team/${d.teamName}"><img class="team-logo" src= "${contextPath}${d.imgOriginal1}" ></a>
		</li>
		<li>
			<a class="fs-20__b ${d.teamColor}" href="${contextPath}/team/${d.teamName}/schedule">SCHEDULE</a>
		</li>
		<li>
			<a class="fs-20__b ${d.teamColor}" href="${contextPath }/community/communityBoard/cheer">CHEERS</a>
		</li>
	`

	
	const parent = $(".team-nav").eq(0)
	parent.html(html)
	
}
