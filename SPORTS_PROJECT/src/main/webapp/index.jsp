<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <!-- jQuery -->
     <script src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.14/index.global.min.js'></script>
   <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <!-- pagination.js CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.5/pagination.css">
    <link rel="stylesheet" href="./index.css">
    <!-- pagination.js JavaScript -->
    <script src="${contextPath }/src/common/pagination.js" defer></script>
    <script src="${contextPath }/index.js" defer></script>

</head>
<body>
	<div id='external-events'>
  <p>
    <strong>Draggable Events</strong>
  </p>

  <div class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event'>
    <div class='fc-event-main'>My Event 1</div>
  </div>
  <div class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event'>
    <div class='fc-event-main'>My Event 2</div>
  </div>
  <div class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event'>
    <div class='fc-event-main'>My Event 3</div>
  </div>
  <div class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event'>
    <div class='fc-event-main'>My Event 4</div>
  </div>
  <div class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event'>
    <div class='fc-event-main'>My Event 5</div>
  </div>

  <p>
    <input type='checkbox' id='drop-remove' />
    <label for='drop-remove'>remove after drop</label>
  </p>
</div>

<div id='calendar-container'>
  <div id='calendar'></div>
</div>

</body>
</html>