<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<jsp:include page="/WEB-INF/views/layouts/header-teams-dependencies.jsp"/>
<jsp:include page="/WEB-INF/views/layouts/header-dependencies.jsp" />
<link rel="stylesheet" href="${contextPath}/src/css/teamAdd.css">
<script src="${contextPath}/src/js/teamAdd.js" defer></script>
<title>MLB Teams</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/layouts/header.jsp" />
	<div class="container">
		<form action="insert" method="post" enctype="multipart/form-data" name="teamAddForm"> 
			<!-- Step 1  -->
			<div class="step active" id="step1">
				<h1>구단 추가</h1>
				<div class="step active step-count-3">
					<ul>
						<li class="on">
							<a href="#" class="step-item" onclick="firstStep()"> 
								<span class="step-circle"></span> 
								<span class="label">기본정보</span>
							</a>
						</li>

						<li class="">
							<a href="#" class="step-item" onclick="secondStep()"> 
								<span class="step-circle"></span> 
								<span class="label">추가정보</span>
							</a>
						</li>
						<li class=""><a href="#" class="step-item"> 
							<span class="step-circle"></span> 
							<span class="label">추가완료</span>
						</a></li>
					</ul>
					<div class="more-info">
						<p class="title h7">기본정보</p>
					</div>
				</div>
				<hr>
				<div class="base-info">
					<div class="input-area">
						<input type="text" name="teamName" placeholder="구단명" required>
						<input type="text" name="teamLeader" placeholder="단장" required>
						<input type="text" name="director" placeholder="감독명 " required>
						<input type="text" name="sponsor" placeholder="모기업" required>
						<input type="text" name="teamRegion" placeholder="광역 연고권 | 연고지" required>
						<input type="text" name="videoUrl" placeholder="구단 영상 URL">
						<input type="text" name="teamColor" placeholder="구단 색깔">
						<textarea type="text" name="teamDes" placeholder="구단 설명(500자 이내)"></textarea>
					</div>
				</div>
				<hr>
				<div class="btn-area">
					<button type="button" id="goNextBtn1">다음</button>
				</div>
			</div>

			<!-- Step 2  -->
			<div class="step" id="step2">
				<h1>구단 추가</h1>
				<div class="step step-count-3">
					<ul>
						<li class="done">
							<a href="#" class="step-item"  onclick="firstStep()"> 
								<span class="step-circle"></span> 
								<span class="label">기본정보</span>
							</a>
						</li>
						<li class="on">
							<a href="#" class="step-item" onclick="secondStep()"> 
								<span class="step-circle"></span> 
								<span class="label">추가정보</span>
							</a>
						</li>
						<li class=""><a href="#" class="step-item"> 
							<span class="step-circle"></span> 
							<span class="label">추가완료</span>
						</a></li>
					</ul>
					<div class="more-info">
						<p class="title h7">추가정보</p>
					</div>
				</div>
				<hr>
				<div class="base-info">
					<div class="input-area">
						<!-- 로고 시작 -->
						<div class="img-box">
							<div class="boardImage">
								<p>로고</p>
								<div class="image-area">
								
									<div class="left-image-area">
										<label for="logo"> 
											<img class="preview">
										</label> 
										<input type="file" class="inputImage" id="logo" accept="image/*" name="logo"> 
										<span class="delete-image">&times;</span>
									</div>

									<div class="right-image-area">
										<pre class="fc__gray">
- 로고 사진등록 
 (권장사이즈 : 가로 200px X 세로 200px 혹은 가로 1 : 세로 1 비율)
		
- 파일양식 : jpg, jpeg, png(8MB 제한)
										</pre>
										<div class="image-btn">
											<button type="button">사진등록</button>
											<button type="button">삭제</button>
										</div>
									</div>

								</div>
								<hr>
								<textarea name="logo-desc" placeholder="로고 설명(300자 이내)"></textarea>
								
							</div>

							
						</div>

						<!-- 로고 끝 -->
						<hr>

						<!-- 엠블럼 -->
						<div class="img-box">
							<div class="boardImage">
								<p>엠블럼</p>
								<div class="image-area">
								
									<div class="left-image-area">
										<label for="emblem"> 
											<img class="preview">
										</label> 
										<input type="file" class="inputImage" id="emblem" accept="image/*" name="emblem"> 
										<span class="delete-image">&times;</span>
									</div>

									<div class="right-image-area">
										<pre class="fc__gray">
- 엠블럼 사진등록 
 (권장사이즈 : 가로 200px X 세로 200px 혹은 가로 1 : 세로 1 비율)
		
- 파일양식 : jpg, jpeg, png(8MB 제한)
										</pre>
										<div class="image-btn">
											<button type="button">사진등록</button>
											<button type="button">삭제</button>
										</div>
									</div>

								</div>
								<hr>
								<textarea name="emblem-desc" placeholder="엠블럼 설명(300자 이내)"></textarea>
								
							</div>

							
						</div>


						<hr>
						<!-- 구단 메인페이지용 사진 -->
						<div class="img-box">
							<div class="boardImage">
								<p>구단 메인페이지용 사진</p>
								<div class="image-area">
								
									<div class="left-image-area">
										<label for="main-page-image"> 
											<img class="preview">
										</label> 
										<input type="file" class="inputImage" id="main-page-image" accept="image/*" name="main-page-image"> 
										<span class="delete-image">&times;</span>
									</div>

									<div class="right-image-area">
										<pre class="fc__gray">
- 구단 메인페이지 사진등록 
 (권장사이즈 : 가로 1024px X 세로 500px 혹은 가로 2 : 세로 1 비율)

- 파일양식 : jpg, jpeg, png(8MB 제한)
										</pre>
										<div class="image-btn">
											<button type="button">사진등록</button>
											<button type="button">삭제</button>
										</div>
									</div>

								</div>
								
							</div>
							
						</div>
						<hr>

						<!-- 구단 카테고리 헤더용 사진 -->
						<div class="img-box">
							<div class="boardImage">
								<p>구단 카테고리 헤더용 사진</p>
								<div class="image-area">
								
									<div class="left-image-area">
										<label for="header-image"> 
											<img class="preview">
										</label> 
										<input type="file" class="inputImage" id="header-image" accept="image/*" name="header-image"> 
										<span class="delete-image">&times;</span>
									</div>

									<div class="right-image-area">
										<pre class="fc__gray">
- 구단 카테고리 헤더용 사진등록 
 (권장사이즈 : 가로 1024px X 세로 500px 혹은 가로 2 : 세로 1 비율)
		
- 파일양식 : jpg, jpeg, png(8MB 제한)
										</pre>
										<div class="image-btn">
											<button type="button">사진등록</button>
											<button type="button">삭제</button>
										</div>
									</div>

								</div>
								
							</div>
							
						</div>
					</div>
					<hr>
					<div class="btn-area">
						<button type="button" onclick="prevStep()">이전</button>
						<button type="button" id="goNextBtn2" onclick="nextStep()">다음</button>
					</div>
				</div>
			</div>


			<!-- Step 3  -->
			<div class="step" id="step3">
				<h1>구단 추가</h1>
				<div class="step step-count-3">
					<ul>
						<li class="done">
							<a href="#" class="step-item"  onclick="firstStep()"> 
								<span class="step-circle"></span> 
								<span class="label">기본정보</span>
							</a>
						</li>
						<li class="done">
							<a href="#" class="step-item" onclick="secondStep()"> 
								<span class="step-circle"></span> 
								<span class="label">추가정보</span>
							</a>
						</li>
						<li class="on"><a href="#" class="step-item"> 
							<span class="step-circle"></span> 
							<span class="label">추가완료</span>
						</a></li>
					</ul>
					<div class="more-info">
						<p class="title h7">추가완료</p>
					</div>
				</div>
				<hr>
				<div class="comment">
					신규 구단이 성공적으로 추가되었습니다.
				</div>
				<hr>
				<div class="btn-area">
					<button type="button" onclick="prevStep()">이전</button>
					<button type="button" onclick="teamAdd()" >완료</button>
				</div>
			</div>

		</form>

	</div>
	<jsp:include page="/WEB-INF/views/layouts/footer.jsp" />
</body>
</html>