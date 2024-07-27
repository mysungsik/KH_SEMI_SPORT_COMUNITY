let reportData = []
let userData = [];

$(document).ready(function () {
	// 유저 데이터
	getUserInfos();

	// 신고 데이터
	getReportsInfos();
	
	// 이미지 변경시 썸네일 생성 이벤트 리스너 연결 함수
	showThumbnail();

});

// userInfo 얻는 함수
function getUserInfos(){
	const request_url = `${contextPath}/api/admin/profile/getAllUsersData`;
	
	$.ajax({
		type: "GET",
		url: request_url,
		dataType: "json",
		success: function (res) {
			let isGetData = res.hasOwnProperty("data")
			if (isGetData){
				userData = res.data;
				paginationActive("user", userData, adminTemplate);
			}
        },
		error : function(request, status, error){
			console.log(request);
			console.log(status);
			console.log(error);
		}
	});
}

function getReportsInfos(){
	const request_url = `${contextPath}/api/report/getReportAll`;
	
	$.ajax({
		type: "GET",
		url: request_url,
		dataType: "json",
		success: function (res) {
			let isGetData = res.hasOwnProperty("data")
			if (isGetData){
				reportData = res.data;
				paginationActive("report", reportData, adminTemplate);
			}
        },
		error : function(request, status, error){
			console.log(request);
			console.log(status);
			console.log(error);
		}
	});
}


// 관리자용 페이지네이션 템플릿 함수 (User)
function adminTemplate(data, id) {
	let item = ""
	if (id == "user"){
		item += `
			<table class="manage-table">
				<thead>
					<tr> 
						<td>No</td> 
						<td>Id</td> 
						<td>Email</td> 
						<td>Role</td> 
						<td>Number</td> 
						<td>상세</td> 
					</tr>
				</thead>
				<tbody>`
		$.each(data, function(index, d){
	  	item += 
	  		`<tr>
				<input type="hidden" class="userAddress" value='${d.userAddress}'> 
				<input type="hidden" class="userState" value='${d.userState}'> 
				<input type="hidden" class="lastLogin" value='${d.lastLogin}'> 
				<input type="hidden" class="deletedDate" value='${d.deletedDate}'> 
				<td class="userNo">${d.userNo}</td> 
				<td class="userId" disabled>${d.userId}</td> 
				<td class="userEmail">${d.userEmail}</td> 
				<td class="userAuthority">${d.userAuthority}</td> 
				<td class="userPhone">${d.userPhone}</td> 
				<td data-num=${d.userNo}><img class="edit" src="/SPORTS_PROJECT/public/icons/edit.png"></td> 
			</tr>`
		})
		item += `</tbody>
	             </table>`
	} 
	// 관리자용 페이지네이션 템플릿 함수 (Report)
	else {
		item += `
			<table class="manage-table">
				<thead>
					<tr> 
						<td>No</td> 
						<td>아이디</td> 
						<td>신고 유형</td> 
						<td>위반 유형</td> 
						<td>신고 내용</td> 
						<td>상세</td> 
					</tr>
				</thead>
				<tbody>
				`;
		$.each(data, function(index, d){
	  	item += 
	  		`<tr>
				<input type="hidden" class="reportTypeNo" value='${d.reportTypeNo}'> 
				<input type="hidden" class="reportTargetNo" value='${d.reportTargetNo}'> 
				<input type="hidden" class="violationTypeNo" value='${d.violationTypeNo}'> 
				<input type="hidden" class="reportTargetTitle" value='${d.reportTargetTitle}'> 
				<input type="hidden" class="reportTargetContent" value='${d.reportTargetContent}'> 
				<td class="reportNo" >${d.reportNo}</td> 
				<td class="userId" >${d.userId}</td> 
				<td class="reportTypeName" >${d.reportTypeName}</td> 
				<td class="violationTypeName" >${d.violationTypeName}</td> 
				<td class="reportContent"> <span>${d.reportContent}</span></td> 
				<td data-reportno=${d.reportNo}><img class="edit" src="/SPORTS_PROJECT/public/icons/edit.png"></td> 
			</tr>`
		})
		item += `</tbody>
	             </table>`
	}

    return item;
}

// 페이지네이션 실행 함수
function paginationActive(id, datas, template){
	
	// 한 페이지당 개수 정하기
	let page_size = 20;
	
	// 각 조건에 맞게 페이지네이션 실행
	if ( $(`#${id}-pagination`).length > 0 ){

		 $(`#${id}-pagination`).pagination({
		    dataSource: datas,
		    pageSize: page_size,
		    callback: function(data, pagination) {
		        let html = template(data,id);
		        $(`#${id}-data`).html(html);	// 데이터 페이지네이션
				let currentPage = pagination.pageNumber;	// 현재 페이지 번호
				// 페이지네이션 변경
				let pagingEl = $(`.paginationjs-page[data-num='${currentPage}'] a`);
				pagingEl.css({
					fontSize : "14px",
					textDecoration : "underline"
				})
			}
		})
		
		// 조건에 맞는 edit 수행
		if (id == "user"){
			$(".edit").on("click", function(){
				let data = {
					userNo : $(this).parent().parent().find(".userNo").text(),
					userId : $(this).parent().parent().find(".userId").text(),
					userEmail : $(this).parent().parent().find(".userEmail").text(),
					userAuthority : $(this).parent().parent().find(".userAuthority").text(),
					userPhone : $(this).parent().parent().find(".userPhone").text(),
					userAddress : $(this).parent().parent().find(".userAddress").val(),
					userState : $(this).parent().parent().find(".userState").val(),
					lastLogin : $(this).parent().parent().find(".lastLogin").val(),
					deletedDate : $(this).parent().parent().find(".deletedDate").val()
				}
				
				showModal(id, data, $(this))
				
			})
				
		} else if (id == "report"){
			$(".edit").on("click", function(){
				let data = {
					reportNo : $(this).parent().parent().find(".reportNo").text(),
					userId : $(this).parent().parent().find(".userId").text(),
					reportTypeNo : $(this).parent().parent().find(".reportTypeNo").val(),
					reportTargetNo : $(this).parent().parent().find(".reportTargetNo").val(),
					reportTypeName : $(this).parent().parent().find(".reportTypeName").text(),
					violationTypeName : $(this).parent().parent().find(".violationTypeName").text(),
					reportContent : $(this).parent().parent().find(".reportContent").text(),
					reportTargetTitle : $(this).parent().parent().find(".reportTargetTitle").val(),
					reportTargetContent : $(this).parent().parent().find(".reportTargetContent").val()
				}

				showModal(id, data, $(this))
			})
		}
	}
}
	
	

function showModal(id, data ,el){
	let modalEl = $('#adminModal');
	
	if (id == "user"){
		modalEl.find(".modal-title").html(`<p class="fs-14 fc__white">회원관리 / 회원번호 : <span class="userNo">${data.userNo}</span></p>`)
				
		modalEl.find(".modal-body").html(`
			<div class="modal-row">
				<div>
					<label for="user_id"> USER ID </label>
					<input type="text" id="user_id" name="user_id" value="${data.userId}" disabled>				
				</div>
				<div>
					<label for="user_email"> USER EMAIL </label>
					<input type="text" id="user_email" name="user_email" value="${data.userEmail}" disabled>								
				</div>
			</div>
			<div  class="modal-row">
				<div>
					<label for="user_id"> USER ROLE </label>
					<input type="text" id="user_id" name="user_auth" value="${data.userAuthority}">				
				</div>
				<div>
					<label for="user_email"> USER ADDRESS </label>
					<input type="text" id="user_email" name="user_address" value="${data.userAddress}" disabled>								
				</div>
			</div>
			<div  class="modal-row">
				<div>
					<label for="user_id"> USER NUMBER </label>
					<input type="text" id="user_id" name="user_phone" value="${data.userPhone}" disabled>				
				</div>
				<div>
					<label for="user_lastLogin"> LAST LOGIN </label>
					<input type="text" id="user_lastLogin" name="user_lastLogin" value="${data.lastLogin}" disabled>								
				</div>
			</div>
			<div  class="modal-row">
				<div>
					<label for="user_id"> USER STATEMENT </label>
					<input type="text" id="user_id" name="user_state" value="${data.userState}">				
				</div>
				<div>
					<label for="user_deletedDt"> DELETED DATE </label>
					<input type="text" id="user_deletedDt" name="user_deletedDt" value="${data.deletedDate}" disabled>								
				</div>
			</div>
			
			<div class="modal-btns">
				<button class="btn-medium__blue modifyBtn"> 수정 </button>
				<button class="btn-medium__gray cancelBtn" data-bs-dismiss="modal"> 취소 </button>
				<button class="btn-medium__red deleteBtn"> 삭제</button>
			</div>
			`
		);
	} else if (id == "report"){
	
		modalEl.find(".modal-title").html(`<p class="fs-14 fc__white">신고관리 / 신고번호 : <span class="reportNo">${data.reportNo}</span></p>`)
		
		modalEl.find(".modal-body").html(`
			<div class="modal-row">
				<div>
					<label for="userId"> USER ID </label>
					<p type="text" id="user_id" name="userId">${data.userId}</p>		
				</div>
				<div>
					<label for="reportTypeName"> 신고 유형 </label>
					<p type="text" id="reportTypeName" name="reportTypeName">${data.reportTypeName}</p>						
				</div>
			</div>
			<div  class="modal-row">
				<div>
					<label for="violationTypeName"> 위반 유형 </label>
					<p type="text" id="violationTypeName" name="violationTypeName">${data.violationTypeName}</p>		
				</div>
				<div>
					<label for="reportContent"> 신고 내용 </label>
					<p type="text" id="reportContent" name="reportContent">${data.reportContent}</p>							
				</div>
			</div>
			
			${data.reportTargetTitle == 'undefined' ? "" :`
				<div  class="modal-row">
					<div>
						<label for="reportTargetTitle"> 신고 타겟 제목 </label>
						<p type="text" id="reportTargetTitle" name="reportTargetTitle"> ${data.reportTargetTitle} </p>				
					</div>
				</div>`
			}
			
			<div class="modal-row">
				<div>
					<label for="reportTargetContent"> 신고 타겟 내용 </label>
					<p type="text" id="reportTargetContent" class="${data.reportTargetTitle == 'undefined' ? 'reply-content' : ''}" name="reportTargetContent">${data.reportTargetContent}</p>		
				</div>
			</div>
			
			${data.reportTargetTitle == 'undefined' ? "" : `
				<a class="move-board fs-10 fc__blue text-hover__blue"> 해당 게시글로 이동 </a> `
			}
			
			<div class="modal-btns">
				<button class="btn-medium__blue reportAcceptBtn"> 신고 처리 </button>
				<button class="btn-medium__gray cancelBtn" data-bs-dismiss="modal"> 취소 </button>
				<button class="btn-medium__red reportCancelBtn"> 신고 취소 </button>
			</div>
			`
		);
	}

	// modifyBtn 에 수정 이벤트 추가 && 부모의 Element 전달 (데이터 변경용)
	modalEl.find(".modifyBtn").on("click", function() {
		updateUserInfo(el);
	});

	// deleteBtn 에 삭제 이벤트 추가
	modalEl.find(".deleteBtn").on("click", function() {
		deleteUser(el);
	});
	
	modalEl.modal('show');
}

// 유저 수정
function updateUserInfo(el){
	let modalEl = $('#adminModal');
	let adminModal = bootstrap.Modal.getInstance(modalEl);

	const userNo = $(".modal-title .userNo").text();
	let userAuthority = $(".modal-body input[name='user_auth']").val().toUpperCase();
	let userState = $(".modal-body input[name='user_state']").val().toUpperCase();

	if (authValidate(userAuthority) && stateValidate(userState)){
		const request_url = `${contextPath}/api/admin/profile/updateUserInfo`
		const data = {
			userNo,
			userAuthority,
			userState
		}
	
		$.ajax({
			type: "POST",
			url: request_url,
			data : data,
			dataType: "json",
			async : false,
			success: function (res) {
				let isUpdated = res.hasOwnProperty("data")
				if (isUpdated){
					el.parent().parent().find(".userAuthority").text(userAuthority)
					el.parent().parent().find(".userState").text(userState)
					toastPop("info", res.message)
				} else{
					toastPop("warn", res.message)
				}
			},
			error : function(request, status, error){
				toastPop("warn", "권한 변경에 실패하였습니다.")
				console.log(request);
				console.log(status);
				console.log(error);
			}
		});

		adminModal.hide();
	}
}

// 유저 삭제일 업데이트
function deleteUser(el){
	let modalEl = $('#adminModal');
	let adminModal = bootstrap.Modal.getInstance(modalEl);

	const userNo = $(".modal-title .userNo").text();
	
	const request_url = `${contextPath}/api/admin/profile/deleteUser`
	const data = {
		userNo
	}

	$.ajax({
		type: "POST",
		url: request_url,
		data : data,
		dataType: "json",
		async : false,
		success: function (res) {
			let isDeleted = res.hasOwnProperty("data")
			if (isDeleted){
				el.parent().parent().find(".deletedDate").val(res.data)
				toastPop("info", res.message)
			} else{
				toastPop("warn", res.message)
			}
		},
		error : function(request, status, error){
			toastPop("warn", "유저 삭제에에 실패하였습니다.")
			console.log(request);
			console.log(status);
			console.log(error);
		}
	});

	adminModal.hide();

}

// 이미지 변경 모달
function changeImgModal(){
	const changeImgModalEl = $("#changeImgModal");
	changeImgModalEl.modal("show");
}

// 이미지 변경 함수
function changeImgFn(){
	const inputedProfileImg = $("input[name='inputProfieImg']")
	const profileThumbnail = $(".profileThumbnail");
	
	const resetThumbnailRegex = /\/public\/images\/profile\/user_img1\.jpg/;

	
	if (inputedProfileImg.val() == "" &&
		!resetThumbnailRegex.test(profileThumbnail.prop("src")) ){
		// 이미지 추가해달라는 팝업
		toastPop("warn", "이미지를 추가해주세요!");
		return false;
	}
	else if (resetThumbnailRegex.test(profileThumbnail.prop("src"))){
		const request_url = `${contextPath}/api/profile/restUserProfileImg`
		
		$.ajax({
			type: "POST",
			url: request_url,
			async: false,
			success: function () {
				location.href = `${contextPath}/profile/myInfo`
			},
			error : function(request, status, error){
				toastPop("warn", "변경에 실패하였습니다")
				console.log(request);
				console.log(status);
				console.log(error);
			}
		});
		return false;
	} else {
		// 이미지가 존재하므로 form 실행
		return true;
	}
}

// 이미지 모달의 썸네일 이벤트 리스너 연결 함수
function showThumbnail(){
	const inputedProfileImg = $("input[name='inputProfieImg']")

	inputedProfileImg.on("change", function(){
		if (this.files[0] != undefined){
			const reader = new FileReader();

            reader.readAsDataURL(this.files[0])
			reader.onload = function(e){
				const profileThumbnail = $(".profileThumbnail");
				profileThumbnail.prop("src", e.target.result);
			}

		}
	})
}

// 기본 이미지로 변경 함수
function changeImgDefault(){
	const profileThumbnail = $(".profileThumbnail");
	profileThumbnail.prop("src", `${contextPath}/public/images/profile/user_img1.jpg`)
}

// 검색 기능 생성
function searchUser(){
	let category = $("[name='search-type']").val();	// 작성자, 제목, 내용
	let searchInput = $("[name='search-input']").val();
	
	const request_url = `${contextPath}/api/admin/profile/searchUsersData`;
	
	$.ajax({
		type: "GET",
		url: request_url,
		data: {
			category,
			searchInput
		},
		dataType: "json",
		success: function (res) {
			let isGetData = res.hasOwnProperty("data")
			if (isGetData){
				const userData = res.data;
				paginationActive("user", userData, adminTemplate);
			}
        },
		error : function(request, status, error){
			console.log(request);
			console.log(status);
			console.log(error);
		}
	});
	
}





