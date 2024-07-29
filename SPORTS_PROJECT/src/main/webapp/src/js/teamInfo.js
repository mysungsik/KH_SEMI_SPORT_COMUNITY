//더미 데이터--------------------
$(document).ready(function(){
	
	let request_url=`${contextPath}/api/teams/getOneTeam`
	
	$.ajax({
		type: "GET",
		url: request_url,
		dataType: "json",
		data:{team},
		success: function (res) {
			let isGetData = res.hasOwnProperty("data");
			console.log(res.data)
			if (isGetData){
				changePageCover(res.data);
				showPageCover(res.data);
				showPageCoverBottom(res.data);
				showTeamInfo(res.data);
			}
		},
		error:function(){
			alert('실패!');
		}
		
	});
	
});


function changePageCover(d){
		console.log(d.imgOriginal4)
	if(d.imgOriginal4 != undefined){
		$(".pagecover-img").css("background-image", `url("${contextPath}${d.imgOriginal4}")`);
		$(".pagecover-img").css("background-color", 0);
	}
}

function showPageCover(d){
	
	let html = 
		`
		<div class="fc__white fs-28__b team_intro">구단 소개</div>
			
		<div class="fc__white team_intro">
			<i class="fa-solid fa-house"></i>
			 > ${team} > 구단 소개
		</div>
		`;
	
	const parent = $(".pagecover-img").eq(0)
	parent.html(html)
}


function showTeamInfo(d){
	let html = 
	  		`
			<div class="container team-video mt-20 mb-20">
				<iframe src="${d.videoUrl}" title="description"></iframe>
			</div>
			<hr>
			<div class="container team-story mt-20 mb-20 d-flex">
				<p class="fs-28__b mb-10">OUR STORY</p>
				<p class="fs-14">${d.teamDes}</p>
			</div>
			<hr>
			<div class="container team-ci mt-20 mb-20 d-flex">
				<p class="fs-28__b mb-10">${d.teamName} CI</p>
				<div class="team-ci-content d-flex">
					<div>
						<p class="fs-14">${d.imgDes2}</p>
					</div>
					<div class="team-ci-content-img">
						<img alt="" src="${d.imgOriginal2}">
					</div>
				</div>
			</div>
			<hr>
			<div class="container teams-logo mt-20 d-flex">
				<p class="fs-28__b mb-10">${d.teamName} LOGO</p>
				<div class="team-logo-content d-flex">
					<div>
						<p class="fs-14">${d.imgDes1}</p>
					</div>
					<div class="team-logo-content-img">
						<img alt="" src="${d.imgOriginal1}">
					</div>
				</div>
		</div>
		`;
	const parent = $("main").eq(0)
	parent.html(html)
	
}

function showPageCoverBottom(d){
	
		let html =
		`
			<div class="pagecover-bottom ${d.teamColor}">
				<div class="pagecover-bottom-inner d-flex">
					<div class="fc__white fs-20 team-name">${d.teamName}</div>
				</div>
			</div>
		`;
	
	const sibling = $(".pagecover-img").eq(0)
	sibling.after(html)
}
