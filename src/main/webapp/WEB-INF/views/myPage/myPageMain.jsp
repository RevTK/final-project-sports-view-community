<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/myPage/myPage.css" />
</head>
<body>
	<div class="container">
		<div class="sidebar">
			<span class="logo">S</span> <a class="logo-expand" href="#">skateboard</a>
			<div class="side-wrapper">
				<div class="side-title">MENU</div>
				<div class="side-menu">
					<a class="sidebar-link discover is-active" href="#"> <svg
							viewBox="0 0 24 24" fill="currentColor">
      <path
								d="M9.135 20.773v-3.057c0-.78.637-1.414 1.423-1.414h2.875c.377 0 .74.15 1.006.414.267.265.417.625.417 1v3.057c-.002.325.126.637.356.867.23.23.544.36.87.36h1.962a3.46 3.46 0 002.443-1 3.41 3.41 0 001.013-2.422V9.867c0-.735-.328-1.431-.895-1.902l-6.671-5.29a3.097 3.097 0 00-3.949.072L3.467 7.965A2.474 2.474 0 002.5 9.867v8.702C2.5 20.464 4.047 22 5.956 22h1.916c.68 0 1.231-.544 1.236-1.218l.027-.009z" />
     </svg> ${sessionScope.loginAccount.member_nick } <br>마이페이지
					</a> <a class="sidebar-link trending" href="myPage.info.go"> <svg
							viewBox="0 0 24 24" fill="currentColor">
      <path fill-rule="evenodd" clip-rule="evenodd"
								d="M10.835 12.007l.002.354c.012 1.404.096 2.657.242 3.451 0 .015.16.802.261 1.064.16.38.447.701.809.905a2 2 0 00.91.219c.249-.012.66-.137.954-.242l.244-.094c1.617-.642 4.707-2.74 5.891-4.024l.087-.09.39-.42c.245-.322.375-.715.375-1.138 0-.379-.116-.758-.347-1.064-.07-.099-.18-.226-.28-.334l-.379-.397c-1.305-1.321-4.129-3.175-5.593-3.79 0-.013-.91-.393-1.343-.407h-.057c-.665 0-1.286.379-1.603.991-.087.168-.17.496-.233.784l-.114.544c-.13.874-.216 2.216-.216 3.688zm-6.332-1.525C3.673 10.482 3 11.162 3 12a1.51 1.51 0 001.503 1.518l3.7-.328c.65 0 1.179-.532 1.179-1.19 0-.658-.528-1.191-1.18-1.191l-3.699-.327z" />
     </svg> 내 정보 보기
					</a> <a class="sidebar-link" href="myPage.pointInfo.go"> <svg
							viewBox="0 0 24 24" fill="currentColor">
      <path
								d="M11.23 7.29V3.283c0-.427.34-.782.77-.782.385 0 .711.298.763.677l.007.104v4.01h4.78c2.38 0 4.335 1.949 4.445 4.38l.005.215v5.04c0 2.447-1.887 4.456-4.232 4.569l-.208.005H6.44c-2.38 0-4.326-1.94-4.435-4.379L2 16.905v-5.03c0-2.447 1.878-4.466 4.222-4.58l.208-.004h4.8v6.402l-1.6-1.652a.755.755 0 00-1.09 0 .81.81 0 00-.22.568c0 .157.045.32.14.459l.08.099 2.91 3.015c.14.155.34.237.55.237a.735.735 0 00.465-.166l.075-.071 2.91-3.015c.3-.31.3-.816 0-1.126a.755.755 0 00-1.004-.077l-.086.077-1.59 1.652V7.291h-1.54z" />
     </svg> 포인트 보기
					</a> <a class="sidebar-link" href="myPage.myPost.go"> <svg
							viewBox="0 0 24 24" fill="currentColor">
      <path fill-rule="evenodd" clip-rule="evenodd"
								d="M12.1535 16.64L14.995 13.77C15.2822 13.47 15.2822 13 14.9851 12.71C14.698 12.42 14.2327 12.42 13.9455 12.71L12.3713 14.31V9.49C12.3713 9.07 12.0446 8.74 11.6386 8.74C11.2327 8.74 10.896 9.07 10.896 9.49V14.31L9.32178 12.71C9.03465 12.42 8.56931 12.42 8.28218 12.71C7.99505 13 7.99505 13.47 8.28218 13.77L11.1139 16.64C11.1832 16.71 11.2624 16.76 11.3515 16.8C11.4406 16.84 11.5396 16.86 11.6386 16.86C11.7376 16.86 11.8267 16.84 11.9158 16.8C12.005 16.76 12.0842 16.71 12.1535 16.64ZM19.3282 9.02561C19.5609 9.02292 19.8143 9.02 20.0446 9.02C20.302 9.02 20.5 9.22 20.5 9.47V17.51C20.5 19.99 18.5 22 16.0446 22H8.17327C5.58911 22 3.5 19.89 3.5 17.29V6.51C3.5 4.03 5.4901 2 7.96535 2H13.2525C13.5 2 13.7079 2.21 13.7079 2.46V5.68C13.7079 7.51 15.1931 9.01 17.0149 9.02C17.4333 9.02 17.8077 9.02318 18.1346 9.02595C18.3878 9.02809 18.6125 9.03 18.8069 9.03C18.9479 9.03 19.1306 9.02789 19.3282 9.02561ZM19.6045 7.5661C18.7916 7.5691 17.8322 7.5661 17.1421 7.5591C16.047 7.5591 15.145 6.6481 15.145 5.5421V2.9061C15.145 2.4751 15.6629 2.2611 15.9579 2.5721C16.7203 3.37199 17.8873 4.5978 18.8738 5.63395C19.2735 6.05379 19.6436 6.44249 19.945 6.7591C20.2342 7.0621 20.0223 7.5651 19.6045 7.5661Z" />
     </svg> 내 글 목록 보기
					</a> <a class="sidebar-link" href="myPage.service.go"> <svg
							viewBox="0 0 24 24" fill="currentColor">
      <path fill-rule="evenodd" clip-rule="evenodd"
								d="M17.769 8.382H22C22 4.985 19.964 3 16.516 3H7.484C4.036 3 2 4.985 2 8.338v7.324C2 19.015 4.036 21 7.484 21h9.032C19.964 21 22 19.015 22 15.662v-.313h-4.231c-1.964 0-3.556-1.552-3.556-3.466 0-1.915 1.592-3.467 3.556-3.467v-.034zm0 1.49h3.484c.413 0 .747.326.747.728v2.531a.746.746 0 01-.747.728H17.85c-.994.013-1.864-.65-2.089-1.595a1.982 1.982 0 01.433-1.652 2.091 2.091 0 011.576-.74zm.151 2.661h.329a.755.755 0 00.764-.745.755.755 0 00-.764-.746h-.329a.766.766 0 00-.54.213.727.727 0 00-.224.524c0 .413.34.75.764.754zM6.738 8.382h5.644a.755.755 0 00.765-.746.755.755 0 00-.765-.745H6.738a.755.755 0 00-.765.737c0 .413.341.75.765.754z" />
     </svg> 고객센터
					</a> <a class="sidebar-link" href="message.go"> <svg
							viewBox="0 0 24 24" fill="currentColor">
      <path fill-rule="evenodd" clip-rule="evenodd"
								d="M17.769 8.382H22C22 4.985 19.964 3 16.516 3H7.484C4.036 3 2 4.985 2 8.338v7.324C2 19.015 4.036 21 7.484 21h9.032C19.964 21 22 19.015 22 15.662v-.313h-4.231c-1.964 0-3.556-1.552-3.556-3.466 0-1.915 1.592-3.467 3.556-3.467v-.034zm0 1.49h3.484c.413 0 .747.326.747.728v2.531a.746.746 0 01-.747.728H17.85c-.994.013-1.864-.65-2.089-1.595a1.982 1.982 0 01.433-1.652 2.091 2.091 0 011.576-.74zm.151 2.661h.329a.755.755 0 00.764-.745.755.755 0 00-.764-.746h-.329a.766.766 0 00-.54.213.727.727 0 00-.224.524c0 .413.34.75.764.754zM6.738 8.382h5.644a.755.755 0 00.765-.746.755.755 0 00-.765-.745H6.738a.755.755 0 00-.765.737c0 .413.341.75.765.754z" />
     </svg> 쪽지
					</a>
				</div>
			</div>
		</div>
		<div class="wrapper">
			<div class="myPage-header">
				<div class="search-bar">
					<input type="text" placeholder="Search">
				</div>
				<div class="user-settings">
					<img class="user-img"
						src="https://w.namu.la/s/38cf17d29ddeab5a69f6de682176bbd6b8f71285f5adc1d5465c910f8d7651e8f82db2bdba9e25f1d29affdedb9ddc04edeadc4e7f539ce975eaad093a2b8c68722d00fcec74cd40a24b6f0f66ab5e1d7f534e357c012bfcbc8c0f09286b2623"
						alt="">
					<div class="user-name">${sessionScope.loginAccount.member_id }</div>
					<svg viewBox="0 0 492 492" fill="currentColor">
     <path
							d="M484.13 124.99l-16.11-16.23a26.72 26.72 0 00-19.04-7.86c-7.2 0-13.96 2.79-19.03 7.86L246.1 292.6 62.06 108.55c-5.07-5.06-11.82-7.85-19.03-7.85s-13.97 2.79-19.04 7.85L7.87 124.68a26.94 26.94 0 000 38.06l219.14 219.93c5.06 5.06 11.81 8.63 19.08 8.63h.09c7.2 0 13.96-3.57 19.02-8.63l218.93-219.33A27.18 27.18 0 00492 144.1c0-7.2-2.8-14.06-7.87-19.12z"></path>
    </svg>
					<div class="notify">
						<div class="notification"></div>
						<svg viewBox="0 0 24 24" fill="currentColor">
      <path fill-rule="evenodd" clip-rule="evenodd"
								d="M18.707 8.796c0 1.256.332 1.997 1.063 2.85.553.628.73 1.435.73 2.31 0 .874-.287 1.704-.863 2.378a4.537 4.537 0 01-2.9 1.413c-1.571.134-3.143.247-4.736.247-1.595 0-3.166-.068-4.737-.247a4.532 4.532 0 01-2.9-1.413 3.616 3.616 0 01-.864-2.378c0-.875.178-1.682.73-2.31.754-.854 1.064-1.594 1.064-2.85V8.37c0-1.682.42-2.781 1.283-3.858C7.861 2.942 9.919 2 11.956 2h.09c2.08 0 4.204.987 5.466 2.625.82 1.054 1.195 2.108 1.195 3.745v.426zM9.074 20.061c0-.504.462-.734.89-.833.5-.106 3.545-.106 4.045 0 .428.099.89.33.89.833-.025.48-.306.904-.695 1.174a3.635 3.635 0 01-1.713.731 3.795 3.795 0 01-1.008 0 3.618 3.618 0 01-1.714-.732c-.39-.269-.67-.694-.695-1.173z" />
     </svg>
					</div>
				</div>
			</div>
			<div class="main-container">
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<div></div>
				<div class="main-blogs">
					<div class="main-blog anim" style="-delay: .1s">
						<div class="main-blog__title">경기장 뷰</div>
						<div class="main-blog__author">
							<div class="author-img__wrapper">
								<svg viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="3" stroke-linecap="round" stroke-linejoin="round"
									class="feather feather-check">
        <path d="M20 6L9 17l-5-5" />
       </svg>
							</div>
						</div>
					</div>
					<div class="main-blog anim" style="-delay: .2s">
						<div class="main-blog__title">팬 커뮤</div>
						<div class="main-blog__author tips">
							<div class="author-img__wrapper">
								<svg viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="3" stroke-linecap="round" stroke-linejoin="round"
									class="feather feather-check">
        <path d="M20 6L9 17l-5-5" />
       </svg>
							</div>
						</div>
					</div>
				</div>
				<div class="small-header anim" style="-delay: .3s"></div>
				<div class="videos">
					<div class="video anim" style="-delay: .4s">
						<div class="video-time">8 min</div>
						<div class="video-wrapper">
							<video muted="">
								<source
									src="https://player.vimeo.com/external/436572488.sd.mp4?s=eae5fb490e214deb9ff532dd98d101efe94e7a8b&profile_id=139&oauth2_token_id=57447761"
									type="video/mp4">
							</video>
							<div class="author-img__wrapper video-author">
								<svg viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="3" stroke-linecap="round" stroke-linejoin="round"
									class="feather feather-check">
        <path d="M20 6L9 17l-5-5" />
       </svg>
								<img class="author-img"
									src="data:image/jpeg;base64,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" />
							</div>
						</div>
						<div class="video-by">홍길동</div>
						<div class="video-name">Basic how to ride your skateboard
							comfortly</div>
						<div class="video-view">
							54K views<span class="seperate video-seperate"></span>1 week ago
						</div>
					</div>
					<div class="video anim" style="-delay: .5s">
						<div class="video-time">5 min</div>
						<div class="video-wrapper">
							<video muted="">
								<source
									src="https://player.vimeo.com/external/449972745.sd.mp4?s=9943177fe8a6147b7bc4598259401f06ec57878a&profile_id=139&oauth2_token_id=57447761"
									type="video/mp4">
							</video>
							<div class="author-img__wrapper video-author">
								<svg viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="3" stroke-linecap="round" stroke-linejoin="round"
									class="feather feather-check">
        <path d="M20 6L9 17l-5-5" />
       </svg>
								<img class="author-img"
									src="data:image/jpeg;base64,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" />
							</div>
						</div>
						<div class="video-by offline">정권</div>
						<div class="video-name">Prepare for your first skateboard
							jump</div>
						<div class="video-view">
							42K views<span class="seperate video-seperate"></span>1 week ago
						</div>
					</div>
					<div class="video anim" style="-delay: .6s">
						<div class="video-time">7 min</div>
						<div class="video-wrapper">
							<video muted="">
								<source
									src="https://player.vimeo.com/external/436553499.sd.mp4?s=0e44527f269278743db448761e35c5e39cfaa52c&profile_id=139&oauth2_token_id=57447761"
									type="video/mp4">
							</video>
							<div class="author-img__wrapper video-author">
								<svg viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="3" stroke-linecap="round" stroke-linejoin="round"
									class="feather feather-check">
        <path d="M20 6L9 17l-5-5" />
       </svg>
								<img class="author-img"
									src="data:image/jpeg;base64,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" />
							</div>
						</div>
						<div class="video-by offline">임형규</div>
						<div class="video-name">Basic equipment to play skateboard
							safely</div>
						<div class="video-view">
							64K views<span class="seperate video-seperate"></span>2 week ago
						</div>
					</div>
					<div class="video anim" style="-delay: .7s">
						<div class="video-time">6 min</div>
						<div class="video-wrapper">
							<video muted="">
								<source
									src="https://player.vimeo.com/external/361861493.sd.mp4?s=19d8275ca755d653042a87ef28b2f0b2eabf57d0&profile_id=139&oauth2_token_id=57447761"
									type="video/mp4">
							</video>
							<div class="author-img__wrapper video-author">
								<svg viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="3" stroke-linecap="round" stroke-linejoin="round"
									class="feather feather-check">
        <path d="M20 6L9 17l-5-5" />
       </svg>
								<img class="author-img"
									src="data:image/jpeg;base64,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" />
							</div>
						</div>
						<div class="video-by">송준우</div>
						<div class="video-name">Tips to playing skateboard on the
							ramp</div>
						<div class="video-view">
							50K views<span class="seperate video-seperate"></span>1 week ago
						</div>
					</div>
				</div>
				<div class="stream-area">
					<div class="video-stream">
						<video id="my_video_1" class="video-js vjs-default-skin anim"
							width="640px" height="267px" controls preload="none"
							poster='https://images.unsplash.com/photo-1476801071117-fbc157ae3f01?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDh8fHxlbnwwfHx8&w=1000&q=80'
							data-setup='{ "aspectRatio":"940:620", "playbackRates": [1, 1.5, 2] }'>
							<source
								src="https://player.vimeo.com/external/390402719.sd.mp4?s=20cfdb066c4253047562b65bd4e411b86a004bc5&profile_id=139&oauth2_token_id=57447761"
								type='video/mp4' />
							<source
								src="https://player.vimeo.com/external/390402719.sd.mp4?s=20cfdb066c4253047562b65bd4e411b86a004bc5&profile_id=139&oauth2_token_id=57447761"
								type='video/webm' />
						</video>
						<div class="video-detail">
							<div class="video-content">
								<div class="video-p-wrapper anim" style="-delay: .1s">
									<div class="author-img__wrapper video-author video-p">
										<svg viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="3" stroke-linecap="round"
											stroke-linejoin="round" class="feather feather-check">
          <path d="M20 6L9 17l-5-5" />
         </svg>
										<img class="author-img"
											src="https://images.pexels.com/photos/1680172/pexels-photo-1680172.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500" />
									</div>
									<div class="video-p-detail">
										<div class="video-p-name">Andy William</div>
										<div class="video-p-sub">1,980,893 subscribers</div>
									</div>
									<div class="button-wrapper">
										<button class="like">
											<svg viewBox="0 0 24 24" fill="currentColor"
												xmlns="http://www.w3.org/2000/svg">
           <path
													d="M21.435 2.582a1.933 1.933 0 00-1.93-.503L3.408 6.759a1.92 1.92 0 00-1.384 1.522c-.142.75.355 1.704 1.003 2.102l5.033 3.094a1.304 1.304 0 001.61-.194l5.763-5.799a.734.734 0 011.06 0c.29.292.29.765 0 1.067l-5.773 5.8c-.428.43-.508 1.1-.193 1.62l3.075 5.083c.36.604.98.946 1.66.946.08 0 .17 0 .251-.01.78-.1 1.4-.634 1.63-1.39l4.773-16.075c.21-.685.02-1.43-.48-1.943z" />
          </svg>
											Share
										</button>
										<button class="like red">
											<svg viewBox="0 0 24 24" fill="currentColor"
												xmlns="http://www.w3.org/2000/svg">
           <path fill-rule="evenodd" clip-rule="evenodd"
													d="M15.85 2.5c.63 0 1.26.09 1.86.29 3.69 1.2 5.02 5.25 3.91 8.79a12.728 12.728 0 01-3.01 4.81 38.456 38.456 0 01-6.33 4.96l-.25.15-.26-.16a38.093 38.093 0 01-6.37-4.96 12.933 12.933 0 01-3.01-4.8c-1.13-3.54.2-7.59 3.93-8.81.29-.1.59-.17.89-.21h.12c.28-.04.56-.06.84-.06h.11c.63.02 1.24.13 1.83.33h.06c.04.02.07.04.09.06.22.07.43.15.63.26l.38.17c.092.05.195.125.284.19.056.04.107.077.146.1l.05.03c.085.05.175.102.25.16a6.263 6.263 0 013.85-1.3zm2.66 7.2c.41-.01.76-.34.79-.76v-.12a3.3 3.3 0 00-2.11-3.16.8.8 0 00-1.01.5c-.14.42.08.88.5 1.03.64.24 1.07.87 1.07 1.57v.03a.86.86 0 00.19.62c.14.17.35.27.57.29z" />
          </svg>
											Liked
										</button>
									</div>
								</div>
								<div class="video-p-title anim" style="-delay: .2s">Basic
									how to ride your Skateboard</div>
								<div class="video-p-subtitle anim" style="-delay: .3s">Lorem
									ipsum dolor sit amet consectetur adipisicing elit. Repellendus
									illum tempora consequuntur. Lorem ipsum dolor sit amet
									consectetur adipisicing elit. Debitis earum velit accusantium
									maiores qui sit quas, laborum voluptatibus vero quidem tempore
									facilis voluptate tempora deserunt!</div>
								<div class="video-p-subtitle anim" style="-delay: .4s">Lorem
									ipsum dolor sit amet consectetur adipisicing elit. Temporibus
									laborum qui dolorum fugiat eius accusantium repellendus illum
									tempora consequuntur. Lorem ipsum dolor, sit amet consectetur
									adipisicing elit.</div>
							</div>
						</div>
					</div>
					<div class="chat-stream">
						<div class="chat">
							<div class="chat-header anim">
								Live Chat<span><svg viewBox="0 0 24 24"
										fill="currentColor" xmlns="http://www.w3.org/2000/svg">
         <path fill-rule="evenodd" clip-rule="evenodd"
											d="M14.212 7.762c0 2.644-2.163 4.763-4.863 4.763-2.698 0-4.863-2.119-4.863-4.763C4.486 5.12 6.651 3 9.35 3c2.7 0 4.863 2.119 4.863 4.762zM2 17.917c0-2.447 3.386-3.06 7.35-3.06 3.985 0 7.349.634 7.349 3.083 0 2.448-3.386 3.06-7.35 3.06C5.364 21 2 20.367 2 17.917zM16.173 7.85a6.368 6.368 0 01-1.137 3.646c-.075.107-.008.252.123.275.182.03.369.048.56.052 1.898.048 3.601-1.148 4.072-2.95.697-2.675-1.35-5.077-3.957-5.077a4.16 4.16 0 00-.818.082c-.036.008-.075.025-.095.055-.025.04-.007.09.019.124a6.414 6.414 0 011.233 3.793zm3.144 5.853c1.276.245 2.115.742 2.462 1.467a2.107 2.107 0 010 1.878c-.531 1.123-2.245 1.485-2.912 1.578a.207.207 0 01-.234-.232c.34-3.113-2.367-4.588-3.067-4.927-.03-.017-.036-.04-.034-.055.002-.01.015-.025.038-.028 1.515-.028 3.145.176 3.747.32z" />
        </svg> 15,988 people </span>
							</div>
							<div class="message-container">
								<div class="message anim" style="-delay: .1s">
									<div class="author-img__wrapper video-author video-p">
										<svg viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="3" stroke-linecap="round"
											stroke-linejoin="round" class="feather feather-check">
          <path d="M20 6L9 17l-5-5" />
         </svg>
										<img class="author-img"
											src="https://images.unsplash.com/photo-1560941001-d4b52ad00ecc?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80" />
									</div>
									<div class="msg-wrapper">
										<div class="msg__name video-p-name">Wijaya Adabi</div>
										<div class="msg__content video-p-sub">Lorem ipsum clor
											sit, ame conse quae debitis</div>
									</div>
								</div>
								<div class="message anim" style="-delay: .2s">
									<div class="author-img__wrapper video-author video-p">
										<svg viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="3" stroke-linecap="round"
											stroke-linejoin="round" class="feather feather-check">
          <path d="M20 6L9 17l-5-5" />
         </svg>
										<img class="author-img"
											src="https://images.pexels.com/photos/2889942/pexels-photo-2889942.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500" />
									</div>
									<div class="msg-wrapper">
										<div class="msg__name video-p-name offline">Johny Wise</div>
										<div class="msg__content video-p-sub">Suscipit eos atque
											voluptates labore</div>
									</div>
								</div>
								<div class="message anim" style="-delay: .3s">
									<div class="author-img__wrapper video-author video-p">
										<svg viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="3" stroke-linecap="round"
											stroke-linejoin="round" class="feather feather-check">
          <path d="M20 6L9 17l-5-5" />
         </svg>
										<img class="author-img"
											src="https://images.unsplash.com/photo-1496345875659-11f7dd282d1d?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mzl8fG1lbnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60" />
									</div>
									<div class="msg-wrapper">
										<div class="msg__name video-p-name offline">Budi Hakim</div>
										<div class="msg__content video-p-sub">Dicta quidem sunt
											adipisci</div>
									</div>
								</div>
								<div class="message anim" style="-delay: .4s">
									<div class="author-img__wrapper video-author video-p">
										<svg viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="3" stroke-linecap="round"
											stroke-linejoin="round" class="feather feather-check">
          <path d="M20 6L9 17l-5-5" />
         </svg>
										<img class="author-img"
											src="https://images.pexels.com/photos/1870163/pexels-photo-1870163.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500" />
									</div>
									<div class="msg-wrapper">
										<div class="msg__name video-p-name">Thomas Hope</div>
										<div class="msg__content video-p-sub">recusandae
											doloremque aperiam alias molestias</div>
									</div>
								</div>
								<div class="message anim" style="-delay: .5s">
									<div class="author-img__wrapper video-author video-p">
										<svg viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="3" stroke-linecap="round"
											stroke-linejoin="round" class="feather feather-check">
          <path d="M20 6L9 17l-5-5" />
         </svg>
										<img class="author-img"
											src="https://images.pexels.com/photos/1680172/pexels-photo-1680172.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500" />
									</div>
									<div class="msg-wrapper">
										<div class="msg__name video-p-name">Gerard Will</div>
										<div class="msg__content video-p-sub">Dicta quidem sunt
											adipisci</div>
									</div>
								</div>
								<div class="message anim" style="-delay: .6s">
									<div class="author-img__wrapper video-author video-p">
										<svg viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="3" stroke-linecap="round"
											stroke-linejoin="round" class="feather feather-check">
          <path d="M20 6L9 17l-5-5" />
         </svg>
										<img class="author-img"
											src="https://images.pexels.com/photos/2889942/pexels-photo-2889942.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500" />
									</div>
									<div class="msg-wrapper">
										<div class="msg__name video-p-name offline">Johny Wise</div>
										<div class="msg__content video-p-sub">recusandae
											doloremque aperiam alias molestias</div>
									</div>
								</div>
							</div>
							<div class="chat-footer anim" style="-delay: .1s">
								<input type="text" placeholder="Write your message">
							</div>
						</div>
						<div class="chat-vid__container">
							<div class="chat-vid__title anim" style="-delay: .3s">Related
								Videos</div>
							<div class="chat-vid anim" style="-delay: .4s">
								<div class="chat-vid__wrapper">
									<img class="chat-vid__img"
										src="https://cdn.nohat.cc/thumb/f/720/3b55eddcfffa4e87897d.jpg" />
									<div class="chat-vid__content">
										<div class="chat-vid__name">Prepare for your first
											skateboard jump</div>
										<div class="chat-vid__by">Jordan Wise</div>
										<div class="chat-vid__info">
											125.908 views <span class="seperate"></span>2 days ago
										</div>
									</div>
								</div>
							</div>
							<div class="chat-vid anim" style="-delay: .5s">
								<div class="chat-vid__wrapper">
									<img class="chat-vid__img"
										src="https://iamaround.it/wp-content/uploads/2015/02/pexels-photo-4663818.jpeg" />
									<div class="chat-vid__content">
										<div class="chat-vid__name">Prepare for your first
											skateboard jump</div>
										<div class="chat-vid__by">Jordan Wise</div>
										<div class="chat-vid__info">
											125.908 views <span class="seperate"></span>2 days ago
										</div>
									</div>
								</div>
							</div>
							<div class="chat-vid__button anim" style="-delay: .6s">See
								All related videos (32)</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>