const team_info = [
	{team_name: "kia", video: "https://www.youtube.com/watch?v=ZEPS5Bm3iqc&t=1108s", team_contents: "현대자동차그룹의 계열사인 기아가 운영하는 KBO 리그의 프로 야구단으로 연고지는 광주광역시, 홈구장은 광주광역시 북구 임동에 위치한 광주 기아 챔피언스 필드.", team_logo: null, logo_des : null,team_ci:null, ci_des: null },
	{team_name: "kia", video: "https://www.youtube.com/watch?v=ZEPS5Bm3iqc&t=1108s", team_contents: "현대자동차그룹의 계열사인 기아가 운영하는 KBO 리그의 프로 야구단으로 연고지는 광주광역시, 홈구장은 광주광역시 북구 임동에 위치한 광주 기아 챔피언스 필드.", team_logo: null, logo_des : null,team_ci:null, ci_des: null },
	{team_name: "kia", video: "https://www.youtube.com/watch?v=ZEPS5Bm3iqc&t=1108s", team_contents: "현대자동차그룹의 계열사인 기아가 운영하는 KBO 리그의 프로 야구단으로 연고지는 광주광역시, 홈구장은 광주광역시 북구 임동에 위치한 광주 기아 챔피언스 필드.", team_logo: null, logo_des : null,team_ci:null, ci_des: null },
	{team_name: "kia", video: "https://www.youtube.com/watch?v=ZEPS5Bm3iqc&t=1108s", team_contents: "현대자동차그룹의 계열사인 기아가 운영하는 KBO 리그의 프로 야구단으로 연고지는 광주광역시, 홈구장은 광주광역시 북구 임동에 위치한 광주 기아 챔피언스 필드.", team_logo: null, logo_des : null,team_ci:null, ci_des: null },
	{team_name: "kia", video: "https://www.youtube.com/watch?v=ZEPS5Bm3iqc&t=1108s", team_contents: "현대자동차그룹의 계열사인 기아가 운영하는 KBO 리그의 프로 야구단으로 연고지는 광주광역시, 홈구장은 광주광역시 북구 임동에 위치한 광주 기아 챔피언스 필드.", team_logo: null, logo_des : null,team_ci:null, ci_des: null }
]

$(document).ready(function() {
	showPageCover(team_info);
	showTeamInfo(team_info);
});


function showPageCover(data){
	html = "";
	
	$.each(data, function(index, d){
		html =
		`
		<div class="fc__white fs-28__b">구단 소개</div>
			
		<div class="fc__white">
			<i class="fa-solid fa-house"></i>
			 > ${d.team_name} > 구단 소개
		</div>
		`
	})
	
	const parent = $(".pagecover-img").eq(0)
	parent.html(html)
}


function showTeamInfo(data){
	html = "";
	$.each(data, function(index, d){
	  	html = 
	  		`
			<div class="container team-video mt-20 mb-20">
				<iframe src="${d.video}" title="description"></iframe>
			</div>
			<hr>
			<div class="container team-story mt-20 mb-20 d-flex">
				<p class="fs-28__b mb-10">OUR STORY</p>
				<p class="fs-14">${d.team_contents}</p>
			</div>
			<hr>
			<div class="container team-ci mt-20 mb-20 d-flex">
				<p class="fs-28__b mb-10">${d.team_name} CI</p>
				<div class="team-ci-content d-flex">
					<div>
						<p class="fs-14">${d.ci_des}</p>
					</div>
					<div class="team-ci-content-img">
						<img alt="" src="${d.team_ci}">
					</div>
				</div>
			</div>
			<hr>
			<div class="container teams-logo mt-20 d-flex">
				<p class="fs-28__b mb-10">${d.team_name} LOGO</p>
				<div class="team-logo-content d-flex">
					<div>
						<p class="fs-14">${d.logo_des}</p>
					</div>
					<div class="team-logo-content-img">
						<img alt="" src="${d.team_logo}">
					</div>
				</div>
		</div>
		`
	})
	
	const parent = $("main").eq(0)
	parent.html(html)
	
}
