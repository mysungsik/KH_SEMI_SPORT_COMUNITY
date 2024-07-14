document.addEventListener('DOMContentLoaded', function() {
  var Calendar = FullCalendar.Calendar;

  var calendarEl = document.getElementById('calendar');


  // initialize the calendar
  // -----------------------------------------------------------------
  var calendar = new Calendar(calendarEl, {
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
      return{
        domNodes:[]
      };
    },
    contentHeight:"auto", // 스크롤바 없애기

    events:[
      {
        id : 'victory',
        start : '2024-07-14'
      },
      {
        id : 'lose',
        start : '2024-07-16'
      },
      {
        id:'draw',
        start : '2024-07-21'
      }
    ],
    eventContent: function(eventInfo){
      if( eventInfo.event.id==="victory"){
        return {html: `<div class="mini-date">
                  <img src="../../public/images/teams/FL.png" class="mini-icon"/>
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
                  <img src="../../public/images/teams/FL.png" class="mini-icon"/>
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
                  <img src="../../public/images/teams/FL.png" class="mini-icon"/>
                  <div class="mini-schedule">광주 18:30</div>
                  <div class="mini-rank event-draw">
                    <span>2 vs 2</span>
                  </div>
                </div>`
        }
      }
    },
  });

 
  calendar.render();
  
});

