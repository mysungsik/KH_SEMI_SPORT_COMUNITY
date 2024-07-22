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


function populateConfirmation() {
    document.getElementById('confirmTeamName').innerText = document.querySelector('input[name="teamName"]').value;
    document.getElementById('confirmTeamLeader').innerText = document.querySelector('input[name="teamLeader"]').value;
    document.getElementById('confirmDirector').innerText = document.querySelector('input[name="director"]').value;
    document.getElementById('confirmPCompany').innerText = document.querySelector('input[name="pCompany"]').value;
    document.getElementById('confirmTeamRegion').innerText = document.querySelector('input[name="teamRegion"]').value;
    document.getElementById('confirmTeamDes').innerText = document.querySelector('textarea[name="teamDes"]').value;
    document.getElementById('confirmLogoDesc').innerText = document.querySelector('textarea[name="logo-desc"]').value;
    document.getElementById('confirmEmblemDesc').innerText = document.querySelector('textarea[name="emblem-desc"]').value;
    document.getElementById('confirmMainPageImageDesc').innerText = document.querySelector('textarea[name="main-page-image-desc"]').value;
    document.getElementById('confirmHeaderImageDesc').innerText = document.querySelector('textarea[name="header-image-desc"]').value;
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


