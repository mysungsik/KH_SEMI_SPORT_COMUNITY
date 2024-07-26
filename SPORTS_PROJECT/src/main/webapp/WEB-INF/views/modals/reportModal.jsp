<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<div class="modal" id="reportModal" tabindex="-1" aria-hidden="true">
    <input type="hidden" name="modalType" value=""/>
  	<div class="modal-dialog">
	    <div class="modal-content">
	      	<div class="modal-header base__blue">
		        <h1 class="modal-title"></h1>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      		</div>
      		<div class="modal-body">
				<div class="modal-row">
					<div class="select-wrapper">
						<label>신고 유형을 선택해주세요 : </label>
						<select name="reportType" id="reportType">
					    	<option value="1"> 욕설</option>
					    	<option value="2"> 성희롱</option>
					    	<option value="3"> 허위사실 유포</option>
					    	<option value="4"> 혐오발언</option>
					    	<option value="5"> 개인정보노출</option>
					    	<option value="6"> 불쾌한발언</option>
					    	<option value="7"> 스팸/홍보/도배</option>
					    	<option value="8"> 명예훼손</option>
					    	<option value="9"> 저작권침해</option>
					    	<option value="10">불법촬용물</option>
					    </select>
				    </div>
				    <textarea name="report-content" rows="5" cols="30" placeholder="신고 내용을 입력해주세요" ></textarea>
				</div>
				<div class="modal-btns">
					<button class="btn-medium__blue acceptBtn"> 확인 </button>
					<button class="btn-medium__gray cancelBtn" data-bs-dismiss="modal"> 취소 </button>
				</div>
      		</div>
	    </div>
  	</div>
</div>