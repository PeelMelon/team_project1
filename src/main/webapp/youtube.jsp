<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.PreparedStatement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.SQLException" %>
<%@ page import = "dob.DBManager" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 1. 탭 타이틀 세팅 -->
    <title>집요정 TV</title>
    <!-- 2. favicon(favorite icon) 세팅 -->
    <link rel="shortcut icon" href="./favicon.ico" />
    <link rel="icon" href="./favicon.png" />
    <!-- 3. reset.css 세팅(cdn) -->
    <link href="https://cdn.jsdelivr.net/npm/reset-css@5.0.2/reset.min.css" rel="stylesheet">
    <!-- 4. 커스템 css파일 세팅(local) -->
    <link href="./YouTube/css/main.css" rel="stylesheet">
    <!-- 5. 폰트 설정 -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
    <!-- 6. 아이콘 설정 --> 
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <!-- 7. 오픈 그래프 설정(더 많은 속성을 보고 싶으면 https://ogp.me) -->
    <meta property="og:image" content="https://www.youtube.com/img/desktop/yt_1200.png">
    <meta property="fb:app_id" content="87741124305">
    <meta name="description" content="YouTube에서 마음에 드는 동영상과 음악을 감상하고, 직접 만든 콘텐츠를 업로드하여 친구, 가족뿐 아니라 전 세계 사람들과 콘텐츠를 공유할 수 있습니다.">
    <meta name="keywords" content="동영상, 공유, 카메라폰, 동영상폰, 무료, 올리기">
    <meta name="theme-color" content="rgba(255, 255, 255, 0.98)">
    <!-- 8. 자바 스크립트 설정 -->
    <!-- <script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script> -->
    
    <!-- gsap js -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.21/lodash.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/gsap.min.js" integrity="sha512-IQLehpLoVS4fNzl7IfH8Iowfm5+RiMGtHykgZJl9AWMgqx0AmJ6cRWcB+GaGVtIsnC4voMfm8f2vwtY+6oPjpQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/ScrollToPlugin.min.js" integrity="sha512-nTHzMQK7lwWt8nL4KF6DhwLHluv6dVq/hNnj2PBN0xMl2KaMm1PM02csx57mmToPAodHmPsipoERRNn4pG7f+Q==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.8/ScrollMagic.min.js" integrity="sha512-8E3KZoPoZCD+1dgfqhPbejQBnQfBXe8FuwL4z/c8sTrgeDMFEnoyTlH3obB4/fV+6Sg0a0XF+L/6xS4Xx1fUEg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <!-- swiper 6.8.4 -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/6.8.4/swiper-bundle.min.js" integrity="sha512-BABFxitBmYt44N6n1NIJkGOsNaVaCs/GpaJwDktrfkWIBFnMD6p5l9m+Kc/4SLJSJ4mYf+cstX98NYrsG/M9ag==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/6.8.4/swiper-bundle.min.css" integrity="sha512-aMup4I6BUl0dG4IBb0/f32270a5XP7H1xplAJ80uVKP6ejYCgZWcBudljdsointfHxn5o302Jbnq1FXsBaMuoQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <!-- 로컬 jQuery 파일을 불러오기 -->
   
    <!--  아이콘 불러오기 -->
    <script src="https://kit.fontawesome.com/12d13cde63.js" crossorigin="anonymous"></script>
    <script defer src="./YouTube/js/main.js"></script>
    <!-- <script defer src="./js/jquery-3.7.1.js"></script> -->
</head>
<body>
    <!-- ------HEADER ------ -->
   <header class="header">
    <div class="header_logo">
        <button id = "toggleButton">
            <i class = "fas fa-bars"></i>
        </button>
        <img src="./YouTube/images/logo1.png" alt="집요정TV">
    </div>

    <div class="search">
        <form action="">
            <div class = "search-inner">
            <input type="search" placeholder="검색">
            </div>
            <button><i class="fas fa-search"></i></button>
        </form>
    </div>
    <div class="header_icons">
        <button id ="videoToggle"> <i class="fas fa-video"></i></button>
        <i class="fas fa-ellipsis-h"></i>
        <i class="fas fa-bell"></i>
        <i class="fas fa-user-circle"></i>
    </div>
   </header>

   <!------MAIN------>
   <div class="YtBody">
    <div id = "sidebar" class="sidebar">
        <div class="sidebar_nav">
            <div class="nav-item">
                <i class="fas fa-home"></i>
                <span>홈</span>
            </div>
            <!-- <div class="nav-item">
                <i class="fa-solid fa-bolt"></i>
                <span>Shorts</span>
            </div> -->
            <div class="nav-item">
                <i class="fab fa-youtube"></i>
                <span>구독</span>
            </div>
        </div>
        <hr>
        <div class="sidebar_nav">
            <div class="nav-item na">
                <i class="fas fa-list"></i>
                <span>나</span>
            </div>
            <div class = "sub-menu">
                <div class="nav-item items">
                    <i class="fa-solid fa-history"></i>
                    <span>시청기록</span>
                </div>
                <div class="nav-item items">
                    <i class="fas fa-play"></i>
                    <span>내 동영상</span>
                </div>
                <div class="nav-item items">
                    <i class="fas fa-clock"></i>
                    <span>나중에 볼 영상</span>
                </div>
                <div class="nav-item items">
                    <i class="fas fa-thumbs-up"></i>
                    <span>좋아요 표시한 영상</span>
                </div>
            </div>
            
            
        </div>
        <hr>
        <div class="sidebar_nav">
            <div class="nav-item">
                <i class="fa-solid fa-fire"></i>
                <span>인기 급상승</span>
            </div>
            <div class="nav-item">
                <i class="fa-solid fa-bag-shopping"></i>
                <span>쇼핑</span>
            </div>
            <div class="nav-item" id="music-button">
                <i class="fa-solid fa-music"></i>
                <span>음악</span>
            </div>
        
            <script>
                document.getElementById('music-button').addEventListener('click', function() {
                    window.location.href = 'music.jsp'; // 음악 파일의 정확한 경로를 입력하세요.
                });
            </script>
            <div class="nav-item">
                <i class="fa-solid fa-clapperboard"></i>
                <span>영화</span>
            </div>
            <div class="nav-item">
                <i class="fa-solid fa-tower-broadcast"></i>
                <span>실시간</span>
            </div>
            <div class="nav-item">
                <i class="fa-solid fa-gamepad"></i>
                <span>게임</span>
            </div>
            <div class="nav-item">
                <i class="fa-solid fa-trophy"></i>
                <span>스포츠</span>
            </div>
            <div class="nav-item">
                <i class="fa-regular fa-lightbulb"></i>
                <span>학습프로그램</span>
            </div>
            <div class="nav-item">
                <i class="fa-solid fa-podcast"></i>
                <span>팟캐스트</span>
            </div>
        </div>
    </div>
    <div class="video_selection">
        <div class="recommendboxes">
            <button class="box">전체</button>
            <button class="box">반려동물</button>
            <button class="box">야구</button>
            <button class="box">뉴스</button>
            <button class="box">요리</button>
        </div>
        <div class="container">
            <div class="video">
                <div class="thumbnail">
                    <img src="https://i.ytimg.com/vi/ROjFr9yz0tI/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBBMnCqyoipls2ieWWSLwXL2A56pg" alt="">
                </div>
                <div class="details">
                    <div class="logo">
                        <img src="https://yt3.ggpht.com/u-wNEA8k1heDBtOU92ZapUEc3i7scrh_eI6usjVdGwymgIi8olLNwUJgjq2S5iaxCYLEjpaZ=s68-c-k-c0x00ffffff-no-rj" alt="">
                    </div>
                    <div class="title">
                        <h2> How To Build A $10,000 Website With No-Code +AI  </h2>
                        <a href="#">WeAreNoCode</a>
                        <span>video views · time </span>
                    </div>
                </div>
            </div>
            <div class="video">
                <div class="thumbnail">
                    <img src="https://i.ytimg.com/vi/ROjFr9yz0tI/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBBMnCqyoipls2ieWWSLwXL2A56pg" alt="">
                </div>
                <div class="details">
                    <div class="logo">
                        <img src="https://yt3.ggpht.com/u-wNEA8k1heDBtOU92ZapUEc3i7scrh_eI6usjVdGwymgIi8olLNwUJgjq2S5iaxCYLEjpaZ=s68-c-k-c0x00ffffff-no-rj" alt="">
                    </div>
                    <div class="title">
                        <h2> How To Build A $10,000 Website With No-Code +AI  </h2>
                        <a href="#">WeAreNoCode</a>
                        <span>video views · time </span>
                    </div>
                </div>
            </div>
            <div class="video">
                <div class="thumbnail">
                    <img src="https://i.ytimg.com/vi/ROjFr9yz0tI/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBBMnCqyoipls2ieWWSLwXL2A56pg" alt="">
                </div>
                <div class="details">
                    <div class="logo">
                        <img src="https://yt3.ggpht.com/u-wNEA8k1heDBtOU92ZapUEc3i7scrh_eI6usjVdGwymgIi8olLNwUJgjq2S5iaxCYLEjpaZ=s68-c-k-c0x00ffffff-no-rj" alt="">
                    </div>
                    <div class="title">
                        <h2> How To Build A $10,000 Website With No-Code +AI  </h2>
                        <a href="#">WeAreNoCode</a>
                        <span>video views · time </span>
                    </div>
                </div>
            </div>
            <div class="video">
                <div class="thumbnail">
                    <img src="https://i.ytimg.com/vi/ROjFr9yz0tI/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBBMnCqyoipls2ieWWSLwXL2A56pg" alt="">
                </div>
                <div class="details">
                    <div class="logo">
                        <img src="https://yt3.ggpht.com/u-wNEA8k1heDBtOU92ZapUEc3i7scrh_eI6usjVdGwymgIi8olLNwUJgjq2S5iaxCYLEjpaZ=s68-c-k-c0x00ffffff-no-rj" alt="">
                    </div>
                    <div class="title">
                        <h2> How To Build A $10,000 Website With No-Code +AI  </h2>
                        <a href="#">WeAreNoCode</a>
                        <span>video views · time </span>
                    </div>
                </div>
            </div>
            <div class="video">
                <div class="thumbnail">
                    <img src="https://i.ytimg.com/vi/ROjFr9yz0tI/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBBMnCqyoipls2ieWWSLwXL2A56pg" alt="">
                </div>
                <div class="details">
                    <div class="logo">
                        <img src="https://yt3.ggpht.com/u-wNEA8k1heDBtOU92ZapUEc3i7scrh_eI6usjVdGwymgIi8olLNwUJgjq2S5iaxCYLEjpaZ=s68-c-k-c0x00ffffff-no-rj" alt="">
                    </div>
                    <div class="title">
                        <h2> How To Build A $10,000 Website With No-Code +AI  </h2>
                        <a href="#">WeAreNoCode</a>
                        <span>video views · time </span>
                    </div>
                </div>
            </div>
            <div class="video">
                <div class="thumbnail">
                    <img src="https://i.ytimg.com/vi/ROjFr9yz0tI/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBBMnCqyoipls2ieWWSLwXL2A56pg" alt="">
                </div>
                <div class="details">
                    <div class="logo">
                        <img src="https://yt3.ggpht.com/u-wNEA8k1heDBtOU92ZapUEc3i7scrh_eI6usjVdGwymgIi8olLNwUJgjq2S5iaxCYLEjpaZ=s68-c-k-c0x00ffffff-no-rj" alt="">
                    </div>
                    <div class="title">
                        <h2> How To Build A $10,000 Website With No-Code +AI  </h2>
                        <a href="#">WeAreNoCode</a>
                        <span>video views · time </span>
                    </div>
                </div>
            </div>
            <div class="video">
                <div class="thumbnail">
                    <img src="https://i.ytimg.com/vi/ROjFr9yz0tI/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBBMnCqyoipls2ieWWSLwXL2A56pg" alt="">
                </div>
                <div class="details">
                    <div class="logo">
                        <img src="https://yt3.ggpht.com/u-wNEA8k1heDBtOU92ZapUEc3i7scrh_eI6usjVdGwymgIi8olLNwUJgjq2S5iaxCYLEjpaZ=s68-c-k-c0x00ffffff-no-rj" alt="">
                    </div>
                    <div class="title">
                        <h2> How To Build A $10,000 Website With No-Code +AI  </h2>
                        <a href="#">WeAreNoCode</a>
                        <span>video views · time </span>
                    </div>
                </div>
            </div>
            <div class="video">
                <div class="thumbnail">
                    <img src="https://i.ytimg.com/vi/ROjFr9yz0tI/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBBMnCqyoipls2ieWWSLwXL2A56pg" alt="">
                </div>
                <div class="details">
                    <div class="logo">
                        <img src="https://yt3.ggpht.com/u-wNEA8k1heDBtOU92ZapUEc3i7scrh_eI6usjVdGwymgIi8olLNwUJgjq2S5iaxCYLEjpaZ=s68-c-k-c0x00ffffff-no-rj" alt="">
                    </div>
                    <div class="title">
                        <h2> How To Build A $10,000 Website With No-Code +AI  </h2>
                        <a href="#">WeAreNoCode</a>
                        <span>video views · time </span>
                    </div>
                </div>
            </div>
            <div class="video">
                <div class="thumbnail">
                    <img src="https://i.ytimg.com/vi/ROjFr9yz0tI/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBBMnCqyoipls2ieWWSLwXL2A56pg" alt="">
                </div>
                <div class="details">
                    <div class="logo">
                        <img src="https://yt3.ggpht.com/u-wNEA8k1heDBtOU92ZapUEc3i7scrh_eI6usjVdGwymgIi8olLNwUJgjq2S5iaxCYLEjpaZ=s68-c-k-c0x00ffffff-no-rj" alt="">
                    </div>
                    <div class="title">
                        <h2> How To Build A $10,000 Website With No-Code +AI  </h2>
                        <a href="#">WeAreNoCode</a>
                        <span>video views · time </span>
                    </div>
                </div>
            </div>
            <div class="video">
                <div class="thumbnail">
                    <img src="https://i.ytimg.com/vi/ROjFr9yz0tI/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBBMnCqyoipls2ieWWSLwXL2A56pg" alt="">
                </div>
                <div class="details">
                    <div class="logo">
                        <img src="https://yt3.ggpht.com/u-wNEA8k1heDBtOU92ZapUEc3i7scrh_eI6usjVdGwymgIi8olLNwUJgjq2S5iaxCYLEjpaZ=s68-c-k-c0x00ffffff-no-rj" alt="">
                    </div>
                    <div class="title">
                        <h2> How To Build A $10,000 Website With No-Code +AI  </h2>
                        <a href="#">WeAreNoCode</a>
                        <span>video views · time </span>
                    </div>
                </div>
            </div>
            <div class="video">
                <div class="thumbnail">
                    <img src="https://i.ytimg.com/vi/ROjFr9yz0tI/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBBMnCqyoipls2ieWWSLwXL2A56pg" alt="">
                </div>
                <div class="details">
                    <div class="logo">
                        <img src="https://yt3.ggpht.com/u-wNEA8k1heDBtOU92ZapUEc3i7scrh_eI6usjVdGwymgIi8olLNwUJgjq2S5iaxCYLEjpaZ=s68-c-k-c0x00ffffff-no-rj" alt="">
                    </div>
                    <div class="title">
                        <h2> How To Build A $10,000 Website With No-Code +AI  </h2>
                        <a href="#">WeAreNoCode</a>
                        <span>video views · time </span>
                    </div>
                </div>
            </div>
            <div class="video">
                <div class="thumbnail">
                    <img src="https://i.ytimg.com/vi/ROjFr9yz0tI/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBBMnCqyoipls2ieWWSLwXL2A56pg" alt="">
                </div>
                <div class="details">
                    <div class="logo">
                        <img src="https://yt3.ggpht.com/u-wNEA8k1heDBtOU92ZapUEc3i7scrh_eI6usjVdGwymgIi8olLNwUJgjq2S5iaxCYLEjpaZ=s68-c-k-c0x00ffffff-no-rj" alt="">
                    </div>
                    <div class="title">
                        <h2> How To Build A $10,000 Website With No-Code +AI  </h2>
                        <a href="#">WeAreNoCode11</a>
                        <span>video views · time </span>
                    </div>
                </div>
            </div>
        </div>
    </div>
   </div>
</body>
</html>