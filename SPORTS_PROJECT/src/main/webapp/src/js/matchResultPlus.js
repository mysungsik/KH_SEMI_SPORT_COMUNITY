let winPitcherData = [
	{ playerNo: 1, name: "김동준", inning: "6", pitchCount: "83", hitted: "7", hittedHomeRun: "1", strikeOut: "5", deadBall: "0", error: "3", earnedRun: "3", era: "3.02", whip: "1.20" },
	{ playerNo: 2, name: "동동동", inning: "6", pitchCount: "83", hitted: "7", hittedHomeRun: "1", strikeOut: "5", deadBall: "0", error: "3", earnedRun: "3", era: "3.02", whip: "1.20" },
	{ playerNo: 3, name: "김동준", inning: "6", pitchCount: "83", hitted: "7", hittedHomeRun: "1", strikeOut: "5", deadBall: "0", error: "3", earnedRun: "3", era: "3.02", whip: "1.20" },
	{ playerNo: 4, name: "김동준", inning: "6", pitchCount: "83", hitted: "7", hittedHomeRun: "1", strikeOut: "5", deadBall: "0", error: "3", earnedRun: "3", era: "3.02", whip: "1.20" },
	{ playerNo: 5, name: "김동준", inning: "6", pitchCount: "83", hitted: "7", hittedHomeRun: "1", strikeOut: "5", deadBall: "0", error: "3", earnedRun: "3", era: "3.02", whip: "1.20" },
	{ playerNo: 6, name: "김동준", inning: "6", pitchCount: "83", hitted: "7", hittedHomeRun: "1", strikeOut: "5", deadBall: "0", error: "3", earnedRun: "3", era: "3.02", whip: "1.20" },
	{ playerNo: 7, name: "김동준", inning: "6", pitchCount: "83", hitted: "7", hittedHomeRun: "1", strikeOut: "5", deadBall: "0", error: "3", earnedRun: "3", era: "3.02", whip: "1.20" },
	{ playerNo: 8, name: "김동준", inning: "6", pitchCount: "83", hitted: "7", hittedHomeRun: "1", strikeOut: "5", deadBall: "0", error: "3", earnedRun: "3", era: "3.02", whip: "1.20" },
	{ playerNo: 9, name: "김동준", inning: "6", pitchCount: "83", hitted: "7", hittedHomeRun: "1", strikeOut: "5", deadBall: "0", error: "3", earnedRun: "3", era: "3.02", whip: "1.20" }

]

$(document).ready(function() {
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



function winPitcherTable(data) {
	let html = ""

	for (let d of winPitcherData) {
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
// 경기 결과 랜덤 값 계산기 만들기

function getRandomInt(min, max) {
	return Math.floor(Math.random() * (max - min + 1)) + min;
}
function calculateResults() {
	const winnerScore = parseInt(document.getElementById('winnerScore').value);
	const loserScore = parseInt(document.getElementById('loserScore').value);

	if (isNaN(winnerScore) || isNaN(loserScore)) {
		alert('스코어를 입력하세요');
		return;
	}

	// 안타, 홈런 계산 (홈런이 스코어보다 클 수 없음!)
	const hrWinner = getRandomInt(0, Math.min(winnerScore, 5));
	const hrLoser = getRandomInt(0, Math.min(loserScore, 5));
	const hitsWinner = getRandomInt(winnerScore, winnerScore + 10);
	const hitsLoser = getRandomInt(loserScore, loserScore + 10);

	// 기타 항목들 

	const soWinner = getRandomInt(5, 15);
	const soLoser = getRandomInt(5, 15);
	const sbWinner = getRandomInt(0, 5);
	const sbLoser = getRandomInt(0, 5);
	const dpWinner = getRandomInt(0, 5);
	const dpLoser = getRandomInt(0, 5);
	const erWinner = getRandomInt(0, 5);
	const erLoser = getRandomInt(0, 5);

	// 결과 

	document.getElementById('hitsWinner').value = hitsWinner;
	document.getElementById('hrWinner').value = hrWinner;
	document.getElementById('soWinner').value = soWinner;
	document.getElementById('sbWinner').value = sbWinner;
	document.getElementById('dpWinner').value = dpWinner;
	document.getElementById('erWinner').value = erWinner;

	document.getElementById('hitsLoser').value = hitsLoser;
	document.getElementById('hrLoser').value = hrLoser;
	document.getElementById('soLoser').value = soLoser;
	document.getElementById('sbLoser').value = sbLoser;
	document.getElementById('dpLoser').value = dpLoser;
	document.getElementById('erLoser').value = erLoser;
	
}