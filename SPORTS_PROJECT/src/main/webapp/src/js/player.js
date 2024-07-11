/* 좋아요 버튼 구현 */
const heart = document.getElementById("heart");

heart.addEventListener("click", function(){
    heart.classList.toggle("active");
})



/* 댓글 */
let communityData = [
	{ author: "[ 작성자 ]", comments: "야구 룰이 너무 어려움", date: "2024-07-06 22:49:31", like: 3 },
	{ author: "[ 작성자 ]", comments: "야구 룰이 너무 어려움", date: "2024-07-06 22:49:31", like: 3 },

]

// 일반 유저 페이지네이션 템플릿 함수
function paginationTemplate(data) {
	let item = "";
	
	$.each(data, function(index, d) {
		item +=
			`<div class="reply">
				<div class="comment">
					<span class="fs-12">${d.comments}</span>
					<div class="author">
						<span class="fs-10 fc__gray">${d.author}</span>
						<div><span class="fs-10">${d.date}</span></div>
					</div>
				</div>
				
				<div class="reply-info">
					<span>좋아요 ${d.like} ♥</span>
					<span> | </span>
					<span>수정</span>
					<span> | </span>
					<span data-type="reply-delete" onclick="showModal(this)">삭제</span>
					<span> | </span>
					<span data-type="reply-report" onclick="showModal(this)">신고</span>
				</div>
			</div>`
	})

	return item;
}


$(document).ready(function() {

	
	// 페이지네이션 실행
	paginationActive("player", communityData, paginationTemplate);
});


// 페이지네이션 실행 함수
function paginationActive(id, datas, template) {

	$(`#${id}-pagination`).pagination({
		dataSource: datas,

		callback: function(data) {
			var html = template(data);

			$(`#${id}-data`).html(html);	// 데이터 페이지네이션
		}
	})
}

// 컨디션 표
const ctx = document.getElementById('myChart').getContext('2d');

function addData(chart, label, newData) {
    chart.data.labels.push(label);
    chart.data.datasets.forEach((dataset) => {
        dataset.data.push(newData);
    });
    chart.update();
}

function removeData(chart) {
    chart.data.labels.pop();
    chart.data.datasets.forEach((dataset) => {
        dataset.data.pop();
    });
    chart.update();
}


new Chart(ctx, {
  type: 'line',
  data: {
    datasets: [
	{
	  label: '방어율',
	  data: [
	    { x: '03월', y: 1.69 }, 
	    { x: '04월', y: 3.86 }, 
	    { x: '05월', y: 3.2 }, 
	    { x: '06월', y: 5.94 }, 
	    { x: '07월', y: 5.4 }
	  ],
	  borderWidth: 2,
	  borderColor: 'rgb(75, 192, 192)',
	  tension: 0.5,
    },
    {
	  label: '승리',
      data: [
        { x: '03월', y: 0 }, 
        { x: '04월', y: 2 }, 
        { x: '05월', y: 2 }, 
        { x: '06월', y: 2 }, 
        { x: '07월', y: 0 }
      ],
      borderWidth: 2,
      borderColor: 'rgb(75, 192, 192)',
      tension: 0.5,
	},
	
	 {
	  label: '패배',
      data: [
        { x: '03월', y: 0 }, 
        { x: '04월', y: 0 }, 
        { x: '05월', y: 0 }, 
        { x: '06월', y: 0 }, 
        { x: '07월', y: 0 }
      ],
      borderWidth: 2,
      borderColor: 'rgb(75, 192, 192)',
      tension: 0.5,
      scales:{y:{beginAtZero: false}}
	},
	
	{
	  label: '세이브',
      data: [],
      borderWidth: 2,
      borderColor: 'rgb(75, 192, 192)',
      tension: 0.5,
	},
	
	{
	  label: '승률',
      data: [
        { x: '04월', y: 0.667 }, 
        { x: '05월', y: 0.5 }, 
        { x: '06월', y: 1 }
      ],
      borderWidth: 2,
      borderColor: 'rgb(75, 192, 192)',
      tension: 0.5,
	},
	
	{
	  label: '탈삼진',
      data: [
        { x: '03월', y: 4 }, 
        { x: '04월', y: 23 }, 
        { x: '05월', y: 24 }, 
        { x: '06월', y: 13 }, 
        { x: '07월', y: 5 }
      ],
      borderWidth: 2,
      borderColor: 'rgb(75, 192, 192)',
      tension: 0.5,
	}
	
    ]
  },
  options: {
	plugins:{
                legend: {
                    display: false
                }
            },
    scales: {
      y: {
        beginAtZero: true
      }
    }
  }
});

document.getElementById("era-button").addEventListener("click", function(){
	Chart(ctx, {
  		type: 'line',
  		data: {
		    datasets: [{
				label: '방어율',
				data: [
				    { x: '03월', y: 1.69 }, 
				    { x: '04월', y: 3.86 }, 
				    { x: '05월', y: 3.2 }, 
				    { x: '06월', y: 5.94 }, 
				    { x: '07월', y: 5.4 }
				],
			  	borderWidth: 2,
				borderColor: 'rgb(75, 192, 192)',
				tension: 0.5,
			}]
    	},
  		options: {
			plugins:{
                legend: {
                    display: false
                }
           	},
           	
    		scales: {
      			y: {
        		beginAtZero: true
  				}
    		}
		}	
	})
})


