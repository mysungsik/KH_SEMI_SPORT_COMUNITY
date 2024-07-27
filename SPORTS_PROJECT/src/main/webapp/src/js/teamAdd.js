// 다음 버튼
function nextStep() {
    const currentStep = document.querySelector('.step.active');
    if (currentStep.nextElementSibling) {
        currentStep.classList.remove('active');
        currentStep.querySelector('.step').classList.remove('active');
        currentStep.nextElementSibling.classList.add('active');
        currentStep.nextElementSibling.querySelector('.step').classList.add('active');
    }
}

// 이전 버튼
function prevStep() {
    const currentStep = document.querySelector('.step.active');
    if (currentStep.previousElementSibling) {
        currentStep.classList.remove('active');
        currentStep.querySelector('.step').classList.remove('active');
        currentStep.previousElementSibling.classList.add('active');
        currentStep.previousElementSibling.querySelector('.step').classList.add('active');
    }
}

/* a 태그 */
// firstStep()
function firstStep(){
    const currentStep = document.querySelector('.step.active');
    const first = document.getElementById("step1");

    currentStep.classList.remove('active');
    currentStep.querySelector('.step').classList.remove('active');

    first.classList.add('active');
    first.querySelector('.step').classList.add('active');

}

// secondStep()
function secondStep(){
    const currentStep = document.querySelector('.step.active');
    const second = document.getElementById("step2");

    currentStep.classList.remove('active');
    currentStep.querySelector('.step').classList.remove('active');

    second.classList.add('active');
    second.querySelector('.step').classList.add('active');

}


// 이미지 미리보기 표시
document.querySelectorAll('.inputImage').forEach(input => {
    input.addEventListener('change', function() {
        const file = this.files[0];
        if (file) {
            const reader = new FileReader();
            reader.onload = function(e) {
                input.previousElementSibling.querySelector('.preview').setAttribute('src', e.target.result);
            };
            reader.readAsDataURL(file);
        }
    });
});

// 이미지 등록, 삭제 버튼
// .closest => 가까운 상위조상요소 반환
document.querySelectorAll('.image-btn button').forEach(button => {
    button.addEventListener('click', function() {
        const action = this.innerText;
        if (action === '사진등록') {
            this.closest('.image-area').querySelector('.inputImage').click();
        } else if (action === '삭제') {
            const imgPreview = this.closest('.image-area').querySelector('.preview');
            imgPreview.setAttribute('src', '');
            this.closest('.image-area').querySelector('.inputImage').value = '';
        }
    });
});


// 첫번째 다음으로 버튼 이벤트 추가
document.getElementById("goNextBtn1").addEventListener("click", function(){
	const teamName = document.getElementsByName("teamName")[0];
	const teamLeader = document.getElementsByName("teamLeader")[0];
	const director = document.getElementsByName("director")[0];
	const sponsor = document.getElementsByName("sponsor")[0];
	const teamRegion = document.getElementsByName("teamRegion")[0];
	
	if(teamName.value.trim().length == 0){
		toastPop("warn","구단명을 입력해주세요.");
		teamName.focus();
		teamName.value="";
		return false;
	}
	
	if(teamLeader.value.trim().length == 0){
		toastPop("warn","단장을 입력해주세요.");
		teamLeader.focus();
		teamLeader.value="";
		return false;
	}
	
	if(director.value.trim().length == 0){
		toastPop("warn","감독을 입력해주세요.");
		director.focus();
		director.value="";
		return false;
	}
	
	if(sponsor.value.trim().length == 0){
		toastPop("warn","모기업을 입력해주세요.");
		sponsor.focus();
		sponsor.value="";
		return false;
	}
	
	if(teamRegion.value.trim().length == 0){
		toastPop("warn","광역 연고권|연고지를 입력해주세요.");
		teamRegion.focus();
		teamRegion.value="";
		return false;
	}
	
	nextStep();
	
})

// 두번째 다음으로 버튼 이벤트 추가
document.getElementById("goNextBtn2").addEventListener("click", function(){
})