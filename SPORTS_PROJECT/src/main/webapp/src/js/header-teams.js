const team_main_data = [
	{team_name: "kia", team_no : 1, team_img : "https://upload.wikimedia.org/wikipedia/en/e/e0/Kia_Tigers_2017_New_Team_Logo.png", team_color : "hover__red"},
	{team_name: "lg", team_no : 2,team_img : "https://upload.wikimedia.org/wikipedia/commons/4/41/LG_Twins_2017.png", team_color : "hover__blue"},
	{team_name: "doosan", team_no : 3, team_img : "https://upload.wikimedia.org/wikipedia/en/e/e0/Kia_Tigers_2017_New_Team_Logo.png", team_color : "hover__red"},
	{team_name: "hanwha", team_no : 4, team_img : "https://upload.wikimedia.org/wikipedia/en/e/e0/Kia_Tigers_2017_New_Team_Logo.png", team_color : "hover__red"},
	{team_name: "lotte", team_no :5, team_img : "https://upload.wikimedia.org/wikipedia/en/e/e0/Kia_Tigers_2017_New_Team_Logo.png", team_color : "hover__red"},
	{team_name: "kt", team_no : 6,team_img : "https://upload.wikimedia.org/wikipedia/en/e/e0/Kia_Tigers_2017_New_Team_Logo.png", team_color : "hover__blue"},
	{team_name: "kia", team_no : 7,team_img : "https://upload.wikimedia.org/wikipedia/en/e/e0/Kia_Tigers_2017_New_Team_Logo.png", team_color : "hover__red"},
	{team_name: "kia", team_no : 8,team_img : "https://upload.wikimedia.org/wikipedia/en/e/e0/Kia_Tigers_2017_New_Team_Logo.png", team_color : "hover__red"},
	{team_name: "kia", team_no : 9,team_img : "https://upload.wikimedia.org/wikipedia/en/e/e0/Kia_Tigers_2017_New_Team_Logo.png", team_color : "hover__red"},
	{team_name: "kia", team_no : 10,team_img : "https://upload.wikimedia.org/wikipedia/en/e/e0/Kia_Tigers_2017_New_Team_Logo.png", team_color : "hover__red"}
]


const array = location.pathname.split('/');

$(document).ready(function() {
	for(let t of team_main_data){
		if($(location.pathname.split('/'))[3]== t.team_name){
			console.log("팀 선택됨?");
			//teamNav(t);
			console.log("제대로 나옴?");
			break;
			
		}else{
			console.log("선택된 팀 구단이 아닙니다.");
		}
	}
});



function teamNav(data){
	html = "";
	$.each(data, function(index, d){
	  	html = 
  		`
			<li>
				<a class="fs-20__b ${d.team_color} team-name" href="${contextPath}/team/${d.team_name}/info">${d.team_name}</a>
			</li>
			<li>
				<a class="fs-20__b ${d.team_color}" href="${contextPath}/team/${d.team_name}/players">PLAYERS</a>
			</li>
			<li>
				<a href="${contextPath}/team/${d.team_name}"><img class="team-logo" src="${d.team_img}"></a>
			</li>
			<li>
				<a class="fs-20__b ${d.team_color}" href="${contextPath}/team/${d.team_name}/schedule">SCHEDULE</a>
			</li>
			<li>
				<a class="fs-20__b ${d.team_color}" href="${contextPath }/community/communityBoard/cheer">CHEERS</a>
			</li>
		`
	})
	
	const parent = $(".team-nav").eq(0)
	parent.html(html)
	
}
