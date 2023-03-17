<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<link
	href='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/fullcalendar.min.css'
	rel='stylesheet' />
<link
	href='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/fullcalendar.print.css'
	rel='stylesheet' media='print' />
<link rel="stylesheet" href="resources/css/myPage/myPage.css" />
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script
	src='https://fullcalendar.io/releases/fullcalendar/3.9.0/lib/moment.min.js'></script>
<script
	src='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/fullcalendar.min.js'></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- Background Pictures -->
	<div class="myPage__bg-2"
		style="float: right; position: absolute; top: 400px; left: 57%;">
		<img src="resources/files/backgroundImg/soccer1.png">
	</div>
	<div class="myPage__bg-4"
		style="float: right; position: absolute; top: 50px; left: 1%;">
		<img src="resources/files/backgroundImg/basketball3.png">
	</div>


	<div class="myPage_container">
		<div class="sidebar">
			<div class="side-wrapper">
				<div class="side-menu">
					<a class="sidebar-link trending" href="myPage.info.go"
						style="text-decoration: none; color: black;"> <svg viewBox="0 0 24 24"
							fill="currentColor">
      <path fill-rule="evenodd" clip-rule="evenodd"
								d="M10.835 12.007l.002.354c.012 1.404.096 2.657.242 3.451 0 .015.16.802.261 1.064.16.38.447.701.809.905a2 2 0 00.91.219c.249-.012.66-.137.954-.242l.244-.094c1.617-.642 4.707-2.74 5.891-4.024l.087-.09.39-.42c.245-.322.375-.715.375-1.138 0-.379-.116-.758-.347-1.064-.07-.099-.18-.226-.28-.334l-.379-.397c-1.305-1.321-4.129-3.175-5.593-3.79 0-.013-.91-.393-1.343-.407h-.057c-.665 0-1.286.379-1.603.991-.087.168-.17.496-.233.784l-.114.544c-.13.874-.216 2.216-.216 3.688zm-6.332-1.525C3.673 10.482 3 11.162 3 12a1.51 1.51 0 001.503 1.518l3.7-.328c.65 0 1.179-.532 1.179-1.19 0-.658-.528-1.191-1.18-1.191l-3.699-.327z" />
     </svg> 내 정보 보기
					</a> <a class="sidebar-link"
						href="myPage.myPost.go?post_member=${sessionScope.loginAccount.member_id}"
						style="text-decoration: none; color: black;"> <svg viewBox="0 0 24 24"
							fill="currentColor">
      <path fill-rule="evenodd" clip-rule="evenodd"
								d="M12.1535 16.64L14.995 13.77C15.2822 13.47 15.2822 13 14.9851 12.71C14.698 12.42 14.2327 12.42 13.9455 12.71L12.3713 14.31V9.49C12.3713 9.07 12.0446 8.74 11.6386 8.74C11.2327 8.74 10.896 9.07 10.896 9.49V14.31L9.32178 12.71C9.03465 12.42 8.56931 12.42 8.28218 12.71C7.99505 13 7.99505 13.47 8.28218 13.77L11.1139 16.64C11.1832 16.71 11.2624 16.76 11.3515 16.8C11.4406 16.84 11.5396 16.86 11.6386 16.86C11.7376 16.86 11.8267 16.84 11.9158 16.8C12.005 16.76 12.0842 16.71 12.1535 16.64ZM19.3282 9.02561C19.5609 9.02292 19.8143 9.02 20.0446 9.02C20.302 9.02 20.5 9.22 20.5 9.47V17.51C20.5 19.99 18.5 22 16.0446 22H8.17327C5.58911 22 3.5 19.89 3.5 17.29V6.51C3.5 4.03 5.4901 2 7.96535 2H13.2525C13.5 2 13.7079 2.21 13.7079 2.46V5.68C13.7079 7.51 15.1931 9.01 17.0149 9.02C17.4333 9.02 17.8077 9.02318 18.1346 9.02595C18.3878 9.02809 18.6125 9.03 18.8069 9.03C18.9479 9.03 19.1306 9.02789 19.3282 9.02561ZM19.6045 7.5661C18.7916 7.5691 17.8322 7.5661 17.1421 7.5591C16.047 7.5591 15.145 6.6481 15.145 5.5421V2.9061C15.145 2.4751 15.6629 2.2611 15.9579 2.5721C16.7203 3.37199 17.8873 4.5978 18.8738 5.63395C19.2735 6.05379 19.6436 6.44249 19.945 6.7591C20.2342 7.0621 20.0223 7.5651 19.6045 7.5661Z" />
     </svg> 내 글 보기
					</a> <a class="sidebar-link" href="myPage.pointInfo.go"
						style="text-decoration: none; color: black;"> <svg viewBox="0 0 24 24"
							fill="currentColor">
      <path
								d="M11.23 7.29V3.283c0-.427.34-.782.77-.782.385 0 .711.298.763.677l.007.104v4.01h4.78c2.38 0 4.335 1.949 4.445 4.38l.005.215v5.04c0 2.447-1.887 4.456-4.232 4.569l-.208.005H6.44c-2.38 0-4.326-1.94-4.435-4.379L2 16.905v-5.03c0-2.447 1.878-4.466 4.222-4.58l.208-.004h4.8v6.402l-1.6-1.652a.755.755 0 00-1.09 0 .81.81 0 00-.22.568c0 .157.045.32.14.459l.08.099 2.91 3.015c.14.155.34.237.55.237a.735.735 0 00.465-.166l.075-.071 2.91-3.015c.3-.31.3-.816 0-1.126a.755.755 0 00-1.004-.077l-.086.077-1.59 1.652V7.291h-1.54z" />
     </svg> 포인트 보기
					</a>
				</div>
			</div>
		</div>
		<div class="main-container">
			<div class="modify-container">
				<div align="center" class="myPage_title">회원정보</div>
				<br> <br>
				<div class="input-container">
					<b class="mypage_name">ID</b> <b class="text">${sessionScope.loginAccount.member_id }</b><br>
					<br>
				</div>
				<div class="input-container">
					<b class="mypage_name">닉네임</b> <b class="text">${sessionScope.loginAccount.member_nick }</b><br>
					<br>
				</div>
				<div class="input-container">
					<b class="mypage_name">가입일자</b> <b class="text"> <fmt:formatDate
							value="${sessionScope.loginAccount.member_reg_date }"
							pattern="yyyy-MM-dd" />
					</b><br> <br>
				</div>
				<div class="input-container">
					<b class="mypage_name">이메일</b> <b class="text">${sessionScope.loginAccount.member_email }</b><br>
					<br>
				</div>
				<div class="input-container">
					<b class="mypage_name">자기소개</b> <b class="text">${sessionScope.loginAccount.member_intro }</b><br>
					<br>
				</div>
				<div class="button-container">
					<button class="emailBtn2"
						onclick="location.href='account.update.go'">내 정보 수정하기</button>
					<button class="emailBtn2" onclick="bye();" type="button">탈퇴문의</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>