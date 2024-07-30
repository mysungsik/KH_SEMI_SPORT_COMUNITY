// 더미데이터 START ---------------------------------
let commentsData = [];
let communityData = [];
let newsLikedData = [];


	
// 더미데이터 END ---------------------------------

$(document).ready(function () {
	
	// Get Reply
	getMycomments();
	
	// Get Community
	getMyCommunity();
	
	// Get NewsLiked
	getMyNewsLiked();

	// 이미지 변경시 썸네일 생성 이벤트 리스너 연결 함수
	showThumbnail();
});

// 내 댓글 가져오는 함수
function getMycomments(){
	let request_url = `${contextPath}/api/profile/getMycomments`
	$.ajax({
		type: "GET",
		url: request_url,
		dataType: "json",
		async: false,
		success: function (res) {
			let isGetData = res.hasOwnProperty("data");
			
			if(isGetData){
				commentsData = res.data
				paginationActive("comments", commentsData, paginationTemplate);
			}
			else{
				toastPop("warn", "댓글 가져오는데 실패하였습니다.");
			}

		}
	});
}

// 내 게시글 가져오는 함수
function getMyCommunity(){
	let request_url = `${contextPath}/api/profile/getMyCommunity`
	$.ajax({
		type: "GET",
		url: request_url,
		dataType: "json",
		async: false,
		success: function (res) {
			let isGetData = res.hasOwnProperty("data");
			
			if(isGetData){
				communityData = res.data
				paginationActive("board", communityData, paginationTemplate);
			}
			else{
				toastPop("warn", "게시글을 가져오는데 실패하였습니다.");
			}

		}
	});
}

// 내 좋아요한 뉴스 가져오는 함수
function getMyNewsLiked(){
	let request_url = `${contextPath}/api/profile/getMyNewsLiked`
	$.ajax({
		type: "GET",
		url: request_url,
		dataType: "json",
		async: false,
		success: function (res) {
			let isGetData = res.hasOwnProperty("data");
			
			if(isGetData){
				newsLikedData = res.data
				paginationActive("scrab", newsLikedData, paginationTemplate);
			}
			else{
				toastPop("warn", "게시글을 가져오는데 실패하였습니다.");
			}

		}
	});
}

// 체크박스 전체선택 함수
function allChecks(){
	let allCheck = $("#check-all")	// 체크박스 전체선택 요소
    allCheck.prop("checked", false);	// 페이지 옮기면 취소
    
	let chekcboxes = $("input[type='checkbox']")
	
	allCheck.on("click", ()=>{
	    if(allCheck.prop("checked") == true){
	        $(chekcboxes).prop("checked", true);
	    }
	})
}

// 일반 유저 페이지네이션 템플릿 함수
function paginationTemplate(data, id) {
    let item = "";
    
    if (id == "comments"){
		$.each(data, function(index, d){
		  	item += 
		  		`<div class="item checkbox__blue small-square base__lblue">
		            <div class="element-text">
		                <input type="checkbox" class="replyCheck" id="post-check" name="post-check" value=${d.replyNo}>
		                <div>
		                    <p class="fc__gray"> <span>${d.replyTypeName}</span> - ${d.replyTargetTitle}</p>
		                    <p type="text" class="item-text base__lblue">${d.replyContent}</p> 
		                </div>
		            </div>
		            <div class="element-edit">
		                <img class="edit" src="/SPORTS_PROJECT/public/icons/edit.png"  data-type="reply-update" data-replyno="${d.replyNo}" onclick="showReplyUpdateModal($(this))">
		            </div>
		        </div>`
		})
	} else if (id == "board"){
		$.each(data, function(index, d){
		  	item += 
		  		`<div class="item checkbox__blue small-square base__lblue">
		            <div class="element-text">
		                <input type="checkbox" class="commCheck" id="post-check" name="post-check" value=${d.boardNo}>
		                <div>
		                    <p class="fc__gray"> <span>${d.boardCategory}</span> </p>
		                    <p class="item-text"> ${d.boardTitle} </p>
		                </div>
		            </div>
		            <div class="element-edit">
		                <img class="edit" src="/SPORTS_PROJECT/public/icons/edit.png" onclick="location.href='${contextPath}/community/communityDetail/${d.boardNo}'">
		            </div>
		        </div>`
		})
	}else if (id == "scrab"){
		$.each(data, function(index, d){
		  	item += 
		  		`<div class="item checkbox__blue small-square base__lblue">
		            <div class="element-text">
		                <input type="checkbox" class="newsCheck" id="post-check" name="post-check"  value=${d.newsNo}>
		                <div>
		                    <p class="fc__gray"> <span>${d.teamName}</span> - ${d.newsTitle}</p>
		                    <p class="item-text"> ${d.newsContent} </p>
		                </div>
		            </div>
		            <div class="element-edit">
		                <img class="delete" src="/SPORTS_PROJECT/public/icons/edit.png" onclick="location.href='${contextPath}/news/detail/${d.newsNo}'">
		            </div>
		        </div>`
		})
	}

    return item;
}



// 페이지네이션 실행 함수
function paginationActive(id, datas, template){
	
	// 한 페이지당 개수 정하기
	let page_size = 10;
	
	// 각 조건에 맞게 페이지네이션 실행
	if ( $(`#${id}-pagination`).length > 0 ){

		 $(`#${id}-pagination`).pagination({
		    dataSource: datas,
		 	
		    pageSize: page_size,
		    
		    callback: function(data, pagination) {
		        var html = template(data,id);
		        
		        $(`#${id}-data`).html(html);	// 데이터 페이지네이션
		        
		        // 체크박스 전체선택 함수
		        allChecks();
		
				var currentPage = pagination.pageNumber;	// 현재 페이지 번호
				
				// 페이지네이션 변경
				var pagingEl = $(`.paginationjs-page[data-num='${currentPage}'] a`);
				pagingEl.css({
					fontSize : "14px",
					textDecoration : "underline"
				})
			}
		})
	}
}

// 모달의 팝업 함수
function showModal(el){
	// 모달 지정
	let infoModal = $('#commonModal');

	// 모달의 종류를 분별할 type 을 모달에게 입력, 모달을 구분
	let modalType = $(el).data("type");
	$("[name='modalType']").val(modalType);
	
	// [개인 정보 - 회원 탈퇴] 회원 탈퇴 모달 --------------------
	if (modalType == "resign"){
		
		infoModal.find(".modal-title").html("정말로 탈퇴하시겠습니까?")
		infoModal.find(".modal-body").html(`
				<p>탈퇴시  7일 후 정보 완전 제거</p>
				<p>7일 이전에 재로그인시 탈퇴 취소 처리</p>
			`)
	
		infoModal.modal('show');
		return;
	}
	

	// [초기 비밀번호 검증] 일회성 패스워드 체크가 안되어있을 경우
	if (!passwordCheck){
		let modalType = "passwordCheck"
		$("[name='modalType']").val(modalType);	// 패스워드 체크 모달 확인 버튼을 사용하기 위해 추가

		infoModal.find(".modal-title").html("비밀번호 확인")
		infoModal.find(".modal-body").html(`
			<p> 수정을 위해 현재 비밀번호를 입력해주세요 </p>
			<input type="password" name="profile_${modalType}">`
		);

		infoModal.modal('show');
		return;
	}
	
	// [정보 제공 동의] 모달 생성 ------------
	if (modalType == "emailAgree" ||
		modalType == "phoneAgree" ||
		modalType == "addressAgree"){
			
		let checkboxInput = $(`input[name='${modalType}']`)
		let checkboxLabel = $(`label[for='${modalType}']`)
		
        let name = checkboxInput.prop("name")	// [sns, phone, email] Agree 
      	let value = checkboxInput.prop("checked") 	// [ ON, OFF ]

		
		switch(modalType){
			// [ 정보 제공 동의 수정 ] 
			case "emailAgree" : {
				infoModal.find(".modal-title").html("이메일 정보 제공에 동의하시겠습니까?")
				infoModal.find(".modal-body").html("모달 내용임둥")
				
			} break;
	
			case "phoneAgree" : {
				infoModal.find(".modal-title").html("번호 정보 제공에 동의하시겠습니까?")
				infoModal.find(".modal-body").html("모달 내용임둥")
				
			} break;
			
			case "addressAgree" : {
				infoModal.find(".modal-title").html("주소 정보 제공에 동의하시겠습니까?")
				infoModal.find(".modal-body").html("모달 내용임둥")
				
			} break;
			
			
			default  : {
				infoModal.find(".modal-title").html("잘못된 모달")
				infoModal.find(".modal-body").html("잘못된 모달")
			}
		}

		// [정보 제공 동의] 모달 띄우기
		if (value){
			infoModal.modal('show');
			
		// [정보 제공 동의] 취소	
		}else{
			let policyData = {
				"type" : "",
				"data" : "N"
			}
			
			switch(modalType){
				case "emailAgree":{
					policyData.type = "AGREE_EMAIL"
				};break;
				case "phoneAgree":{
					policyData.type = "AGREE_PHONE"
				};break;
				case "addressAgree":{
					policyData.type = "AGREE_ADDRESS"
				}
			} 
			updateUserPolicy(policyData)
			checkboxLabel.html("OFF")				
		}
	}
	
	else if (modalType == "loginHistory"){
		let request_url = `${contextPath}/api/profile/getUserHistories`
		$.ajax({
			type: "GET",
			url: request_url,
			dataType: "json",
			success: function (res) {
				let isGetData = res.hasOwnProperty("data");
				let historyModal = $('#historyModal');

				if (isGetData){
					let html = `
							<table class="history-table">
							<thead>
								<tr> 
									<td>일시</td>
									<td>서비스</td>
									<td>로그인 형태</td>
								</tr>
							</thead>
							<tbody>`

					$.each(res.data, function(index, d){
						html += `
							<tr>
								<td> ${d.loginDate}</td>
								<td> 스포츠 커뮤니티 </td>
								<td> ${d.loginAuto == 'Y' ? '자동 로그인' : '수동 로그인'} </td>
							</tr>`
					})

					html += `
							</tbody>
						</table>`
					
					historyModal.find(".modal-body").html(html);
					historyModal.modal("show");
				}
			}
		});
	}
	// [개인 정보 - 내 정보 관리] 정보수정 일 경우 모달 --------------------
	else{
		let value = $(el).text();
		let data = value.substring(0, value.length - 2).trim()
		
		switch(modalType){
			// 수정을 위한 비밀번호 재확인
			case "pwChk" : {
				infoModal.find(".modal-title").html("비밀번호 재확인")
				infoModal.find(".modal-body").html(`
					<p> 현재 비밀번호를 입력해주세요 </p>
					<input type="text" name="profile_${modalType}" value="${data}">`
				);
			} break;
			
			// 정보 수정
			case "pw" : {
				infoModal.find(".modal-title").html("비밀번호 변경")
				infoModal.find(".modal-body").html(`
					<p> 변경할 비밀번호를 입력해주세요 </p>
					<input type="text" name="profile_${modalType}">`
				);
			} break;
			
			case "email" : {
				infoModal.find(".modal-title").html("이메일 변경")
				infoModal.find(".modal-body").html(`
					<p> 변경할 이메일을 입력해주세요 </p>
					<input type="text" name="profile_${modalType}" value="${data}">`
				);
			} break;
			
			case "phone" : {
				infoModal.find(".modal-title").html("핸드폰 번호 변경")
				infoModal.find(".modal-body").html(`
					<p> 변경할 번호를 입력해주세요 </p>
					<input type="text" name="profile_${modalType}" value="${data}">`
				);
			} break;
			
			case "sns" : {
				infoModal.find(".modal-title").html("SNS 주소 변경")
				infoModal.find(".modal-body").html(`
					<p> 변경할 SNS 주소를 입력해주세요 </p>
					<input type="text" name="profile_${modalType}" value="${data}">`
				);
			} break;
			
			case "birthday" : {
				infoModal.find(".modal-title").html("생일 변경")
				infoModal.find(".modal-body").html(`
					<p> 변경할 생일을 입력해주세요 </p>
					<input type="text" name="profile_${modalType}" value="${data}">`
				);
			} break;
			
			case "address" : {
				infoModal.find(".modal-title").html("주소 변경")
				infoModal.find(".modal-body").html(`
					<p> 변경할 주소를 입력해주세요 </p>
					<input type="text" name="profile_${modalType}" value="${data}">`
				);
			} break;
		}
		infoModal.modal('show');
	}
}

// [ 모달의 확인 클릭 ] 
function modalConfirm(){
	// 부트스트랩의 모달 선택 방법
	let modalEl = $('#commonModal');
	var infoModal = bootstrap.Modal.getInstance(modalEl);
	
	let typeReg = /(Agree)$/
	let modalType = $("[name='modalType']").val()
	
	// [ 모달의 확인 클릭 ]  - 초기 비빌번호 체크
	if (modalType == "passwordCheck"){
		let value = $(`input[name='profile_${modalType}']`).val().trim();

		passwordCheckFn(value)
	}

	// [ 모달의 확인 클릭 ]  -정보 동의일 경우 ------------------------------
	else if (typeReg.test(modalType)){
		let checkboxLabel = $(`[for="${modalType}"]`)
		
		let policyData = {
				"type" : "",
				"data" : "Y"
		}
			
		switch(modalType){
			case "emailAgree":{
				policyData.type = "AGREE_EMAIL"
			};break;
			case "phoneAgree":{
				policyData.type = "AGREE_PHONE"
			};break;
			case "addressAgree":{
				policyData.type = "AGREE_ADDRESS"
			}
		} 
		
		updateUserPolicy(policyData)
		checkboxLabel.html("ON")				
		infoModal.hide();
	}
	// [ 모달의 확인 클릭 ]  - 회원 탈퇴의 경우 ------------------------------
	else if(modalType == "resign"){
		let request_url = `${contextPath}/api/sign/resign`
		$.ajax({
			type: "POST",
			url: request_url,
			dataType: "json",
			async: false,
			success: function (res) {
				let isResigned = res.hasOwnProperty("data");

				if(isResigned){
					let cnt = 3;
					toastPop("info", res.message + "..."+cnt);
					cnt --;

					let messageInterval = setInterval(() => {
						toastPop("info", res.message + "..."+cnt);
						cnt --;
					}, 1000);

					setTimeout(()=>{
						clearInterval(messageInterval)
						location.href = `${contextPath}/dashboard`
					}, 3500)

					
				}
				else{
					toastPop("warn", "회원 탈퇴에 실패하였습니다.");
				}

			}
		});

		infoModal.hide();
	}
	// [ 모달의 확인 클릭 ]  - 정보 수정일 경우 ------------------------------
	else{
		let value = $(`input[name='profile_${modalType}']`).val().trim();
		
		switch(modalType){
			// 비밀번호 정보 수정
			case "pw" : {
				if (pwValidate(value)){
					let data = {
						"type" : "USER_PW",
						"inputPw" : value
					}
					updateUserPw(data, modalType)
					infoModal.hide();
				}
			};break;
			
			// 이메일 정보 수정
			case "email" : {
				if (emailValidate(value)){
					let data = {
						"type" : "USER_EMAIL",
						"data" : value
					}
					updateUserInfo(data, modalType)
					infoModal.hide();
				}
			};break;
			// 전화번호 정보 수정
			case "phone" : {
				if (phoneValidate(value)){
					let data = {
						"type" : "USER_PHONE",
						"data" : value
					}
					updateUserInfo(data, modalType)
					infoModal.hide();
				}
			};break;
			// sns 정보 수정
			case "sns" : {
				if (emailValidate(value)){
					let data = {
						"type" : "USER_SNS",
						"data" : value
					}
					updateUserInfo(data, modalType)
					infoModal.hide();
				}
			};break;
			// 생일 정보 수정
			case "birthday" : {
				if (birthdayValidate(value)){
					let data = {
						"type" : "USER_BD",
						"data" : value
					}
					updateUserInfo(data, modalType)
					infoModal.hide();
				}
			};break;
			// 주소 정보 수정
			case "address" : {
				if (addressValidate(value)){
					let data = {
						"type" : "USER_ADDRESS",
						"data" : value
					}
					updateUserInfo(data, modalType)
					infoModal.hide();
				}
			};break;
		}
	}
}

// [ 모달의 취소 클릭 ]
function modalCancel(){
	let typeReg = /(Agree)$/
	let modalType = $("[name='modalType']").val();
	let checkboxInput = $(`input[name='${modalType}']`)
	let checkboxLabel = $(`label[for='${modalType}']`)
	
	// [ 모달의 취소 클릭 ] - 정보 동의일 경우
	if (typeReg.test(modalType)){
		if(checkboxInput.prop("checked")){
			checkboxInput.prop("checked", false)
			checkboxLabel.html("OFF")
		}
	}
}

// 초기 패스워드 체크 함수
function passwordCheckFn(password){
	let request_url = `${contextPath}/api/user/passwordCheck`
	$.ajax({
		type: "POST",
		url: request_url,
		data: {
			"inputPw" : password
		},
		dataType: "json",
		success: function (res) {
			let isChecked = res.hasOwnProperty("data")
			// 인증성공 -> 서버에서 session Scope 에 "passwordCheck" 값에 true 를 넣어준다.
			// profile을 재요청하여 해당 스코프가 들어가있는 jsp 를 재반환하여 적용
			if (isChecked){
				toastPop("info", res.message)
				setTimeout(()=>{
					location.href = `${contextPath}/profile/myInfo`
				}, 500)
			}
			// 인증실패 -> 패스워드 인증 실패 toast 를 띄운다.
			else{
				toastPop("warn", res.message)
			}
		},
		error : function(request, status, error){
			toastPop("warn", "변경에 실패하였습니다")
			console.log(request);
			console.log(status);
			console.log(error);
		}
	});
}

//  유저 정보 업데이트 함수
function updateUserInfo(userData, modalType){
	let request_url = `${contextPath}/api/user/update`
	$.ajax({
		type: "POST",
		url: request_url,
		data: userData,	// {type, data}
		dataType: "json",
		success: function (res) {
			let isUpdated = res.hasOwnProperty("data")
			
			if (isUpdated){
				$(`p[data-type="${modalType}"]`).html(userData.data);
				toastPop("info", "정상적으로 변경되었습니다.")
			} else{
				toastPop("warn", "변경에 실패하였습니다")
			}
			
		},
		error : function(request, status, error){
			toastPop("warn", "변경에 실패하였습니다")
			console.log(request);
			console.log(status);
			console.log(error);
		}
	});
}

//  유저 패스워드 업데이트 함수
function updateUserPw(userData, modalType){
	let request_url = `${contextPath}/api/user/updatePw`
	$.ajax({
		type: "POST",
		url: request_url,
		data: userData,	// {type, inputPw}
		dataType: "json",
		success: function (res) {
			let isUpdated = res.hasOwnProperty("data")
			
			if (isUpdated){
				$(`p[data-type="${modalType}"]`).html(userData.data);
				toastPop("info", "정상적으로 변경되었습니다.")
			} else{
				toastPop("warn", "변경에 실패하였습니다")
			}
			
		},
		error : function(request, status, error){
			toastPop("warn", "변경에 실패하였습니다")
			console.log(request);
			console.log(status);
			console.log(error);
		}
	});
}

// 유저 동의정보 업데이트 함수
function updateUserPolicy(policyData){
	let request_url = `${contextPath}/api/user/update`
	$.ajax({
		type: "POST",
		url: request_url,
		data: policyData,	// {type, data}
		dataType: "json",
		success: function (res) {
			let isUpdated = res.hasOwnProperty("data")

			if (isUpdated){
				toastPop("info", "정상적으로 변경되었습니다.")
			} else{
				toastPop("warn", "변경에 실패하였습니다")
			}
			
		},
		error : function(request, status, error){
			toastPop("warn", "변경에 실패하였습니다")
			console.log(request);
			console.log(status);
			console.log(error);
		}
	});
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


// 댓글 수정(ReplyUpdate) 모달 생성
function showReplyUpdateModal(el){
	if (loginUser == ""){
		toastPop("warn", "로그인 후 이용해주세요");
		return;
	}
	
	let reportModalEl = $('#updateReplyModal');
	
	let item = "댓글";
	reportModalEl.find(".modal-title").html(`<p class="fs-14 fc__white">${item} 수정</p>`)

	reportModalEl.modal('show');
	
	reportModalEl.find(".acceptBtn").one("click", function(){
		updateReply(el)
	})
}

// 댓글 수정 함수
function updateReply(el){
	
	let updateReplyEl = $('#updateReplyModal');
	let updateReplyModal = bootstrap.Modal.getInstance(updateReplyEl);
	let replyContent = updateReplyEl.find("textarea[name='update-reply-content']").val();
	let replyNo = parseInt($(el).data("replyno"));
	
	if (loginUser == ""){
		toastPop("warn", "로그인 후 이용해주세요");
		return;
	}
	
	// 요청
	const request_url = `${contextPath}/api/reply/updateReply`;
	
	if (replyContent.trim() != ""){
		$.ajax({
			type: "POST",
			url: request_url,
			data : {
				replyNo,
				replyContent
			},
			dataType: "json",
			success: function (res) {
				let isInsertReply = res.hasOwnProperty("data");
				
				if(isInsertReply){
					// 댓글 데이터 찾아서 변경, 페이지네이션 재실행
					getMycomments();
					// 모달 종료
					updateReplyModal.hide();
				}
				
				else{
					toastPop("warn", res.message)
				}
			}
		});
	} else{
		toastPop("warn", "댓글을 입력해주세요")
	}
}

// 댓글 삭제 함수
function deleteMyReplyMany(){
	let checkboxes = $(".replyCheck:checked")
	
	const deleteRepyTarget = [];
	
	for (let checkbox of checkboxes){
		deleteRepyTarget.push(checkbox.value)
	}
	
	let request_url = `${contextPath}/api/profile/deleteMyReplyMany`
	$.ajax({
		type: "POST",
		url: request_url,
		dataType: "json",
		data:{
			replyNos : deleteRepyTarget.join(',')
		},
		async: false,
		success: function (res) {
			let isGetData = res.hasOwnProperty("data");
			
			if(isGetData){
				getMycomments()
				toastPop("info", "성공적으로 삭제하였습니다.");
			}
			else{
				toastPop("warn", "댓글 가져오는데 실패하였습니다.");
			}

		}
	});
}

// 게시글 삭제 함수
function deleteMyCommMany(){
	let checkboxes = $(".commCheck:checked")
	
	const deleteTarget = [];
	
	for (let checkbox of checkboxes){
		deleteTarget.push(checkbox.value)
	}
	
	let request_url = `${contextPath}/api/profile/deleteMyCommMany`
	$.ajax({
		type: "POST",
		url: request_url,
		dataType: "json",
		data:{
			commNos : deleteTarget.join(',')
		},
		async: false,
		success: function (res) {
			let isGetData = res.hasOwnProperty("data");
			
			if(isGetData){
				getMyCommunity()
				toastPop("info", "성공적으로 삭제하였습니다.");
			}
			else{
				toastPop("warn", "게시글을 가져오는데 실패하였습니다.");
			}

		}
	});
}

// 뉴스 좋아요 제거 함수
function disLikeMyNewsMany(){
	let checkboxes = $(".newsCheck:checked")
	
	const deleteTarget = [];
	
	for (let checkbox of checkboxes){
		deleteTarget.push(checkbox.value)
	}
	
	let request_url = `${contextPath}/api/profile/disLikeMyNewsMany`
	$.ajax({
		type: "POST",
		url: request_url,
		dataType: "json",
		data:{
			newsNos : deleteTarget.join(',')
		},
		async: false,
		success: function (res) {
			let isGetData = res.hasOwnProperty("data");
			
			if(isGetData){
				getMyNewsLiked()
				toastPop("info", "성공적으로 삭제하였습니다.");
			}
			else{
				toastPop("warn", "게시글을 가져오는데 실패하였습니다.");
			}

		}
	});
}