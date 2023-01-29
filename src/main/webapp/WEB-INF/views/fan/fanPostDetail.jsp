<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/fan/fan.css">
</head>

<body>
	<br>
	<br>
	<br>
	<br>
	<br>

	<main role="main" class="col-md-9 ml-sm-auto col-lg-10 my-3"> <!-- 부트스트랩 클래스명이라 main은 남겨야 할듯 -->
	<div class="container-field">
		<div class="board-main">
			<!--==================== fan__best 부분 - 종목별 베스트 (각 게시판별로 CRUD별로 존재해야)  ====================-->
			<div class="card-list">
				<!-- 맨위에 fan__best 부분 - 상위글 보여주는 부분 -->
				<div class="card blue" style="cursor: pointer"
					onclick="location.href='fan.board.go?post_board=21'">
					<div class="title">
						<span>야구 게시판</span>
					</div>
					<i class="zmdi zmdi-upload"></i>
					<div class="value">KBO</div>
					<div class="stat">It ain't over till it's over.</div>
				</div>
				<div class="card green" style="cursor: pointer"
					onclick="location.href='fan.board.go?post_board=22'">
					<div class="title">
						<span>축구 게시판</span>
					</div>
					<i class="zmdi zmdi-upload"></i>
					<div class="value">KFA</div>
					<div class="stat">No sweat, no sweet!</div>
				</div>
				<div class="card orange" style="cursor: pointer"
					onclick="location.href='fan.board.go?post_board=23'">
					<div class="title">
						<span>농구 게시판</span>
					</div>
					<i class="zmdi zmdi-download"></i>
					<div class="value">KBL</div>
					<div class="stat">make each day</div>
				</div>
				<div class="card red" style="cursor: pointer"
					onclick="location.href='fan.board.go?post_board=24'">
					<div class="title">
						<span>배구 게시판</span>
					</div>
					<i class="zmdi zmdi-download"></i>
					<div class="value">KOVO</div>
					<div class="stat">Nothing Better</div>
				</div>
			</div>
		</div>
		<!--==================== 상세 ====================-->
		<div class="board__wrapper tableView">
		<div class="board__header">
						<div class="board__cell num">글 번호</div>
						<div class="board__cell category">카테고리</div>
						<div class="board__cell post_title">제목</div>
						<div class="board__cell reg_date">등록일</div>
						<div class="board__cell nick">닉네임</div>
						<div class="board__cell view_count">조회수</div>
					</div>
			<section class="post section">
				<div class="post__container">
					<div class="post__1st-line">
						<div class="post__title">탭:${post.post_category}&nbsp;제목:${post.post_title}</div>
						<!-- 글등록후엔 등록날짜가, 수정후엔 수정날짜가 나오도록-->
						<div class="post__date">
							<c:choose>
								<c:when test="${post.post_update_date eq null }">
						작성날짜:<fmt:formatDate value="${post.post_reg_date}"
										pattern="yy-MM-dd HH:mm" />
								</c:when>
								<c:otherwise>
						수정날짜:<fmt:formatDate value="${post.post_update_date}"
										pattern="yy-MM-dd HH:mm" />
								</c:otherwise>
							</c:choose>
						</div>
					</div>

					<div class="post__2nd-line">
						<div class="post__element">닉네임:${post.member_nick}</div>
						<div class="post__element">NO.:${post.post_id }&nbsp;조회수:${post.post_hit_count }&nbsp;
							추천수:${post.post_like_count}&nbsp;스크랩수:${post.post_scrap_count}</div>
					</div>

					<div class="post__content">${post.post_content}</div>
				</div>


				<div class="post__bot">
					<button class="post__bot-btn" onclick="history.back()">이전으로</button>

					<!-- 로그인하고 자신이 쓴글이면 수정/삭제버튼 나오도록 / 도중 세션만료시 로그인 / 로그인해야 추천할수 있음 -->
					<c:choose>
						<c:when
							test="${sessionScope.loginAccount.member_id eq post.post_member}">
							<c:choose>
								<c:when test="${sessionScope.loginAccount eq null}">
									<button onclick="alert('로그인하세요')">수정</button>
									<button onclick="alert('로그인하세요')">삭제</button>
								</c:when>
								<c:otherwise>
									<button class="post__bot-btn"
										onclick="location.href='fan.update.go?post_id=${post.post_id}&post_member=${post.post_member}'">수정</button>
									<button class="post__bot-btn"
										onclick="deletePost(${post.post_id}, ${post.post_board});">삭제</button>
								</c:otherwise>
							</c:choose>
						</c:when>
						<c:otherwise>
							<c:choose>
								<c:when test="${sessionScope.loginAccount eq null}">
									<button id="LikeBtn" onclick="alert('로그인하세요')">추천</button>
								</c:when>
								<c:otherwise>
									<button id="LikeBtn"
										onclick="likeCheck(${likeCheck}, ${post.post_id}, ${sessionScope.loginAccount.member_id})">추천</button>
								</c:otherwise>
							</c:choose>
						</c:otherwise>
					</c:choose>
				</div>
			</section>


			<!--==================== 댓글 ====================-->
			<section class="reply section">
				<div>
					<c:if test="${sessionScope.loginAccount != null }">
						<input class="reply__token" type="hidden" name="token"
							value="${token }">
						<input class="reply__content-reg" name="reply__content"
							maxlength="80" autocomplete="off" required>
						<button class="reply__reg-btn">쓰기</button>
					</c:if>
				</div>
				<div class="reply__list">
					<c:forEach var="rp" items="${post.replies}">
						<div class="reply__div">
							<span class="reply__member">${post.member_nick }</span> <span
								class="reply__date"> <fmt:formatDate
									value="${rp.reply_reg_date }" type="both" dateStyle="short"
									timeStyle="short" />
							</span> <span class="reply__content">${rp.reply_content}</span> <input
								class="reply__id" type="hidden" name="reply_id"
								value="${rp.reply_id}"> <span> <c:if
									test="${rp.reply_member == sessionScope.loginAccount.member_id }">
									<button class="reply__update-btn">수정</button>
									<button class="reply__delete-btn">삭제</button>
								</c:if> <br>
							</span>
						</div>
					</c:forEach>
				</div>
			</section>
		</div>
		</div>
		</main>
		<script>
	$('.reply__reg-btn').click(function() {
		
		let token = $('.reply__token').val();
		let reply_board = ${post.post_board};
		let reply_post = ${post.post_id};
		let reply_content = $('.reply__content-reg').val();
		
		console.log(token);		
		console.log(reply_post);		
		console.log(reply_board);		
		console.log(reply_content);		
		
		$.ajax({
			url : "fanReply.reg.do",
			type : 'post',
			dataType : 'json',
			data : {
				"token" : token,
				"reply_board" : reply_board,
				"reply_post" : reply_post,
				"reply_content" : reply_content
			},

			success : function(data) {
				console.log('통신 성공');
				console.log(data);
				$('.reply__tr').val(data.token); // 새로 받아온 토큰으로 교체해준다
				let result = (data.result)*1; // 결과값을 변환시킨다0
				if(result > 0) {
					$(".reply__div").append("<div>" + reply_content + "</div>");
				} else {
					console.log('댓글 등록 실패');
				}
			},
			error : function(){
			alert('통신 실패');
			}
		});
	});
</script>

		<script>
$('.reply__delete-btn').click(function() {
	
	let reply_id = $('.reply__id').val(); 
	
	console.log(reply_id);	
	
	$.ajax({
		url : "fanReply.delete.do",
		type : 'get',
		dataType : 'json',
		data : {
			"reply_id" : reply_id
		},

		success : function(data) {
			console.log('통신 성공');
			console.log(data);
			if(data > 0) {
				$(".reply__div").detach();
			} else {
				console.log('댓글 등록 실패');
			}
		},
		error : function(){
		alert('통신 실패');
		}
	});
});
</script>
</body>
</html>