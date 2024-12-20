<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/holiday/holidayProcess.css" />
<div class="content-box">
	<div class="main-container">
		<p class="title-31">${title}</p>
		<div class="holiday-subtitle sub-title">
			<div>
				<a href="${pageContext.request.contextPath}/holiday/">휴가 현황</a>
			</div>
			<div>
				<a href="${pageContext.request.contextPath}/holiday/requestForm">휴가
					신청</a>
			</div>
			<div class="selected-sub-title">
				<a href="${pageContext.request.contextPath}/holiday/process">휴가
					처리</a>
			</div>
		</div>
		<div class="main-line"></div>
		<div class="full-container">
			<div class="holiday-list-box card">
				<%-- <c:if test="${not empty hdrInfoList}"> --%>
				<!-- <p class="mini-title">휴가 신청 내역</p> -->
				<table class="table holiday-list-table">
					<tbody>
						<td scope="col">이름</td>
						<td scope="col">기간</td>
						<td scope="col">휴가항목</td>
						<td scope="col">휴가 신청일</td>
						<td scope="col">사유</td>
						<td scope="col">상태</td>
						</tr>
						<c:forEach items="${hdrInfoList}" var="hdrApr" varStatus="status">
							<tr data-bs-toggle="modal"
								data-bs-target="#holidayRequestModal${status.index}">
								<td class="holiday-profile-box">
										<img class="process-profile-img" src="${pageContext.request.contextPath}/admin/imageDown?empId=${hdrApr.emp.empId}" 
										onerror="this.onerror=null; this.src='${pageContext.request.contextPath}/resources/image/profileDefault.png';">
									<div class="holiday-profile-info">
										<h4>${hdrApr.emp.empName}</h4>
										<p>${hdrApr.deptName}</p>
									</div></td>
								<td><fmt:formatDate value="${hdrApr.hdrApr.hdrStartDate}"
										pattern="yyyy-MM-dd" /> ~ <fmt:formatDate
										value="${hdrApr.hdrApr.hdrEndDate}" pattern="yyyy-MM-dd" /></td>
								<td>${hdrApr.hdrApr.hdName}</td>
								<td><fmt:formatDate
										value="${hdrApr.hdrApr.hdrSubmittedDate}" pattern="yyyy-MM-dd" /></td>
								<td>${hdrApr.hdrApr.hdrContent}</td>
								<td>${hdrApr.hdrApr.hdrStatus}</td>
							</tr>
								


							<!-- Modal -->
							<div class="modal fade" id="holidayRequestModal${status.index}"
								tabindex="-1" aria-labelledby="exampleModalLabel"
								aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content" id="modalContent">
										<div class="holiday-accept card">
											<div class="modal-header">
											<p class="mini-title">휴가 승인</p>
											<button type="button" class="btn-close"  data-bs-dismiss="modal" aria-label="close">
											</button>
											</div>
											<div class="accept-box">
												<div class="profile-box">
												<p class="accept-label">신청자</p>
													<img class="process-profile-img" src="${pageContext.request.contextPath}/admin/imageDown?empId=${hdrApr.emp.empId}" 
														onerror="this.onerror=null; this.src='${pageContext.request.contextPath}/resources/image/profileDefault.png';">
													<%-- <img class="process-profile-img"
														src="${pageContext.request.contextPath}/resources/image/profileDefault.png"> --%>
													<div class="process-profile-info">
														<h4>${hdrApr.emp.empName}</h4>
														<p>${hdrApr.deptName}</p>
													</div>
												</div>
												<!-- <div class="mini-mini-line"></div> -->
												<div class="holidayTypeContent">
												<p class="accept-label holiday-type">${hdrApr.hdrApr.hdName}</p>
												<p class="holiday-period">
													<fmt:formatDate value="${hdrApr.hdrApr.hdrStartDate}"
														pattern="yyyy-MM-dd" />
													~
													<fmt:formatDate value="${hdrApr.hdrApr.hdrEndDate}"
														pattern="yyyy-MM-dd" />
												</p>
												<div class="holiday-time">${hdrApr.hdrApr.hdrUsedDay}&nbsp;일</div>
												</div>
												<div class="holidayReasonContent">
												<p class="accept-label">사유</p>
												<div class="holiday-reason">${hdrApr.hdrApr.hdrContent}</div>
												</div>
												<!-- <div class="holiday-file">
													<p class="accept-label">파일</p>
													<a class="choiced-file">선택된 파일 없음</a>
												</div> -->
											</div>
											<div class="modal-footer">
												<button class="requestReject button-medium reject"
													data-empid="${hdrApr.emp.empId}"
													data-hdrid="${hdrApr.hdrApr.hdrId}"
													data-hdcategory="${hdrApr.hdrApr.hdCategory}">반려</button>
												<button class="requestAccept button-medium accept"
													data-empid="${hdrApr.emp.empId}"
													data-hdrid="${hdrApr.hdrApr.hdrId}"
													data-hdcategory="${hdrApr.hdrApr.hdCategory}">승인</button>
											</div>
										</div>
									</div>
								</div>
							</div>

						</c:forEach>
					</tbody>
				</table>
				<%-- </c:if> --%>
				<%-- <nav class="mt-3 mb-3">
					<ul class="pagination justify-content-center">
						<li class="page-item disabled"><a class="page-link text-dark"
							href="#" tabindex="-1" aria-disabled="true"><img
								class="arrow-left"
								src="${pageContext.request.contextPath}/resources/image/arrow/page-left-arrow.svg"></a>
						</li>
						<li class="page-item"><a
							class="page-link text-dark page-border-none ms-5" href="#">1</a></li>
						<li class="page-item"><a
							class="page-link text-dark page-border-none ms-1" href="#">2</a></li>
						<li class="page-item"><a
							class="page-link text-dark page-border-none ms-1" href="#">3</a></li>
						<li class="page-item"><a
							class="page-link text-dark page-border-none ms-1" href="#">4</a></li>
						<li class="page-item"><a
							class="page-link text-dark page-border-none ms-1 me-5" href="#">5</a></li>
						<li class="page-item"><a class="page-link text-dark" href="#"><img
								class="arrow-right"
								src="${pageContext.request.contextPath}/resources/image/arrow/page-right-arrow.svg"></a>
						</li>
					</ul>
				</nav> --%>

				<div class="pagination">
				<c:choose>
					<c:when test="${pager.totalRows > 0}">
						<c:if test="${pager.groupNo>1}">
							<a href="process?pageNo=${pager.startPageNo-1}"> 
								<img src="${pageContext.request.contextPath}/resources/image/prev_icon.png" alt="prev" style="width: 110px">
							</a>
						</c:if>
						<c:forEach begin="${pager.startPageNo}" end="${pager.endPageNo}" step="1" var="i">
							<c:if test="${pager.pageNo==i}">
								<button class="page-num active"
									onclick="location.href='${pageContext.request.contextPath}/holiday/process?pageNo=${i}'"
									style="color: #686868">${i}</button>
							</c:if>
							<c:if test="${pager.pageNo!=i}">
								<button class="page-num"
									onclick="location.href='${pageContext.request.contextPath}/holiday/process?pageNo=${i}'">
									${i}</button>
							</c:if>
						</c:forEach>
						<c:if test="${pager.groupNo<pager.totalGroupNo}">
							<a href="process?pageNo=${pager.endPageNo+1}">
								<img src="${pageContext.request.contextPath}/resources/image/next_icon.png" alt="next" style="width: 110px">
							</a>
						</c:if>
					</c:when>
					<c:otherwise>
						<!-- <i class="bi bi-exclamation-circle"></i> -->
						<div class="holidayList">휴가 신청 내역이 없습니다.</div>
					</c:otherwise>
				</c:choose>
			</div>

			</div>
		</div>
	</div>
	<button type="button" class="btn btn-primary" data-bs-toggle="modal"
		data-bs-target="#exampleModal" style="display: none"></button>


	<script
		src="${pageContext.request.contextPath}/resources/js/holiday/holidayProcess.js"></script>
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>