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