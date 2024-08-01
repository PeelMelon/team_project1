<!DOCTYPE html>
<html lang="en">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>drama_main</title>
    <link rel="stylesheet" href="./drama_page.css">
    <!-- <link rel="stylesheet" href="/YouTube/css/main.css"> -->
    <script
    src="https://code.jquery.com/jquery-3.7.1.js"
    integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
    crossorigin="anonymous"></script>
    <!-- 2. favicon(favorite icon) 세팅 -->
    <link rel="shortcut icon" href="./favicon.ico" />
    <link rel="icon" href="./favicon.png" />
    <!-- reset.css 세팅(cdn) -->
    <link href="https:/cdn.jsdelivr.net/npm/reset-css@5.0.2/reset.min.css" rel="stylesheet">
    <!-- 커스템 css파일 세팅(local) -->
    <link href="/YouTube/css/main.css" rel="stylesheet">
    <!-- 오픈 그래프 설정(더 많은 속성을 보고 싶으면 https://ogp.me) -->
    <meta property="og:image" content="https:/www.youtube.com/img/desktop/yt_1200.png">
    <meta property="fb:app_id" content="87741124305">
    <meta name="description" content="YouTube에서 마음에 드는 동영상과 음악을 감상하고, 직접 만든 콘텐츠를 업로드하여 친구, 가족뿐 아니라 전 세계 사람들과 콘텐츠를 공유할 수 있습니다.">
    <meta name="keywords" content="동영상, 공유, 카메라폰, 동영상폰, 무료, 올리기">
    <meta name="theme-color" content="rgba(255, 255, 255, 0.98)">
    <!-- lodash -->
    <script src="https:/cdn.jsdelivr.net/npm/lodash@4.17.21/lodash.min.js"></script>
    <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.21/lodash.min.js" integrity="sha512-WFN04846sdKMIP5LKNphMaWzU7YpMyCU245etK3g/2ARYbPK9Ub18eG+ljU96qKRCWh+quCY7yefSmlkQw1ANQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script> -->
    <!-- gsap js -->
    <script src="https:/cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/gsap.min.js" integrity="sha512-IQLehpLoVS4fNzl7IfH8Iowfm5+RiMGtHykgZJl9AWMgqx0AmJ6cRWcB+GaGVtIsnC4voMfm8f2vwtY+6oPjpQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https:/cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/ScrollToPlugin.min.js" integrity="sha512-nTHzMQK7lwWt8nL4KF6DhwLHluv6dVq/hNnj2PBN0xMl2KaMm1PM02csx57mmToPAodHmPsipoERRNn4pG7f+Q==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https:/cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.8/ScrollMagic.min.js" integrity="sha512-8E3KZoPoZCD+1dgfqhPbejQBnQfBXe8FuwL4z/c8sTrgeDMFEnoyTlH3obB4/fV+6Sg0a0XF+L/6xS4Xx1fUEg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <!-- swiper 6.8.4 -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/6.8.4/swiper-bundle.min.js" integrity="sha512-BABFxitBmYt44N6n1NIJkGOsNaVaCs/GpaJwDktrfkWIBFnMD6p5l9m+Kc/4SLJSJ4mYf+cstX98NYrsG/M9ag==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <!-- 폰트 설정 -->
    <link rel="preconnect" href="https:/fonts.gstatic.com" />
    <link href="https:/fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap" rel="stylesheet" />
    <link rel="preconnect" href="https:/fonts.googleapis.com">
    <link rel="preconnect" href="https:/fonts.gstatic.com" crossorigin>
    <link href="https:/fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
    <!-- 아이콘 설정 --> 
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/6.8.4/swiper-bundle.min.css" integrity="sha512-aMup4I6BUl0dG4IBb0/f32270a5XP7H1xplAJ80uVKP6ejYCgZWcBudljdsointfHxn5o302Jbnq1FXsBaMuoQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- script -->
    <script defer src="./js/drama_page.js"></script>
    <script defer src="./YouTube/js/main.js"></script>
    <script src="https:/kit.fontawesome.com/12d13cde63.js" crossorigin="anonymous"></script>
    <!-- <script defer src="./js/jquery-3.7.1.js"></script> -->
    <!-- Swiper CSS -->
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
    <!-- Swiper JavaScript -->
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    
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
                    <p>홈</p>
                </div>
                <!-- <div class="nav-item">
                    <i class="fa-solid fa-bolt"></i>
                    <p>Shorts</p>
                </div> -->
                <div class="nav-item">
                    <i class="fab fa-youtube"></i>
                    <p>구독</p>
                </div>
            </div>
            <hr>
            <div class="sidebar_nav">
                <div class="nav-item na">
                    <i class="fas fa-list"></i>
                    <p>나</p>
                </div>
                <div class = "sub-menu">
                    <div class="nav-item items">
                        <i class="fa-solid fa-history"></i>
                        <p>시청기록</p>
                    </div>
                    <div class="nav-item items">
                        <i class="fas fa-play"></i>
                        <p>내 동영상</p>
                    </div>
                    <div class="nav-item items">
                        <i class="fas fa-clock"></i>
                        <p>나중에 볼 영상</p>
                    </div>
                    <div class="nav-item items">
                        <i class="fas fa-thumbs-up"></i>
                        <p>좋아요 표시한 영상</p>
                    </div>
                </div>
                
            </div>
            <hr>
            <div class="sidebar_nav">
                <div class="nav-item">
                    <i class="fa-solid fa-fire"></i>
                    <p>인기 급상승</p>
                </div>
                <div class="nav-item">
                    <i class="fa-solid fa-bag-shopping"></i>
                    <p>쇼핑</p>
                </div>
                <div class="nav-item" id="music-button">
                    <i class="fa-solid fa-music"></i>
                    <p>음악</p>
                </div>
            
                <script>
                    document.getElementById('music-button').addEventListener('click', function() {
                        window.location.href = 'music.html'; // 음악 파일의 정확한 경로를 입력하세요.
                    });
                </script>
                <div class="nav-item" id="drama_button">
                    <i class="fa-solid fa-clapperboard"></i>
                    <p>드라마</p>
                </div>
                <script>
                    document.getElementById('drama_button').addEventListener('click', function() {
                        window.location.href = 'drama_page.html'; //드라마페이지로 이동
                    });
                </script>
    
                <div class="nav-item">
                    <i class="fa-solid fa-tower-broadcast"></i>
                    <p>실시간</p>
                </div>
                <div class="nav-item">
                    <i class="fa-solid fa-gamepad"></i>
                    <p>게임</p>
                </div>
                <div class="nav-item">
                    <i class="fa-solid fa-trophy"></i>
                    <p>스포츠</p>
                </div>
                <div class="nav-item">
                    <i class="fa-regular fa-lightbulb"></i>
                    <p>학습프로그램</p>
                </div>
                <div class="nav-item">
                    <i class="fa-solid fa-podcast"></i>
                    <p>팟캐스트</p>
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
        <section class="top20container">
        <div class="top20title">
            <h3>TOP20 드라마 채널</h3>
        </div>
        <div class="top20_box">
            <div class="swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <img src="./drama_images/1717472960793.png" alt="kino" />
                        <a href="javascript:void(0);" class="r_tilte">키노라이츠</a>
                        <div class="rabk">1</div>
                    </div>
                    <div class="swiper-slide">
                        <img src="./drama_images/20240604_171540_172.jpg" alt="daynight" />
                        <a href="javascript:void(0);" class="r_tilte">낮과밤이다른그녀</a>
                        <div class="rank">2</div>
                    </div>
                    <div class="swiper-slide">
                        <img src="./drama_images/1649860853169.jpg" alt="tving" />
                        <a href="javascript:void(0);" class="r_tilte">티빙</a>
                        <div class="rank">3</div>
                    </div>
                    <div class="swiper-slide">
                        <img src="./drama_images/dec68228-9180-4c81-8d64-c6b4347e3167.jpg" alt="thanks" />
                        <a href="javascript:void(0);" class="r_tilte">감사합니다</a>
                        <div class="rank">4</div>
                    </div>
                    <!-- 4 -->
                    <!-- 5 -->
                    <div class="swiper-slide">
                        <img src="./drama_images/1467019091809.jpg" alt="net" />
                        <div class="rank">5</div>
                        <a href="javascript:void(0);" class="r_tilte">Netflix</a>
                        <div class="rank">5</div>
                    </div>
                    <div class="swiper-slide">
                        <img src="./drama_images/1711553000666.png" alt="disney" class="crop" />
                        <a href="javascript:void(0);" class="r_tilte">Disney</a>
                        <div class="rank">6</div>
                    </div>
                    <div class="swiper-slide">
                        <img src="./drama_images/5003cac6-b1b2-403b-8945-ad9fb9f16b55.jpg" alt="if" />
                        <a href="javascript:void(0);" class="r_tilte">우연일까</a>
                        <div class="rank">7</div>
                    </div>
                    <div class="swiper-slide">
                        <img src="./drama_images/1549470301400.png" alt="koc" />
                        <a href="javascript:void(0);" class="r_tilte">콕티비</a>
                        <div class="rank">8</div>
                    </div>
                    <!-- 8 -->
                    <!-- 9 -->
                    <div class="swiper-slide">
                        <img src="./drama_images/d89383a7-9210-4655-ab6a-681d295270f8.jpg" alt="good">
                        <a href="javascript:void(0);" class="r_tilte">굿파트너</a>
                        <div class="rank">9</div>
                    </div>
                    <div class="swiper-slide">
                        <img src="./drama_images/20240516_102609_046.jpg" alt="play_woman" />
                        <a href="javascript:void(0);" class="r_tilte">놀아주는여자</a>
                        <div class="rank">10</div>
                    </div>
                    <div class="swiper-slide">
                        <img src="./drama_images/default_clip.png" alt="1min" class="crop" />
                        <a href="javascript:void(0);" class="r_tilte">1분 영화드라마</a>
                        <div class="rank">11</div>
                    </div>
                    <div class="swiper-slide">
                        <img src="./drama_images/1702277166329.jpg" alt="kizzle" />
                        <a href="javascript:void(0);" class="r_tilte">kizzle</a>
                        <div class="rank">12</div>
                    </div>
                    <!-- 12 -->
                    <!-- 13 -->
                    <div class="swiper-slide">
                        <img src="./drama_images/yk1pdcvpmzjL.jpg" alt="suzy" />
                        <a href="javascript:void(0);" class="r_tilte">수지맞은우리</a>
                        <div class="rank">13</div>
                    </div>
                    <div class="swiper-slide">
                        <img src="./drama_images/1703727072632.png" alt="pick" />
                        <a href="javascript:void(0);" class="r_tilte">pick go</a>
                        <div class="rank">14</div>
                    </div>
                    <div class="swiper-slide">
                        <img src="./drama_images/HxNAO3QvHyHL.jpg" alt="beauty">
                        <a href="javascript:void(0);" class="r_tilte">beauty</a>
                        <div class="rank">15</div>
                    </div>
                    <div class="swiper-slide">
                        <img src="./drama_images/T60479G_pgm_poster1_20240408112127939.jpg" alt="brave" />
                        <a href="javascript:void(0);" class="r_tilte">용감무쌍 용수정</a>
                        <div class="rank">16</div>
                    </div>
                    <!-- 16 -->
                    <!-- 17 -->
                    <div class="swiper-slide">
                        <img src="./drama_images/1702272428033.png" alt="hiteen" />
                        <a href="javascript:void(0);" class="r_tilte">하이틴에이저 Hi-teenager official</a>
                        <div class="rank">17</div>
                    </div>
                    <div class="swiper-slide">
                        <img src="./drama_images/1667978365556.png" alt="original" />
                        <a href="javascript:void(0);" class="r_tilte">연애플레이리스트</a>
                        <div class="rank">18</div>
                    </div>
                    <div class="swiper-slide">
                        <img src="./drama_images/1566784610491.png" alt="jun" />
                        <a href="javascript:void(0);" class="r_tilte">AXN</a>
                        <div class="rank">19</div>
                    </div>
                    <div class="swiper-slide">
                        <img src="./drama_images/players2.jpg" alt="players2" />
                        <a href="javascript:void(0);" class="r_tilte">플레이어2</a>
                        <div class="rank">20</div>
                    </div>
                <!-- 20 -->
                </div>
            </div>
            <div class="swiper-pagination"></div>
            <div class="swiper-prev">
                <span class="material-symbols-outlined">
                    chevron_backward
                </span>
            </div>
            <div class="swiper-next">
                <span class="material-symbols-outlined">
                    chevron_forward
                </span>
            </div>
        </div>
    </section>
</div>

    <section class="bottom_menu">
        <div class="bot_title">

        </div>
        <div class="bot_content">

        </div>
    </section>
</body>
</html>