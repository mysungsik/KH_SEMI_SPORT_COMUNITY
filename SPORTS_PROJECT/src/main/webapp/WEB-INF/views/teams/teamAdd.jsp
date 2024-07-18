<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<jsp:include page="/WEB-INF/views/layouts/header-dependencies.jsp" />
<link rel="stylesheet" href="${contextPath}/src/css/teamAdd.css">
<script src="${contextPath}/src/js/teamAdd.js" defer></script>
<title>MLB Teams</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/layouts/header.jsp" />
	<div class="container">
		<form action="#" method="post">
			<!-- Step 1  -->
			<div class="step" id="step1">
				<h1>구단 추가</h1>
				<hr>
				<div class="step step-count-3">
					<ul>
						<li class="on"><a href="#" class="step-item"> <span
								class="step-circle"></span> <span class="label">기본정보</span>
						</a></li>
						<li class=""><a href="#" class="step-item"> <span
								class="step-circle"></span> <span class="label">추가정보</span>
						</a></li>
						<li class=""><a href="#" class="step-item"> <span
								class="step-circle"></span> <span class="label">추가완료</span>
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
						<input type="text" name="pCompany" placeholder="모기업" required>
						<input type="text" name="teamRegion" placeholder="광역 연고권 | 연고지"
							required>
						<textarea type="text" name="teamDes" placeholder="구단 설명(500자 이내)"></textarea>
					</div>
					<hr>
					<button type="button">다음</button>
				</div>
			</div>

			<!-- Step 2  -->
			<div class="step" id="step1">
				<h1>구단 추가</h1>
				<hr>
				<div class="step step-count-3">
					<ul>
						<li class="done"><a href="#" class="step-item"> <span
								class="step-circle"></span> <span class="label">기본정보</span>
						</a></li>
						<li class="on"><a href="#" class="step-item"> <span
								class="step-circle"></span> <span class="label">추가정보</span>
						</a></li>
						<li class=""><a href="#" class="step-item"> <span
								class="step-circle"></span> <span class="label">추가완료</span>
						</a></li>
					</ul>
					<div class="more-info">
						<p class="title h7">추가정보</p>
					</div>
				</div>
				<hr>
				<div class="base-info">
					<div class="input-area">
						<div class="img-box">
							<div class="boardImage">
								<p>로고</p>
								<div class="image-area">
								
									<label for="img1"> <img class="preview"></label> 
									<input type="file" class="inputImage" id="img1" accept="image/*" name="1"> 
										<span class="delete-image">&times;</span>
									<!-- &times : x 모양의 문자 -->
									<pre class="fc__gray"> - 로고 사진등록 
   (권장사이즈 : 가로 200px X 세로 200px 혹은 가로 1 : 세로 1 비율)
	
- 파일양식 : jpg, jpeg, png(8MB 제한)
									</pre>
									<div class="image-btn">
										<button type="button">등록</button>
										<button type="button">등록</button>
									</div>
								</div>
								
							</div>

							
						</div>
					</div>
					<hr>
					<div class="btn-area">
						<button type="button">이전</button>
						<button type="button">다음</button>
					</div>
				</div>
			</div>



		</form>

	</div>
	<jsp:include page="/WEB-INF/views/layouts/footer.jsp" />
</body>
</html>