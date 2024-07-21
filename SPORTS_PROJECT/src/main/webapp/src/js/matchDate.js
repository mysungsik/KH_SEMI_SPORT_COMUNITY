//const days =['일','월', '화', '수', '목', '금', '토'];
let currentDate = new Date();
function updateDate() {
	const year = currentDate.getFullYear();
	const month = String(currentDate.getMonth() + 1).padStart(2, '0');
	const date = String(currentDate.getDate()).padStart(2, '0'); // getDate()로 변경
	const days = ['일', '월', '화', '수', '목', '금', '토']; // 요일 배열 추가
	const day = days[currentDate.getDay()]; // getDay()로 요일 인덱스 가져오기
	const dayShort = ['Sun', 'Mon', 'Tues', 'Wedn', 'Thur', 'Fri', 'Sat'][currentDate.getDay()]; // 요일 약어

	// 현재 날짜 표시
	document.getElementById('currentDate').textContent = `${year}.${month}.${date}(${day})`;
	// 해당 요일 스케줄 표시
	showSchedule(dayShort);
}
//function updateDate() {
//	const year = currentDate.getFullYear();
//	const month = String(currentDate.getMonth() +1).padStart(2, '0');
//	const date = String(currentDate.getMonth()).padStart(2, '0');
//	const day = days[currentDate.getDay()];
//	document.getElementById('currentDate').textContent =`${year}.${month}.${date}(${day})`;
//	            showSchedule(day);
//}

function changeDate(offSet) {
	currentDate.setDate(currentDate.getDate() + offSet);
	updateDate();
}

function showSchedule(day) {

	document.querySelectorAll('.schedule').forEach(function(element) {
		element.classList.add('hidden');
	});
	const scheduleElement = document.getElementById(day);
	if (scheduleElement) {
		scheduleElement.classList.remove('hidden');
	} else {
		// 해당 요일에 일정이 없으면 기본 메시지 표시 (선택사항)
		console.log("해당 날짜에 일정이 없습니다.");
	}
}

document.addEventListener('DOMContentLoaded', function() {
    updateDate();
});




