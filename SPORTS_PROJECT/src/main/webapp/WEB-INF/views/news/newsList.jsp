<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<jsp:include page="/WEB-INF/views/layouts/header-dependencies.jsp"/>
<link rel="stylesheet" href="${contextPath}/src/css/newsList.css">
<script src="${contextPath}/src/util/pagination.js" defer></script>
<script src="${contextPath}/src/js/newsList.js" defer></script>

<title>News Main</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/layouts/header.jsp"/>
	<!-- Write Main Content -->
	<main class="container">
		<div class="new-list-container">
			<div class="news-list">
				<div class="search-term">
					<p class="fs-28__b" data-type="recent"> 최신순 </p>
					<p class="fs-28__b" data-type="recent">  인기순 </p>
					<select  class="fs-28__b">
						<option class="fs-28__b"> 다저스 </option>
						<option class="fs-28__b"> 기아 </option>
						<option class="fs-28__b"> 롯데 </option>
						<option class="fs-28__b"> 한화  </option>
					</select>
				</div>
				<p class="fs-20__b mb-10 fc__blue"> SS 뉴스 </p>
			 	<div class="news-card">
                    <img class="news-card-img" src="${contextPath}/public/images/news_example.jpg">
                    <div class="news-card-infos">
                        <p class="news-card-title fs-14__b">
                            플라이강원 2대 주주 세븐브릿지PE, 투자금 전액 날렸다... “개인 고객들 피해” 날렸다... “개인 고객들 피해”
                        </p>
                        <div class="news-card-content fc__gray">
                            <p> 국내 저비용항공사(LCC) 플라이강원에 투자한 사모펀드(PEF) 운용사와 벤처캐피털(VC)이 
                            투자금을 전액 손실 처리하게 됐다. 플라이강원의 회생계획안에 따라 기존 주주의 주식을 모두 무상 소각해야 하기 때문이다. 
                             주식을 모두 무상 소각해야 하기 때문이다.
                              주식을 모두 무상 소각해야 하기 때문이다.</p>
                        </div>
                        
                        <div class="news-card-footer d-flex">
                            <p> ♡ <span>9999</span></p>
                            <p> 스포츠 서울 </p>
                            <p> 기아 타이거즈</p>
                        </div>
                    </div>
                </div>
                <div class="news-card">
                    <img class="news-card-img" src="${contextPath}/public/images/news_example.jpg">
                    <div class="news-card-infos">
                        <p class="news-card-title fs-14__b">
                            플라이강원 2대 주주 세븐브릿지PE, 투자금 전액 날렸다... “개인 고객들 피해” 날렸다... “개인 고객들 피해”
                        </p>
                        <div class="news-card-content fc__gray">
                            <p> 국내 저비용항공사(LCC) 플라이강원에 투자한 사모펀드(PEF) 운용사와 벤처캐피털(VC)이 
                            투자금을 전액 손실 처리하게 됐다. 플라이강원의 회생계획안에 따라 기존 주주의 주식을 모두 무상 소각해야 하기 때문이다. 
                             주식을 모두 무상 소각해야 하기 때문이다.
                              주식을 모두 무상 소각해야 하기 때문이다.</p>
                        </div>
                        
                        <div class="news-card-footer d-flex">
                            <p> ♡ <span>9999</span></p>
                            <p> 스포츠 서울 </p>
                            <p> 기아 타이거즈</p>
                        </div>
                    </div>
                </div>
                <div class="news-card">
                    <img class="news-card-img" src="${contextPath}/public/images/news_example.jpg">
                    <div class="news-card-infos">
                        <p class="news-card-title fs-14__b">
                            플라이강원 2대 주주 세븐브릿지PE, 투자금 전액 날렸다... “개인 고객들 피해” 날렸다... “개인 고객들 피해”
                        </p>
                        <div class="news-card-content fc__gray">
                            <p> 국내 저비용항공사(LCC) 플라이강원에 투자한 사모펀드(PEF) 운용사와 벤처캐피털(VC)이 
                            투자금을 전액 손실 처리하게 됐다. 플라이강원의 회생계획안에 따라 기존 주주의 주식을 모두 무상 소각해야 하기 때문이다. 
                             주식을 모두 무상 소각해야 하기 때문이다.
                              주식을 모두 무상 소각해야 하기 때문이다.</p>
                        </div>
                        
                        <div class="news-card-footer d-flex">
                            <p> ♡ <span>9999</span></p>
                            <p> 스포츠 서울 </p>
                            <p> 기아 타이거즈</p>
                        </div>
                    </div>
                </div>
                <div class="news-card">
                    <img class="news-card-img" src="${contextPath}/public/images/news_example.jpg">
                    <div class="news-card-infos">
                        <p class="news-card-title fs-14__b">
                            플라이강원 2대 주주 세븐브릿지PE, 투자금 전액 날렸다... “개인 고객들 피해” 날렸다... “개인 고객들 피해”
                        </p>
                        <div class="news-card-content fc__gray">
                            <p> 국내 저비용항공사(LCC) 플라이강원에 투자한 사모펀드(PEF) 운용사와 벤처캐피털(VC)이 
                            투자금을 전액 손실 처리하게 됐다. 플라이강원의 회생계획안에 따라 기존 주주의 주식을 모두 무상 소각해야 하기 때문이다. 
                             주식을 모두 무상 소각해야 하기 때문이다.
                              주식을 모두 무상 소각해야 하기 때문이다.</p>
                        </div>
                        
                        <div class="news-card-footer d-flex">
                            <p> ♡ <span>9999</span></p>
                            <p> 스포츠 서울 </p>
                            <p> 기아 타이거즈</p>
                        </div>
                    </div>
                </div>
                <div class="news-card">
                    <img class="news-card-img" src="${contextPath}/public/images/news_example.jpg">
                    <div class="news-card-infos">
                        <p class="news-card-title fs-14__b">
                            플라이강원 2대 주주 세븐브릿지PE, 투자금 전액 날렸다... “개인 고객들 피해” 날렸다... “개인 고객들 피해”
                        </p>
                        <div class="news-card-content fc__gray">
                            <p> 국내 저비용항공사(LCC) 플라이강원에 투자한 사모펀드(PEF) 운용사와 벤처캐피털(VC)이 
                            투자금을 전액 손실 처리하게 됐다. 플라이강원의 회생계획안에 따라 기존 주주의 주식을 모두 무상 소각해야 하기 때문이다. 
                             주식을 모두 무상 소각해야 하기 때문이다.
                              주식을 모두 무상 소각해야 하기 때문이다.</p>
                        </div>
                        
                        <div class="news-card-footer d-flex">
                            <p> ♡ <span>9999</span></p>
                            <p> 스포츠 서울 </p>
                            <p> 기아 타이거즈</p>
                        </div>
                    </div>
                </div>
                
			</div>
		</div>
	</main>
	<!-- Be sure to include this TAG -->
	<jsp:include page="/WEB-INF/views/layouts/footer.jsp" />


</body>
</html>