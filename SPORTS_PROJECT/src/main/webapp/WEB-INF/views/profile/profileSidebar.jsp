<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="profile-left">
    <div class="user-profile d-flex">
    	<c:if test="${empty loginUSer.getUserProfileImg}">
    		<img src="${contextPath}/public/images/user_img1.jpg" onclick="changeImgModal()"/>
    	</c:if>
   		<c:if test="${!empty loginUSer.getUserProfileImg}">
    		<img src="${loginUSer.getUserProfileImg}" onclick="changeImgModal()"/>
    	</c:if>
        <p> ${ loginUser.getUserId() } </p>
        <p> ${ loginUser.getUserEmail() }</p>
    </div>
    <hr class="hr__gray mr-12 ml-12">
    <div class="user-nav mt-20">
        <div>
        	<input type="hidden" name="page" value="${page}">
            <p class="fc__gray fs-20"> 컨텐츠 </p>
            <ul class="ml-20">
                <li class="text-hover__blue"> <a class="${page == 'myComment' ? 'fc__blue' : '' }" href="${contextPath}/profile/myComment">내 댓글</a></li>
                <li class="text-hover__blue"> <a class="${page == 'myBoard' ? 'fc__blue' : '' }" href="${contextPath}/profile/myBoard">내 게시글</a></li>
                <li class="text-hover__blue"> <a class="${page == 'myScrab' ? 'fc__blue' : '' }" href="${contextPath}/profile/myScrab">내 스크랩</a></li>
            </ul>
        </div>
        <div>
            <p class="fc__gray fs-20"> 개인 정보 </p>
            <ul class="ml-20">
                <li class="text-hover__blue"> <a class="${page == 'myInfo' ? 'fc__blue' : '' }" href="${contextPath}/profile/myInfo">내 정보 관리</a></li>
                <li class="text-hover__blue"> <a class="${page == 'resign' ? 'fc__blue' : '' }" href="${contextPath}/profile/resign">회원 탈퇴</a></li>
            </ul>
        </div>
        
        <c:if test="${loginUser.getUserAuthority() == 'A'}"> 
        <div>
            <p class="fc__gray fs-20"> 회원 관리 </p>
            <ul class="ml-20">
                <li class="text-hover__blue"> <a class="${page == 'userManagement' ? 'fc__blue' : '' }" href="${contextPath}/admin/profile/userManagement">유저 관리</a> </li>
                <li class="text-hover__blue"> <a class="${page == 'reportManagement' ? 'fc__blue' : '' }" href="${contextPath}/admin/profile/reportManagement">신고 관리</a> </li>
            </ul>
        </div>
        </c:if>
    </div>
    
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
	        <button id="confirmBtn" type="button" class="btn btn-medium__blue" onclick="modalConfirm()"> 확인 </button>
	      </div>
	    </div>
	  </div>
	</div>
	
	<!-- History Modal -->
	<div class="modal" id="historyModal" tabindex="-1" data-bs-backdrop="static" data-bs-keyboard="false">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header base base__blue">
	        <h1 class="modal-title fs-5" id="commonModalLabel"> 최근 7일간 로그인 정보 </h1>
	      </div>
	      <div class="modal-body">
	      </div>
	      <div class="modal-footer">
	        <button id="confirmBtn" type="button" class="btn btn-medium__blue w-100"  data-bs-dismiss="modal"> 확인 </button>
	      </div>
	    </div>
	  </div>
	</div>
	
	<!-- Img Change Modal -->
	<div class="modal" id="changeImgModal" tabindex="-1" data-bs-backdrop="static" data-bs-keyboard="false">
        <form class="modal-dialog" action="${contextPath}/api/profile/changeUserProfileImg" method="post" name="changeImgForm" enctype="multipart/form-data"  onsubmit="return changeImgFn()">  <!-- enctype 중요-->
          <div class="modal-content">
            <div class="modal-header base base__blue">
              <h1 class="modal-title fs-5" id="commonModalLabel"> 이미지 변경 </h1>
            </div>
            <div class="modal-body">
                <div class="changeImg-section d-flex">
                    <div class="changeImg-thumbnail">
                        <p> 이미지 미리보기 </p>
                        <img class="profileThumbnail" src="./public/images/user_img1.jpg"/>
                    </div>
                    <div class="changeImg-input">
                        <div>
                            <p class="fs-14"> 프로필 사진 선택</p>
                            <input type="file" name="inputProfieImg" id="inputProfieImg" accept="image/*">
                        </div>
                        <div>
                            <p class="fs-14"> 기본 이미지로 변경</p>
                            <input type="button" class="btn-small__gray" value="기본 이미지로 변경">
                        </div>
                    </div>
                </div>
           
            </div>
            <div class="modal-footer">
                <button id="cancelBtn" type="button" class=" btn-medium__gray" data-bs-dismiss="modal"> 변경 취소 </button>
                <button id="confirmBtn" type="submit" class=" btn-medium__blue"> 이미지 변경 </button>
            </div>
          </div>
        </form>
    </div>
</div>
