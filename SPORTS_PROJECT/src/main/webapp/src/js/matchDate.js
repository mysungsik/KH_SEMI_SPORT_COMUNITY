const days =['일','월', '화', '수', '목', '금', '토'];
let currentDate = new Date(2024, 7, 6 );

function updateDate() {
	const year = currentDate.getFullYear();
	const month = String(currentDate.getMonth() +1).padStart(2, '0');
	const date = String(currentDate.getMonth()).padStart(2, '0');
	const day = days[currentDate.getDay()];
	document.getElementById('currentDate').textContent =`${year}.${month}.${date}(${day})`;
	            showSchedule(day);
}

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
	
	
	
