const teams_data = [
	{team_name: "kia", team_img : "https://upload.wikimedia.org/wikipedia/en/e/e0/Kia_Tigers_2017_New_Team_Logo.png", team_color : "hover__red"},
	{team_name: "lg", team_img : "https://upload.wikimedia.org/wikipedia/commons/4/41/LG_Twins_2017.png", team_color : "hover__red"},
	{team_name: "doosan", team_img : "https://upload.wikimedia.org/wikipedia/en/e/e0/Kia_Tigers_2017_New_Team_Logo.png", team_color : "hover__red"},
	{team_name: "hanwha", team_img : "https://upload.wikimedia.org/wikipedia/en/e/e0/Kia_Tigers_2017_New_Team_Logo.png", team_color : "hover__red"},
	{team_name: "lotte", team_img : "https://upload.wikimedia.org/wikipedia/en/e/e0/Kia_Tigers_2017_New_Team_Logo.png", team_color : "hover__red"},
	{team_name: "kt", team_img : "https://upload.wikimedia.org/wikipedia/en/e/e0/Kia_Tigers_2017_New_Team_Logo.png", team_color : "hover__blue"},
	{team_name: "kia", team_img : "https://upload.wikimedia.org/wikipedia/en/e/e0/Kia_Tigers_2017_New_Team_Logo.png", team_color : "hover__red"},
	{team_name: "kia", team_img : "https://upload.wikimedia.org/wikipedia/en/e/e0/Kia_Tigers_2017_New_Team_Logo.png", team_color : "hover__red"},
	{team_name: "kia", team_img : "https://upload.wikimedia.org/wikipedia/en/e/e0/Kia_Tigers_2017_New_Team_Logo.png", team_color : "hover__red"},
	{team_name: "kia", team_img : "https://upload.wikimedia.org/wikipedia/en/e/e0/Kia_Tigers_2017_New_Team_Logo.png", team_color : "hover__red"},
	
]

// 더미 데이터 ------------------------------------------------------------------


// nav
// http://localhost:8083/ksy/teams/kia
$(document).ready(function() {
	showTeams(teams_data);
	
	let team = $("input[name='team']");
	
	if (team.length > 0){
		let team_value = team.val();
		
		switch (team_value) {
			case "kia": {
				$(".team-each-image").css("background-image", `url(${"https://tigers.co.kr/files/banner/2023/02/08/catchphrase_pc.png"})`);
			}break;
			
			case "lg": {
				$(".team-each-image").css("background-image", `url(${"https://www.lgtwins.com/service/download.ncd?actID=BR_RetrieveFile&baRq=IN_DS&baRs=DOWNLOAD&IN_DS.FILE_TYPE=MNP&IN_DS.FILE_ID=6350"})`);
				
			}break;
			
		}
	}
});


const request_url = `${contextPath}/api/teams`

function showTeams(data){
	
	html = "";
	$.each(data, function(index, d){
	  	html += 
	  		`
			<a href="${contextPath}/teams/${d.team_name}" >
			    <div class="teams-card br-10 mb-10 mr-20 ${d.team_color}">
			    	<div class="team-logo-img">
			            <img src="${d.team_img}" class="team-logo" alt="구단사진">
			    	</div>
			        <div class="teams-name">
			            <span class="fs-14 fc__white ml-10">${d.team_name}</span>
			            <img src="${contextPath}/public/icons/right-arrow__white.png" class="mr-10">
			        </div>
			    </div>
			</a>
		`
	})
	
	const parent = $(".al-east-icons").eq(0)
	parent.html(html)
}


