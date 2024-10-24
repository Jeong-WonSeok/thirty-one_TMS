<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>


<meta name='viewport' content='width=device-width, initial-scale=1'>


<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/noticeWrite.css">

<div class="content-box">
			<div class="main-container" >
				<p class="title">${title}</p>

<div class="cardBox">
	<div class="text">
		써리원의 사내 공지사항을 작성합니다.
		<button type="button" class="btn list"
			onclick="location.href='${pageContext.request.contextPath}/notice/noticeList'">목록</button>
	</div>

	<div class="content">
		<div class="line" style="border: 2.5px solid #F0F0F0;"></div>

		<form id="contentForm" method="POST" action="${pageContext.request.contextPath}/notice/insertNotice" enctype="multipart/form-data">
			<div class="noticeTitle">
				<div class="notice-title">
					<img class="star-icon"
						src="${pageContext.request.contextPath}/resources/image/star_icon.png"
						alt="star" style="width: 9px" />제목
				</div>
				<textarea id="titleBox" name="noticeTitle"></textarea>
			</div>
			<div class="line"></div>

			<div class="noticeTarget">
				<div class="notice-target" >공지 대상</div>
				<button type="button" class="button-small search"
					data-bs-toggle="modal" data-bs-target="#exampleModal">찾기</button>


				<!-- Modal -->
				<div class="modal fade" id="exampleModal" tabindex="-1"
					aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<div class="modal-title" id="exampleModalLabel">부서 찾기</div>
								<button type="button" class="btn-close" data-bs-dismiss="modal"
									aria-label="Close"></button>
							</div>
							<div class="modal-body">

								<!-- 체크 -->
								<div class="form-check">
									<input class="form-check-input" type="checkbox" name="check" value="공공사업1DIV"
										id="flexCheckDefault" onclick="getCheckboxValue()"><label class="form-check-label"
										for="flexCheckDefault"> 공공사업1DIV </label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="checkbox" name="check" value="공공사업2DIV"
										id="flexCheckDefault" onclick="getCheckboxValue()"><label class="form-check-label"
										for="flexCheckDefault"> 공공사업2DIV </label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="checkbox" name="check" value="공공사업3DIV"
										id="flexCheckDefault" onclick="getCheckboxValue()"> <label class="form-check-label"
										for="flexCheckDefault"> 공공사업3DIV </label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="checkbox" name="check" value="공공사업4DIV"
										id="flexCheckDefault" onclick="getCheckboxValue()"> <label class="form-check-label"
										for="flexCheckDefault"> 공공사업4DIV </label>
								</div>


							</div>
							<div class="modal-footer">
								<button type="button" class="button-medium cancel"
									data-bs-dismiss="modal">취소</button>
								<button type="button" class="button-medium save" onclick="getCheckboxValue()">확인</button>
							</div>
						</div>
					</div>
				</div>



				<div class="targetBox" id="result">미선택 시, 전체직원에게 공지가 노출됩니다.</div>

				<div class="notice-target">중요도</div>
				<div class="custom-select" style="width: 75px;">
					<select class="form-select" id="formSelect" name="noticeImportant" required>
						<option value="">선택</option>
						<option value="0">기본</option>
						<option value="1">중요</option>
					</select>
				</div>
			</div>
			<div class="line"></div>

			<div class="plusFile">
				<div class="plus-file">첨부파일</div>

				<div class="fileContent">
					<a href="javascript:" id="dropZoneLink">
						<div class="fileBox" id="dropZone">
							<img
								src="${pageContext.request.contextPath}/resources/image/plusFile_icon.png"
								alt="plusFile" style="width: 44px" />
							<p>마우스로 파일을 끌어놓으세요.</p>
							<img src="" id="preview"/>
						</div>
						</a>
						<div class="line file"></div> <input type="file" id="uploadFile"
						class="button-small upload" value="내 PC" multiple><img
						src="${pageContext.request.contextPath}/resources/image/upload_icon.png"
						alt="upload" style="width: 18px;" />
				</div>
			</div>
			<div class="line"></div>
			<div class="contentBtn">
				<!-- <div contenteditable="true"> -->
				<textarea id="editor" name="noticeContent" rows="10" cols="80"></textarea>
			</div>
			<div class="noticeButton">
				<button class="button-medium cancel"
					onclick="location.href='${pageContext.request.contextPath}/notice/noticeList'">취소</button>
				<input type="submit" class="button-medium" id="save" value="저장"></input>
			</div>
	</form>
	</div>
</div>
<script
	src="${pageContext.request.contextPath}/resources/js/notice_write.js"></script>
<script src="https://cdn.ckeditor.com/4.25.0/standard/ckeditor.js"></script>
<%@ include file="/WEB-INF/views/common/footer.jsp"%>