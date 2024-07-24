<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<jsp:include page="/WEB-INF/views/layouts/header-dependencies.jsp" />
<link rel="stylesheet" href="${contextPath}/src/css/playerAdd.css">
<script src="${contextPath}/src/js/playerAdd.js" defer></script>
<title>MLB Teams</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/layouts/header-teams.jsp"/>
	<div class="container">
		<form action="#" method="post" enctype="multipart/form-data">
			<!-- Step 1  -->
			<div class="step active" id="step1">
				<h1>선수 추가</h1>
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
						<input type="text" name="playerName" placeholder="이름" required>
						<input type="text" name="playerNo" placeholder="선수번호" required>
						<input type="text" name="playerPosition" placeholder="포지션명" required>
						<input type="text" name="playerBD" placeholder="생년월일" required>
						<input type="text" name="hireDate" placeholder="입단년도 " required>
						<input type="text" name="height" placeholder="신장">
						<input type="text" name="weight" placeholder="체중">
						<input type="text" name="weight" placeholder="출신학교(초등학교, 중학교, 고등학교, 대학교)">
						<input type="text" name="salary" placeholder="연봉">
						<textarea type="text" name="career" placeholder="경력사항"></textarea>
					</div>
				</div>
				<hr>
				<div class="btn-area">
					<button type="button" onclick="nextStep()">다음</button>
				</div>
			</div>

			<!-- Step 2  -->
			<div class="step" id="step2">
				<h1>선수 추가</h1>
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
						<!-- 선수 시작 -->
						<div class="img-box">
							<div class="boardImage">
								<p>선수 사진</p>
								<div class="image-area">
								
									<div class="left-image-area">
										<label for="head-shot"> 
											<img class="preview">
										</label> 
										<input type="file" class="inputImage" id="head-shot" accept="image/*" name="head-shot"> 
										<span class="delete-image">&times;</span>
									</div>

									<div class="right-image-area">
										<pre class="fc__gray">
- 선수 사진등록 
 (권장사이즈 : 가로 200px X 세로 200px 혹은 가로 1 : 세로 1 비율)
		
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

						<!-- 선수 사진 끝 -->
						<hr>

						<!-- 포즈 사진 -->
						<div class="img-box">
							<div class="boardImage">
								<p>선수 포즈 사진</p>
								<div class="image-area">
								
									<div class="left-image-area">
										<label for="pose-image"> 
											<img class="preview">
										</label> 
										<input type="file" class="inputImage" id="pose-image" accept="image/*" name="pose-image"> 
										<span class="delete-image">&times;</span>
									</div>

									<div class="right-image-area">
										<pre class="fc__gray">
- 선수 포즈 사진등록 
 (권장사이즈 : 가로 500px X 세로 500px 혹은 가로 1 : 세로 1 비율)
		
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
						<button type="button" onclick="nextStep()">다음</button>
					</div>
				</div>
			</div>


			<!-- Step 3  -->
			<div class="step" id="step3">
				<h1>선수 추가</h1>
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
					신규 선수가 성공적으로 추가되었습니다.
				</div>
				<hr>
				<div class="btn-area">
					<button type="button" onclick="prevStep()">이전</button>
					<button type="submit" id="addTeamBtn">완료</button>
				</div>
			</div>

		</form>

	</div>
	<jsp:include page="/WEB-INF/views/layouts/footer.jsp" />
</body>
</html>