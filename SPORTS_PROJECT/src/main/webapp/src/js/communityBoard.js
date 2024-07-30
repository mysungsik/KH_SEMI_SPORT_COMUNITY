let isInitialLoad = true; 

$(document).ready(function () {
    let sub = $("input[name='sub']");
    let sub_value = sub.val();

    // 페이지 로드 시 초기 데이터 요청 및 페이지네이션 실행
    loadDataAndPaginate(sub_value);

    // 팀 선택 시 이벤트 처리
    $(document).on("change", "#team", function () {
        let teamNo = $(this).val(); // 선택된 팀의 ID 가져오기


        $("#community-data").text("");
        $("#community-pagination").text("");

        loadDataAndPaginate(sub_value, teamNo); // 선택된 팀의 ID와 함께 데이터 로드 및 페이지네이션 실행
    });


    // 함수화된 AJAX 요청 및 페이지네이션 실행 함수
    function loadDataAndPaginate(sub_value, teamNo) {
        let typeNumber = $("input[name='sub']").eq(0);
        let request_url = `${contextPath}/api/community/communityBoard`;

        $.ajax({
            type: "GET",
            url: request_url,
            dataType: "json",
            data: {
                "type": typeNumber.val(),
                "teamNo": teamNo // 선택된 팀의 ID를 데이터로 추가
            },
            success: function (res) {
                let isGetData = res.hasOwnProperty("data");
                if (isGetData) {
                    communityData = res.data;
                    paginationActive("community", communityData, paginationTemplate);
                }else{
                    $("#community-data").text("게시글이 존재하지 않습니다.");
                }

                // Handle teams data for select options
                let teams = res.teams; // Assuming "teams" is the key in your JSON response


                // Clear existing options (if any)
                $("#team").empty();

                // Populate options
                teams.forEach(function (team) {
                    $("#team").append(`<option value="${team.teamNo}">${team.teamName}</option>`);
                });

                if (teamNo) {
                    $("#team").val(teamNo);
                }
            },
            error: function (request, status, error) {
                console.log(request);
                console.log(status);
                console.log(error);
            }
        });
    }


    // 기존의 switch 문은 필요에 따라 유지할 수 있습니다.
    switch (sub_value) {
        case "0": {
            $(".switch-category").eq(0).removeClass("base__lblue").addClass("base__blue");
            $(".switch-title").eq(0).removeClass("fc__gray").addClass("fc__white");
            $(".title").text("전체");
            break;
        }
        case "4": {
            $(".switch-category").eq(1).removeClass("base__lblue").addClass("base__blue");
            $(".switch-title").eq(1).removeClass("fc__gray").addClass("fc__white");
            $(".title").text("인기 게시판");
            break;
        }
        case "3": {
            $(".switch-category").eq(2).removeClass("base__lblue").addClass("base__blue");
            $(".switch-title").eq(2).removeClass("fc__gray").addClass("fc__white");
            $(".title").html(`
                응원 게시판 
                <form action="#">
                    <select name="team" id="team" style="border: none; outline: none;">
                    </select>
                </form>
            `);
            break;
        }
        case "2": {
            $(".switch-category").eq(3).removeClass("base__lblue").addClass("base__blue");
            $(".switch-title").eq(3).removeClass("fc__gray").addClass("fc__white");
            $(".title").text("자유 게시판");
            break;
        }
        case "1": {
            $(".switch-category").eq(4).removeClass("base__lblue").addClass("base__blue");
            $(".switch-title").eq(4).removeClass("fc__gray").addClass("fc__white");
            $(".title").text("공지사항");
            break;
        }
    }

    // 검색 버튼 클릭 시 검색 수행
    $("#search-btn").on("click", function () {
        searchBoard();
    });

    // 검색 기능
function searchBoard() {
    let category = $("[name='search-type']").val();	// 작성자, 제목, 내용
    let searchInput = $("[name='search-input']").val();

    if (searchInput.trim().length == 0) {
        alert("검색어를 입력해주세요");
        return
    }

    const request_url = `${contextPath}/api/community/searchBoard`;

    $(".title").text("검색 결과");

    for (let i = 0; i < 5; i++) {
        $(".switch-category").eq(i).removeClass("base__blue");
        $(".switch-title").eq(i).removeClass("fc__white");
    }

    // 이전 데이터 제거
    $("#community-data").html("");
    $("#community-pagination").html("");

    // 상태 플래그를 설정하여 검색 중임을 표시
    isInitialLoad = false;


    $.ajax({
        type: "GET",
        url: request_url,
        data: {
            category,
            searchInput
        },
        dataType: "json",
        success: function (res) {
            console.log(res)
            let isGetData = res.hasOwnProperty("data")
            if (isGetData) {
                const boardData = res.data;

                paginationActive("community", boardData, paginationTemplate);
            } else {
                $("#community-data").html("검색 결과가 없습니다.");
            }

        },
        error: function (request, status, error) {
            console.log(request);
            console.log(status);
            console.log(error);
        }
    });

}
});

function paginationTemplate(data) {
    let item = "";

    // Iterate over each item in data and generate the HTML
    $.each(data, function (index, d) {
        item +=
            `<div class="post" onclick="location.href='${contextPath}/community/communityDetail/${d.boardNo}'">
                    <div class="category">
                        <span class="fs-12 fc__gray">[ ${d.boardCategory} ]</span>
                    </div>
                    <div class="content">
                        <div class="post-title">
                            <span class="fs-14__b">${d.boardTitle}</span>
                        </div>
                        <div class="post-info">
                            <span>${d.boardAuthor} ${d.boardCreateDate}</span>
                            <span>조회수 ${d.boardViews} | 댓글 ${d.boardComent} | 좋아요 ${d.boardLike} ♡</span>
                        </div>
                    </div>
                </div>`;
    });


    return item;
}


// 페이지네이션 실행 함수
function paginationActive(id, datas, template) {
    let page_size = 10;

    if ($(`#${id}-pagination`).length > 0) {
        $(`#${id}-pagination`).pagination({
            dataSource: datas,
            pageSize: page_size,
            callback: function (data, pagination) {
                var html = template(data);

                $(`#${id}-data`).html(html);    // 데이터 페이지네이션

                var currentPage = pagination.pageNumber;    // 현재 페이지 번호

                // 페이지네이션 변경
                var pagingEl = $(`.paginationjs-page[data-num='${currentPage}'] a`);
                pagingEl.css({
                    fontSize: "14px",
                    textDecoration: "underline",
                    color: "#458BE2"
                });
            }
        });
    }
}


