var Calendar = FullCalendar.Calendar;	// FULL CALENDAR

var calendar;	// CALENDAR 쓸 변수

var calendarEl = document.getElementById('calendar');	// CALENDAR 렌더링할 위치

// Data 값 =>  DB에서 받아올 값
let schedule_data =[
  {
    id : 'victory',
    start : '2024-07-14',
    pitcher1:"양현종" , 
    date: "24.07.02 (화)", 
    region:"광주", time : "18:30", 
    team2_name: "lg", 
    team2_logo : "https://upload.wikimedia.org/wikipedia/commons/4/41/LG_Twins_2017.png", 
    pitcher2:"김승연" ,
    team1_score : 15 , 
    team2_score:13
  },
  {
	id : 'lose',
    start : '2024-07-15',
    pitcher1:"양현종" , 
    date: "24.07.02 (화)", 
    region:"광주", time : "18:30", 
    team2_name: "lg", 
    team2_logo : "https://upload.wikimedia.org/wikipedia/commons/4/41/LG_Twins_2017.png", 
    pitcher2:"김승연" ,
    team1_score : 1 , 
    team2_score:5
    
  },
  {
    id : 'draw',
    start : '2024-07-16',
    pitcher1:"양현종" , 
    date: "24.07.02 (화)", 
    region:"광주", time : "18:30", 
    team2_name: "lg", 
    team2_logo : "https://upload.wikimedia.org/wikipedia/commons/4/41/LG_Twins_2017.png", 
    pitcher2:"김승연" ,
    team1_score : 4 , 
    team2_score:4
  }
]

// 이 data를 매개변수로 createCalendar함수를 실행시킴
createCalendar(schedule_data);
    
// 4. 생성한 캘린더를 랜더링함
calendar.render();

// createCalendar함수
function createCalendar(data){
	
	calendar = new Calendar(calendarEl, {
    headerToolbar: {
      left: '',
      center: 'prev title next',
      right: ''
    },
    editable: false,
    droppable: false, // this allows things to be dropped onto the calendar
    drop: function(info) {
      // is the "remove after drop" checkbox checked?
      if (checkbox.checked) {
        // if so, remove the element from the "Draggable Events" list
        info.draggedEl.parentNode.removeChild(info.draggedEl);
      }
    },
    // 한국어 변환
    locale:'ko',
    
    // 일 빼기
    dayCellContent : function(info){
      var number=document.createElement("a");
      number.classList.add("fc-daygrid-day-number");
      number.innerHTML =info.dayNumberText.replace("일","");
      return {
        html:number.outerHTML
      };
    },
    contentHeight:"auto", // 스크롤바 없애기

    // 데이터 - 매개변수로 받아온 data를 events에 넣어줌
    events: data,
    
    // id에 따라 (victory|lose|draw) event 구현 내용 바꾸기 
    eventContent: function(d){
	 	console.log(d.event); // 모를 경우 console에 찍어보기
      if( d.event.id==="victory"){
        return {
          // id를 제외한 모든 event관련 정보는 extendedProps에 있다.
          html: `<div class="mini-date">
                    <img src="${d.event.extendedProps.team2_logo}" class="mini-icon"/>
                    <div class="mini-schedule">${d.event.extendedProps.region} ${d.event.extendedProps.time}</div>
                    <div class="mini-rank event-victory">
                        <i class="fa-solid fa-trophy"></i>
                        <span>${d.event.extendedProps.team1_score} vs ${d.event.extendedProps.team2_score}</span>
                    </div>
                  </div>`
        }
      }else if(d.event.id==="lose"){
        return{
          html: `<div class="mini-date">
                  <img src="${d.event.extendedProps.team2_logo}" class="mini-icon"/>
                  <div class="mini-schedule">${d.event.extendedProps.region} ${d.event.extendedProps.time}</div>
                  <div class="mini-rank event-lose">
                    <i class="fa-solid fa-circle-exclamation"></i>
                    <span>${d.event.extendedProps.team1_score} vs ${d.event.extendedProps.team2_score}</span>
                  </div>
                </div>`
        }
      }else{
        return{
          html: `<div class="mini-date">
                  <img src="${d.event.extendedProps.team2_logo}" class="mini-icon"/>
                  <div class="mini-schedule">${d.event.extendedProps.region} ${d.event.extendedProps.time}</div>
                  <div class="mini-rank event-draw">
                    <span>${d.event.extendedProps.team1_score} vs ${d.event.extendedProps.team2_score}</span>
                  </div>
                </div>`
        }
      }
    }
  });
}


const today_schedule = [
	{team1_name: "kia", team1_logo:"https://upload.wikimedia.org/wikipedia/en/e/e0/Kia_Tigers_2017_New_Team_Logo.png", pitcher1:"양현종" , date: "24.07.02 (화)", region:"광주", time : "18:30", team2_name: "lg", team2_logo : "https://upload.wikimedia.org/wikipedia/commons/4/41/LG_Twins_2017.png", pitcher2:"김승연" , team1_score : 15 , team2_score:13},
	{team1_name: "kia", team1_logo:"https://upload.wikimedia.org/wikipedia/en/e/e0/Kia_Tigers_2017_New_Team_Logo.png", pitcher1:"양현종" , date: "24.07.03 (수)", region:"광주", time : "18:30", team2_name: "lg", team2_logo : "https://upload.wikimedia.org/wikipedia/commons/4/41/LG_Twins_2017.png", pitcher2:"김승연" , team1_score : 15 , team2_score:13},
	{team1_name: "kia", team1_logo:"https://upload.wikimedia.org/wikipedia/en/e/e0/Kia_Tigers_2017_New_Team_Logo.png", pitcher1:"양현종" , date: "24.07.04 (목)", region:"광주", time : "18:30", team2_name: "lg", team2_logo : "https://upload.wikimedia.org/wikipedia/commons/4/41/LG_Twins_2017.png", pitcher2:"김승연" , team1_score : 15 , team2_score:13}
]

$(document).ready(function() {
	showPageCover(today_schedule);
	showTodaySchedule(today_schedule);
});

function showPageCover(data){
	html = "";
	
	$.each(data, function(index, d){
		html =
		`
			<div class="fc__white fs-20 team-name mt-10">${d.team1_name}</div>
		`
	})
	
	const parent = $(".pagecover-bottom-inner").eq(0)
	parent.html(html)
}



function showTodaySchedule(data){
	html = "";
	
	$.each(data, function(index, d){
		if(index==1){
			
			html +=
			`
			<div class="team-match-today br-10">
				<div class="team-match-date base__blue br-t-10">
					<p class="fs-20 fc__white">${d.date}</p>
				</div>
				<div class="team-match-info br-b-10">
					<p class="fc__gray mt-10">${d.region} ${d.time}</p>
					<div class="score-area">
						<div class="left-team">
							<img src="${d.team1_logo}" class="left-logo"alt=""> 
							<p class="fs-14">${d.team1_name}</p>
							<p class="fs-12">선발 : ${d.pitcher1}</p>
						</div>
						<div class="middle-info">
							<span class="fs-28__b">${d.team1_score} vs ${d.team2_score}</span> 
							<a href="${contextPath}/match/matchResult"><button class="base__blue fc__white br-10">경기 결과</button></a>
						</div>
						<div class="right-team">
							<img src="${d.team2_logo}" class="right-logo" alt="">
							<p class="fs-14">${d.team2_name}</p>
							<p class="fs-12">선발 : ${d.pitcher2}</p>
						</div>
					</div>
				</div>
			</div>
			`
		}
		
		else{
			html +=
		`
		<div class="team-match br-10">
			<div class="team-match-date base__blue br-t-10">
				<p class="fs-20 fc__white">${d.date}</p>
			</div>
			<div class="team-match-info br-b-10">
				<p class="fc__gray mt-10">${d.region} ${d.time}</p>
				<div class="score-area">
					<div class="left-team">
						<img src="${d.team1_logo}" class="left-logo"alt=""> 
						<p class="fs-14">${d.team1_name}</p>
						<p class="fs-12">선발 : ${d.pitcher1}</p>
					</div>
					<div class="middle-info">
						<span class="fs-28__b">${d.team1_score} vs ${d.team2_score}</span> 
						<a href="${contextPath}/match/matchResult"><button class="base__blue fc__white br-10">경기 결과</button></a>
					</div>
					<div class="right-team">
						<img src="${d.team2_logo}" class="right-logo" alt="">
						<p class="fs-14">${d.team2_name}</p>
						<p class="fs-12">선발 : ${d.pitcher2}</p>
					</div>
				</div>
			</div>
		</div>
		`
		}
	})
	
	const parent = $(".team-match-area").eq(0)
	parent.html(html)
	
	
}

