function simpleTemplating(data) {
    var html = '<ul>';
    
    $.each(data, function(index, item){
        html += `<li>' 책이름은 :  ${item.name} 작가는 :  ${item.author} </li>`;
    });
    html += '</ul>';
    
    return html;
}

$('#pagination-container').pagination({
    dataSource: [
		{name : "name0", author : "bbb"},
		{name : "name1", author : "bbb"},
		{name : "name2", author : "bbb"},
		{name : "name3", author : "bbb"},
	],
 
    pageSize: 3,
    
    callback: function(data, pagination) {
        var html = simpleTemplating(data);
        $('#data-container').html(html);

    }
})