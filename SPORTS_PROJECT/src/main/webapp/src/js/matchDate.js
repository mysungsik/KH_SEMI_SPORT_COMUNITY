//const days =['일','월', '화', '수', '목', '금', '토'];
let currentDate = new Date();
function updateDate() {
    const year = currentDate.getFullYear();
    const month = String(currentDate.getMonth() + 1).padStart(2, '0');
    const date = String(currentDate.getDate()).padStart(2, '0'); // getDate()로 변경
    const days = ['일', '월', '화', '수', '목', '금', '토']; // 요일 배열 추가
    const day = days[currentDate.getDay()]; // getDay()로 요일 인덱스 가져오기

    document.getElementById('currentDate').textContent = `${year}.${month}.${date}(${day})`;
    showSchedule(day);
}
//function updateDate() {
//	const year = currentDate.getFullYear();
//	const month = String(currentDate.getMonth() +1).padStart(2, '0');
//	const date = String(currentDate.getMonth()).padStart(2, '0');
//	const day = days[currentDate.getDay()];
//	document.getElementById('currentDate').textContent =`${year}.${month}.${date}(${day})`;
//	            showSchedule(day);
//}

function changeDate(offSet){
	currentDate.setDate(currentDate.getDate()+ offSet);
	updateDate();
}

function showSchedule(day) {

	document.querySelectorAll('.schedule').forEach(function(element) {
		element.classList.add('hidden');
	});

	document.getElementById(day).classList.remove('hidden');
	}
	
	document.addEventListener('DOMContentLoaded', function(){
		updateDate();
	});
	
	
	
