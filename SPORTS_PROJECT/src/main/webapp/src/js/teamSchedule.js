var Calendar = FullCalendar.Calendar;	// FULL CALENDAR

var calendar;	// CALENDAR 쓸 변수

var calendarEl = document.getElementById('calendar');	// CALENDAR 렌더링할 위치

// Data 값 =>  DB에서 받아올 값
let data =[
  {
    id : 'victory',
    start : '2024-07-14',
    img : "../../public/images/teams/FL.png"
  },
  {
    id : 'lose',
    start : '2024-07-16',
    img : "../../public/images/user_img1.jpg"
  },
  {
    id:'draw',
    start : '2024-07-21',
    img : "../../public/images/mlb_logo.png"
  }
]

// 이 data를 매개변수로 createCalendar함수를 실행시킴
createCalendar(data);
    
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
    editable: true,
    droppable: true, // this allows things to be dropped onto the calendar
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
    eventContent: function(eventInfo){
	  console.log(eventInfo.event); // 모를 경우 console에 찍어보기
      if( eventInfo.event.id==="victory"){
        return {
          // id를 제외한 모든 event관련 정보는 extendedProps에 있다.
          html: `<div class="mini-date">
                    <img src="${eventInfo.event.extendedProps.img}" class="mini-icon"/>
                    <div class="mini-schedule">광주 18:30</div>
                    <div class="mini-rank event-victory">
                        <i class="fa-solid fa-trophy"></i>
                        <span>4 vs 2</span>
                    </div>
                  </div>`
        }
      }else if(eventInfo.event.id==="lose"){
        return{
          html: `<div class="mini-date">
                  <img src="${eventInfo.event.extendedProps.img}" class="mini-icon"/>
                  <div class="mini-schedule">광주 18:30</div>
                  <div class="mini-rank event-lose">
                    <i class="fa-solid fa-circle-exclamation"></i>
                    <span>2 vs 5</span>
                  </div>
                </div>`
        }
      }else{
        return{
          html: `<div class="mini-date">
                  <img src="${eventInfo.event.extendedProps.img}" class="mini-icon"/>
                  <div class="mini-schedule">광주 18:30</div>
                  <div class="mini-rank event-draw">
                    <span>2 vs 2</span>
                  </div>
                </div>`
        }
      }
    }
  });
}

