<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<jsp:include page="/WEB-INF/views/layouts/header-dependencies.jsp"/>
<link rel="stylesheet" href="${contextPath}/src/css/newsMain.css">
<script src="${contextPath}/src/util/pagination.js" defer></script>
<script src="${contextPath}/src/js/newsMain.js" defer></script>

<title>News Main</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/layouts/header.jsp"/>
	<!-- Write Main Content -->
	<main class="container">
		<!-- 뉴스 탭 -->
		<div class="news-main">
		<!--  인기뉴스 -->
			<div class="news-main-popular">
				<p class="fs-20__b mb-10 fc__blue"> 인기 뉴스 </p>
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
		<!--  실시간 뉴스-->
			<div class="news-main-recently">
				<p class="fs-20__b mb-10 fc__blue"> 실시간 뉴스 </p>
				<div class="news-card-small">
                    <img class="news-card-small-img" src="${contextPath}/public/images/news_example.jpg">
                    <div class="news-card-small-infos">
                        <p class="news-card-small-title fs-14__b">
                            플라이강원 2대 주주 세븐브릿지PE, 투자금 전액 날렸다... “개인 고객들 피해” 날렸다... “개인 고객들 피해”
                        </p>
                        <div class="news-card-footer d-flex">
                            <p> 스포츠 서울 </p>
                            <p> 기아 타이거즈</p>
                        </div>
                    </div>
                </div>
                <div class="news-card-small">
                    <img class="news-card-small-img" src="${contextPath}/public/images/news_example.jpg">
                    <div class="news-card-small-infos">
                        <p class="news-card-small-title fs-14__b">
                            플라이강원 2대 주주 세븐브릿지PE, 투자금 전액 날렸다... “개인 고객들 피해” 날렸다... “개인 고객들 피해”
                        </p>
                        <div class="news-card-footer d-flex">
                            <p> 스포츠 서울 </p>
                            <p> 기아 타이거즈</p>
                        </div>
                    </div>
                </div>
                <div class="news-card-small">
                    <img class="news-card-small-img" src="${contextPath}/public/images/news_example.jpg">
                    <div class="news-card-small-infos">
                        <p class="news-card-small-title fs-14__b">
                            플라이강원 2대 주주 세븐브릿지PE, 투자금 전액 날렸다... “개인 고객들 피해” 날렸다... “개인 고객들 피해”
                        </p>
                        <div class="news-card-footer d-flex">
                            <p> 스포츠 서울 </p>
                            <p> 기아 타이거즈</p>
                        </div>
                    </div>
                </div>
                <div class="news-card-small">
                    <img class="news-card-small-img" src="${contextPath}/public/images/news_example.jpg">
                    <div class="news-card-small-infos">
                        <p class="news-card-small-title fs-14__b">
                            플라이강원 2대 주주 세븐브릿지PE, 투자금 전액 날렸다... “개인 고객들 피해” 날렸다... “개인 고객들 피해”
                        </p>
                        <div class="news-card-footer d-flex">
                            <p> 스포츠 서울 </p>
                            <p> 기아 타이거즈</p>
                        </div>
                    </div>
                </div>
                <div class="news-card-small">
                    <img class="news-card-small-img" src="${contextPath}/public/images/news_example.jpg">
                    <div class="news-card-small-infos">
                        <p class="news-card-small-title fs-14__b">
                            플라이강원 2대 주주 세븐브릿지PE, 투자금 전액 날렸다... “개인 고객들 피해” 날렸다... “개인 고객들 피해”
                        </p>
                        <div class="news-card-footer d-flex">
                            <p> 스포츠 서울 </p>
                            <p> 기아 타이거즈</p>
                        </div>
                    </div>
                </div>
                <div class="news-card-small">
                    <img class="news-card-small-img" src="${contextPath}/public/images/news_example.jpg">
                    <div class="news-card-small-infos">
                        <p class="news-card-small-title fs-14__b">
                            플라이강원 2대 주주 세븐브릿지PE, 투자금 전액 날렸다... “개인 고객들 피해” 날렸다... “개인 고객들 피해”
                        </p>
                        <div class="news-card-footer d-flex">
                            <p> 스포츠 서울 </p>
                            <p> 기아 타이거즈</p>
                        </div>
                    </div>
                </div>
                <div class="news-card-small">
                    <img class="news-card-small-img" src="${contextPath}/public/images/news_example.jpg">
                    <div class="news-card-small-infos">
                        <p class="news-card-small-title fs-14__b">
                            플라이강원 2대 주주 세븐브릿지PE, 투자금 전액 날렸다... “개인 고객들 피해” 날렸다... “개인 고객들 피해”
                        </p>
                        <div class="news-card-footer d-flex">
                            <p> 스포츠 서울 </p>
                            <p> 기아 타이거즈</p>
                        </div>
                    </div>
                </div>
			</div>
		</div>
		
		<!-- 동영상 탭 (영상 인기순 10개)-->
		<div class="news-vods-container">
			<p class="fs-20__b mb-10 fc__blue"> 많이 본 영상 </p>
			<div class="new-vods">
	            <div class="card-thumbnail">
	            	<p class="rank fc__white fs-28__b">1<p>
	             	<img class="card-thumbnail-img" src="${contextPath}/public/images/news_example.jpg">
	             	<div class="card-thumbnail-infos">
	                 	<div class="card-thumbnail-title">
	                     	'9실점 악몽' 준 키움과 2달 만에 ㅁㅁㅁㅁㅁㅁaaaaaaaㅁ ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ
	                 	</div>
	             	</div>
	         	</div>
		        <div class="card-thumbnail">
		        	<p class="rank fc__white fs-28__b">2<p>
		            <img class="card-thumbnail-img" src="${contextPath}/public/images/news_example.jpg">
		            <div class="card-thumbnail-infos">
		                <div class="card-thumbnail-title">
		                    '9실점 악몽' 준 키움과 2달 만에 ㅁㅁㅁㅁㅁㅁaaaaaaaㅁ ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ
		                </div>
		            </div>
		        </div>
		        		        <div class="card-thumbnail">
		        	<p class="rank fc__white fs-28__b">2<p>
		            <img class="card-thumbnail-img" src="${contextPath}/public/images/news_example.jpg">
		            <div class="card-thumbnail-infos">
		                <div class="card-thumbnail-title">
		                    '9실점 악몽' 준 키움과 2달 만에 ㅁㅁㅁㅁㅁㅁaaaaaaaㅁ ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ
		                </div>
		            </div>
		        </div>
		        		        <div class="card-thumbnail">
		        	<p class="rank fc__white fs-28__b">2<p>
		            <img class="card-thumbnail-img" src="${contextPath}/public/images/news_example.jpg">
		            <div class="card-thumbnail-infos">
		                <div class="card-thumbnail-title">
		                    '9실점 악몽' 준 키움과 2달 만에 ㅁㅁㅁㅁㅁㅁaaaaaaaㅁ ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ
		                </div>
		            </div>
		        </div>
		        		        <div class="card-thumbnail">
		        	<p class="rank fc__white fs-28__b">2<p>
		            <img class="card-thumbnail-img" src="${contextPath}/public/images/news_example.jpg">
		            <div class="card-thumbnail-infos">
		                <div class="card-thumbnail-title">
		                    '9실점 악몽' 준 키움과 2달 만에 ㅁㅁㅁㅁㅁㅁaaaaaaaㅁ ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ
		                </div>
		            </div>
		        </div>
		        		        <div class="card-thumbnail">
		        	<p class="rank fc__white fs-28__b">2<p>
		            <img class="card-thumbnail-img" src="${contextPath}/public/images/news_example.jpg">
		            <div class="card-thumbnail-infos">
		                <div class="card-thumbnail-title">
		                    '9실점 악몽' 준 키움과 2달 만에 ㅁㅁㅁㅁㅁㅁaaaaaaaㅁ ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ
		                </div>
		            </div>
		        </div>
		        		        		        <div class="card-thumbnail">
		        	<p class="rank fc__white fs-28__b">2<p>
		            <img class="card-thumbnail-img" src="${contextPath}/public/images/news_example.jpg">
		            <div class="card-thumbnail-infos">
		                <div class="card-thumbnail-title">
		                    '9실점 악몽' 준 키움과 2달 만에 ㅁㅁㅁㅁㅁㅁaaaaaaaㅁ ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ
		                </div>
		            </div>
		        </div>
		        		        		        <div class="card-thumbnail">
		        	<p class="rank fc__white fs-28__b">2<p>
		            <img class="card-thumbnail-img" src="${contextPath}/public/images/news_example.jpg">
		            <div class="card-thumbnail-infos">
		                <div class="card-thumbnail-title">
		                    '9실점 악몽' 준 키움과 2달 만에 ㅁㅁㅁㅁㅁㅁaaaaaaaㅁ ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ
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