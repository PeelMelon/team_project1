
//console.log(connect);
console.log(12345);

const swiper = new Swiper('.swiper-container', {
    direction: 'horizontal',
    loop: false,
    // autoplay: false,
    slidesPerView: 4,
    slidesPerGroup: 4,
    spaceBetween: 20,
    navigation: {
        prevEl: '.top20_box .swiper-prev',
        nextEl: '.top20_box .swiper-next',
    },
    pagination: {
        el: '.top20_box .swiper-pagination',
        type: 'bullets',
        clickable: true,
    },
    breakpoints: {
        680: {
            slidesPerView: 4,  //브라우저가 680보다 클 때
            spaceBetween: 30,
        },
        1290: {
            slidesPerView: 5,  //브라우저가 680보다 클 때
            spaceBetween: 30,
        },
        1980: {
            slidesPerView: 6,  //브라우저가 1000보다 클 때
            spaceBetween: 30,
        },
    },
});
//커밋 업데이트용
