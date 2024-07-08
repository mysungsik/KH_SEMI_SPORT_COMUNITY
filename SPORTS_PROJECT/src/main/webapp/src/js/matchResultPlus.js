let winPitcherData = [
	{playerNo: 1, name : "김동준", inning : "6", pitchCount : "83", hitted : "7", hittedHomeRun : "1", strikeOut : "5", deadBall : "0", error : "3", earnedRun : "3", era: "3.02", whip: "1.20"  },
	{playerNo: 2, name : "김동준", inning : "6", pitchCount : "83", hitted : "7", hittedHomeRun : "1", strikeOut : "5", deadBall : "0", error : "3", earnedRun : "3", era: "3.02", whip: "1.20"  },
	{playerNo: 3, name : "김동준", inning : "6", pitchCount : "83", hitted : "7", hittedHomeRun : "1", strikeOut : "5", deadBall : "0", error : "3", earnedRun : "3", era: "3.02", whip: "1.20"  },
	{playerNo: 4, name : "김동준", inning : "6", pitchCount : "83", hitted : "7", hittedHomeRun : "1", strikeOut : "5", deadBall : "0", error : "3", earnedRun : "3", era: "3.02", whip: "1.20"  },
	{playerNo: 5, name : "김동준", inning : "6", pitchCount : "83", hitted : "7", hittedHomeRun : "1", strikeOut : "5", deadBall : "0", error : "3", earnedRun : "3", era: "3.02", whip: "1.20"  },
	{playerNo: 6, name : "김동준", inning : "6", pitchCount : "83", hitted : "7", hittedHomeRun : "1", strikeOut : "5", deadBall : "0", error : "3", earnedRun : "3", era: "3.02", whip: "1.20"  },
	{playerNo: 7, name : "김동준", inning : "6", pitchCount : "83", hitted : "7", hittedHomeRun : "1", strikeOut : "5", deadBall : "0", error : "3", earnedRun : "3", era: "3.02", whip: "1.20"  },
	{playerNo: 8, name : "김동준", inning : "6", pitchCount : "83", hitted : "7", hittedHomeRun : "1", strikeOut : "5", deadBall : "0", error : "3", earnedRun : "3", era: "3.02", whip: "1.20"  },
	{playerNo: 9, name : "김동준", inning : "6", pitchCount : "83", hitted : "7", hittedHomeRun : "1", strikeOut : "5", deadBall : "0", error : "3", earnedRun : "3", era: "3.02", whip: "1.20"  }
	
]

$(document).ready(function(){
	winPitcherTable(winPitcherData);
})

function addRow() {
	var table = document.getElementById("statsTableWin");
	var row = table.insertRow();
	for (var i = 0; i < 11; i++) {
		var cell = row.insertCell(i);
		cell.innerHTML = '';
	}
}

function removeRow() {
	var table = document.getElementById("statsTableWin");
	var rowCount = table.rows.length;
	if (rowCount > 2) { 
		table.deleteRow(rowCount - 1);
	} else {
		toastPop("warn", "더 이상 삭제할 수 없습니다.");
	}
}
function addRow2() {
	var table = document.getElementById("statsTableLose");
	var row = table.insertRow();
	for (var i = 0; i < 11; i++) {
		var cell = row.insertCell(i);
		cell.innerHTML = '';
	}
}

function removeRow2() {
	var table = document.getElementById("statsTableLose");
	var rowCount = table.rows.length;
	if (rowCount > 2) { 
		table.deleteRow(rowCount - 1);
	} else {
		toastPop("warn", "더 이상 삭제할 수 없습니다.");
	}
}
function addRow3() {
	var table = document.getElementById("statsTableWinHit");
	var row = table.insertRow();
	for (var i = 0; i < 11; i++) {
		var cell = row.insertCell(i);
		cell.innerHTML = '';
	}
}

function removeRow3() {
	var table = document.getElementById("statsTableWinHit");
	var rowCount = table.rows.length;
	if (rowCount > 2) { 
		table.deleteRow(rowCount - 1);
	} else {
		toastPop("warn", "더 이상 삭제할 수 없습니다.");
	}
}
function addRow4() {
	var table = document.getElementById("statsTableLoseHit");
	var row = table.insertRow();
	for (var i = 0; i < 11; i++) {
		var cell = row.insertCell(i);
		cell.innerHTML = '';
	}
}

function removeRow4() {
	var table = document.getElementById("statsTableLoseHit");
	var rowCount = table.rows.length;
	if (rowCount > 2) { 
		table.deleteRow(rowCount - 1);
	} else {
		toastPop("warn", "더 이상 삭제할 수 없습니다.");
	}
}



function winPitcherTable(data){
	let html = ""
	
	for(let d of winPitcherData){
		html += `
		<tr>
			<td>${d.name}</td>
			<td>${d.inning}</td>
			<td>${d.pitchCount}</td>
			<td>${d.hitted}</td>
			<td>${d.hittedHomeRun}</td>
			<td>${d.strikeOut}</td>
			<td>${d.deadBall}</td>
			<td>${d.error}</td>
			<td>${d.earnedRun}</td>
			<td>${d.era}</td>
			<td>${d.whip}</td>
		</tr>`
		
		$('#statsTableWin tbody').html(html);
	}
	
	
	
}