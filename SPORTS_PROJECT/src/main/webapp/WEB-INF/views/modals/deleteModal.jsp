<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<div class="modal" id="deleteModal" tabindex="-1" aria-hidden="true" data-bs-backdrop="static" data-bs-keyboard="false">
    <input type="hidden" name="modalType" value=""/>
  	<div class="modal-dialog">
	    <div class="modal-content">
	      	<div class="modal-header base__blue">
		        <h1 class="modal-title"></h1>
      		</div>
      		<div class="modal-body">
      			<div class="modal-row">정말 삭제하시겠습니까?</div>
				
				<div class="modal-btns">
					<button class="btn-medium__blue acceptBtn"> 확인 </button>
					<button class="btn-medium__gray cancelBtn" data-bs-dismiss="modal" onclick="deleteEventListener(this)"> 취소 </button>
				</div>
      		</div>
	    </div>
  	</div>
</div>