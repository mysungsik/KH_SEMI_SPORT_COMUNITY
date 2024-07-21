function nextStep() {
    const currentStep = document.querySelector('.step.active');
    if (currentStep.nextElementSibling) {
        currentStep.classList.remove('active');
        currentStep.nextElementSibling.classList.add('active');
    }
}

function prevStep() {
    const currentStep = document.querySelector('.step.active');
    if (currentStep.previousElementSibling) {
        currentStep.classList.remove('active');
        currentStep.previousElementSibling.classList.add('active');
    }
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


function handleFormSubmit(event) {
    event.preventDefault(); // 기본 폼 제출 동작 방지

    const form = event.target;

    // 폼 데이터를 서버로 전송
    const formData = new FormData(form);
    fetch(form.action, {
        method: 'POST',
        body: formData
    })
    .then(response => {
        if (response.ok) {
            // 성공적으로 제출된 후 teams 페이지로 이동
            window.location.href = `${form.action}/teams`;
        } else {
            // 에러 처리
            alert('폼 제출에 실패했습니다. 다시 시도해주세요.');
        }
    })
    .catch(error => {
        // 네트워크 에러 처리
        console.error('Error:', error);
        alert('네트워크 에러가 발생했습니다. 다시 시도해주세요.');
    });
}
