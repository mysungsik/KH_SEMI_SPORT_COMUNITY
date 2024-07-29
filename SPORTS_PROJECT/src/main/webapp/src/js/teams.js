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
	//showTeams(teams_data);
	
		let request_url= `${contextPath}/api/teams/getTeams`
		$.ajax({
			type: "GET",
			url: request_url,
			dataType: "json",
			success: function (res) {
				let isGetData = res.hasOwnProperty("data");
				if (isGetData){
					showTeams(res.data);
					
				}
			}
			
		});
	}

);

function showTeams(data){
	html = "";
	
	$.each(data, function(index, d){
		
		let imgSrc = d.imgOriginal1 == undefined 
            ? `${contextPath}/public/images/profile/user_img1.jpg` 
            : `${contextPath}/${d.imgOriginal1}`;
		
		html += 
		`
			<a href="${contextPath}/teams/${d.teamName}" >
			    <div class="teams-card br-10 mb-10 mr-20 ${d.teamColor}">
			    	<div class="team-logo-img">
			            	<img src="${imgSrc}" class="team-logo" alt="구단사진">
			    	</div>
			        <div class="teams-name">
			            <span class="fs-14 fc__white ml-10">${d.teamName}</span>
			            <img src="${contextPath}/public/icons/right-arrow__white.png" class="mr-10">
			        </div>
			    </div>
			</a>
		`
	})
	
	const parent = $(".al-east-icons").eq(0);
	parent.html(html);
}


