<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link rel="stylesheet" href="${contextPath}/src/common/common.css">

<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/e245e5bbb1.js" crossorigin="anonymous"></script>
<script src="${contextPath}/src/common/common.js" defer></script>
<script>
	function toastPop(type, message){
		const toastBtn = $('.toastPop')
		const toastElement = $('#liveToast')
		
		// 메시지로 변경
		$(".toast-body").find(".toast-message").text(message);
		$(".toast").removeClass("base-warn__red");
		$(".toast").removeClass("base-info__green");
		
		// 토스트 스타일 변경
		if (type == "warn"){
			$(".toast").addClass("base-warn__red");
			
		} else if(type == "info"){
			$(".toast").addClass("base-info__green");
		}
			
		// 토스트 실행
		if (toastBtn) {
			const toastBootstrap = bootstrap.Toast.getOrCreateInstance(toastElement)
			toastBootstrap.show()
	
		}
	}
</script>