<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <jsp:include page="/WEB-INF/views/layouts/header-dependencies.jsp"/>
    <link rel="stylesheet" href="${contextPath}/src/css/profile.css">
    <script src="${contextPath}/src/js/profile.js" defer></script>
    
    <title>MLB - Na</title>
</head>
<body>
    <jsp:include page="/WEB-INF/views/layouts/header.jsp"/>

    <main>
        <section class="container">
        	<!-- 사이드바 -->
            <jsp:include page="/WEB-INF/views/profile/profileSidebar.jsp"></jsp:include>
            
            <!-- 메인컨텐츠 -->
            <div class="profile-content">
            	<!-- 컨텐츠 > 헤더 -->
                <p class="content-title fs-28__b"> 내 정보 관리</p>
                <hr class="hr__gray mt-20">
            
                <!-- 컨텐츠 > 메인 -->
                <div class="profile-info">
                	<p class="info-header fs-20__b"> 로그인 정보 </p>
                	<div class="info-contents card__lblue">
                		<div>
                			<p class="fc__blue fs-12__b"> E-mail </p>
                			<p class="fc__gray fs-12__b text-hover__black" data-type="email" onclick="showModal(this)"> ${loginUser.getUserEmail()} <span> > </span></p>
                		</div>
                		<div>
                			<p class="fc__blue fs-12__b"> Phone Number </p>
                			<p class="fc__gray fs-12__b text-hover__black" data-type="number"  onclick="showModal(this)"> ${!empty loginUser.getUserPhone() ? loginUser.getUserPhone() : '등록된 번호가 없습니다'} <span> > </span></p>
                		</div>
                		<div>
                			<p class="fc__blue fs-12__b"> SNS Address </p>
                			<p class="fc__gray fs-12__b text-hover__black" data-type="sns"  onclick="showModal(this)"> ${!empty loginUser.getUserSns() ? loginUser.getUserSns() : '등록된 SNS 주소가 없습니다'} <span> > </span></p>
                		</div>
                	</div>
                </div>
                
                <!-- Button trigger modal -->
                <div class="profile-info">
                	<p class="info-header fs-20__b"> 정보 제공 동의 </p>
                	<div class="info-contents card__lblue">
                		<div>
                			<p class="fc__blue fs-12__b"> E-mail </p>
                			<div class="form-check form-switch" data-type="email">
							  <input class="form-check-input" type="checkbox" role="switch" id="emailAgree" name="emailAgree" data-type="emailAgree" onclick="showModal(this)">
							  <label class="form-check-label" for="emailAgree">${loginUser.getUserPolicy().getAgreeEmail() == 'Y' ? 'ON' : 'OFF'}</label>
							</div>
                		</div>
                		<div>
                			<p class="fc__blue fs-12__b"> Phone Number </p>
               				<div class="form-check form-switch" data-type="phone">
							  <input class="form-check-input" type="checkbox" role="switch" id="phoneAgree" name="phoneAgree" data-type="phoneAgree" onclick="showModal(this)">
							  <label class="form-check-label" for="phoneAgree">${loginUser.getUserPolicy().getAgreePhone() == 'Y' ? 'ON' : 'OFF'}</label>
							</div>
                		</div>
                		<div>
                			<p class="fc__blue fs-12__b"> Address </p>
               				<div class="form-check form-switch" data-type="sns">
							  <input class="form-check-input" type="checkbox" role="switch" id="addressAgree" name="addressAgree" data-type="addressAgree" onclick="showModal(this)">
							  <label class="form-check-label" for="addressAgree">${loginUser.getUserPolicy().getAgreeAddress() == 'Y' ? 'ON' : 'OFF'}</label>
							</div>
                		</div>
                	</div>
                </div>
                <div class="profile-info">
                	<p class="info-header fs-20__b"> 추가 정보 </p>
                	<div class="info-contents card__lblue">
                		<div>
                			<p class="fc__blue fs-12__b"> BirthDay </p>
                			<p class="fc__gray fs-12__b text-hover__black" data-type="birthday" onclick="showModal(this)"> ${!empty loginUser.getUserBd() ? loginUser.getUserBd() : '등록된 생일이 없습니다'} <span> > </span></p>	
                		</div>
                		
                		<div>
                			<p class="fc__blue fs-12__b"> Address </p>
                			<p class="fc__gray fs-12__b text-hover__black" data-type="address" onclick="showModal(this)"> ${!empty loginUser.getUserAddress() ? loginUser.getUserAddress() : '등록된 주소가 없습니다'} <span> > </span></p>
                		</div>
                		<div>
                			<p class="fc__blue fs-12__b"> Login History </p>
                			<p class="fc__gray fs-12__b text-hover__black"> VIEW <span> > </span></p>
                		</div>
                	</div>
                </div>
            </div>
        </section>
    </main>
    <!-- Modal -->
	<div class="modal" id="commonModal" tabindex="-1" data-bs-backdrop="static" data-bs-keyboard="false">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h1 class="modal-title fs-5" id="commonModalLabel"></h1>
	      </div>
	      <div class="modal-body">
	      </div>
	      <div class="modal-footer">
	      	<input type="hidden" name="modalType" value=""/>
	        <button id="cancelBtn" type="button" class="btn btn-medium__gray" data-bs-dismiss="modal" onclick="modalCancel()"> 취소 </button>
	        <button id="confirmBtn" type="button" class="btn btn-medium__blue" onclick="modalConfirm()"> 변경 </button>
	      </div>
	    </div>
	  </div>
	</div>
	<jsp:include page="/WEB-INF/views/layouts/footer.jsp"/>
</body>
</html>