<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c" %>

<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Trang chủ - EduBook</title>
        <link rel="stylesheet" href="../view/css/button.css">
     <script src="../view/js/jquery-3.3.1.js"></script>
    <script src="../view/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../view/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../view/fontawesome/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Paytone+One&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../view/css/style.css">
    <link rel="stylesheet" href="../view/css/home.css">
    </head>
<body>
    <jsp:include page="header.jsp" />
    <!-- slide - menu list -->
    <section class="menu-slide">
        <div class="container">
            <div class="row">
                <nav class="menu__nav col-lg-3 col-md-12 col-sm-0">
                    <ul class="menu__list">
                        <li class="menu__item menu__item--active">
                            <a href="/home" class="menu__link">
                            <img src="../view/img/baby-boy.png" alt=""  class="menu__item-icon" id="Capa_1" enable-background="new 0 0 512 512" height="512" viewBox="0 0 512 512" width="512">
                            Các mục sản phẩm</a>
                        </li>
                        <li class="menu__item menu__item--active">
                            <a href="/home/sachviet" class="menu__link">
                            <img src="../view/img/baby-boy.png" alt=""  class="menu__item-icon" id="Capa_1" enable-background="new 0 0 512 512" height="512" viewBox="0 0 512 512" width="512">
                            Sách Tiếng Việt</a>
                        </li>
                        <li class="menu__item">
                            <a href="/home/englishbook" class="menu__link">
                            <img src="../view/img/translation.png" alt="" class="menu__item-icon" id="Capa_1" enable-background="new 0 0 512 512" height="512" viewBox="0 0 512 512" width="512">
                            Sách nước ngoài</a>
                        </li>
                      
                        <li class="menu__item">
                            <a href="/home/manga" class="menu__link">
                                <img src="../view/img/1380754_batman_comic_hero_superhero_icon.png" alt="" class="menu__item-icon"  viewBox="0 0 512 512" width="1012" height="512">

                            Manga - Comic</a>
                        </li>
                      
                    </ul>
                </nav>

                <div class="slider col-lg-9 col-md-12 col-sm-0">
                    <div class="row">
                        <div class="slide__left col-lg-8 col-md-0 col-sm-0">
                            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" data-interval="3000">
                                <!-- <ol class="carousel-indicators">
                                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                                </ol> -->
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <img src="../view/banner/363488_final1511.jpg" class="d-block w-100" alt="...">
                                    </div>
                                    <div class="carousel-item">
                                      <img src="../view/banner/Gold_DongA_600X350.jpg" class="d-block w-100" alt="...">
                                    </div>
                                    <div class="carousel-item">
                                      <img src="../view/banner/megabook-glod600X350.png" class="d-block w-100" alt="...">
                                    </div>
                                </div>
                                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                                </a>
                                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                                </a>
                            </div>
                            <div class="slide__left-bottom">
                                <div class="slide__left-botom-one">
                                    <img src="../view/banner/363107_05.jpg" class="slide__left-bottom-one-img">
                                </div>
                                <div class="slide__left-bottom-two">
                                    <img src="../view/banner/363104_06.jpg" class="slide__left-bottom-tow-img">
                                </div>
                            </div>
                        </div>

                        <div class="slide__right col-lg-4 col-md-0 col-sm-0">
                            <img src="../view/banner/slider-right.png" class="slide__right-img">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- end slide menu list -->
<!-- score-top-->

<button onclick="topFunction()" id="myBtn-scroll" title="Go to top"><i class="fas fa-chevron-up"></i></i></button>
    <!-- bestselling product -->
    <section class="bestselling">
        <div class="container">
            <div class="row">
                <div class="bestselling__heading-wrap">
                    <img src="../view/img/bestselling.png" alt="Sản phẩm bán chạy"
                    class="bestselling__heading-img">
                    <div class="bestselling__heading">Top bán chạy nhất tuần</div>
                </div>
            </div>

            <section class="row">
                <c:forEach var="list" items="${getProduct.content}">
                <div class="bestselling__product col-lg-4 col-md-6 col-sm-12">
                    <div class="bestselling__product-img-box">
                        <a href="products/getProductById/${list.getId()}"><img src="${list.getAnhSp()}" alt="${list.getTenSp()}" class="bestselling__product-img"></a>
                    </div>
                    <div class="bestselling__product-text">
                        <h3 class="bestselling__product-title">
                            <a href="products/getProductById/${list.getId()}" class="bestselling__product-link">${list.getTenSp()}</a>
                        </h3>

                        <div class="bestselling__product-rate-wrap">
                            <i class="fas fa-star bestselling__product-rate"></i>
                            <i class="fas fa-star bestselling__product-rate"></i>
                            <i class="fas fa-star bestselling__product-rate"></i>
                            <i class="fas fa-star bestselling__product-rate"></i>
                            <i class="fas fa-star bestselling__product-rate"></i>
                        </div>

                        <span class="bestselling__product-price">
                            ${list.getGiaSp()}
                        </span>

                        <div class="bestselling__product-btn-wrap">
                            <a href="products/getProductById/${list.getId()}"><button class="bestselling__product-btn">Xem hàng</button></a>
                        </div>
                    </div>
                </div>
                </c:forEach>
            </section>

            <div class="row bestselling__banner">

                <div class="bestselling__banner-left col-lg-6">
                    <img src="../view/banner/920x420_phienchodocu.png" alt="Banner quảng cáo"
                    class="bestselling__banner-left-img">
                </div>
                <div class="bestselling__banner-right col-lg-6">
                    <img src="../view/banner/muonkiepnhansinh_resize_920x420.jpg" alt="Banner quảng cáo"
                    class="bestselling__banner-right-img">
                </div>
            </div>
        </div>
    </section>

    <!-- end bestselling product -->

    <!-- product -->
    <section class="product">
        <div class="container">
            <div class="row">
                <aside class="product__sidebar col-lg-3 col-md-0 col-sm-12">
                    <div class="product__sidebar-heading">
                        <div class=""></div>
                        <h2 class="product__sidebar-title">
                        <img src="../view/img/1380754_batman_comic_hero_superhero_icon.png" alt="" class="menu__item-icon" id="Capa_1" enable-background="new 0 0 512 512" height="512" viewBox="0 0 512 512" width="512">
                        Manga - Comic</h2>
                    </div>

                    <nav class="product__sidebar-list">

                        <div class="row">
                            <div class="product__sidebar-item col-lg-6">
                                <img src="#" alt="" class="product__sidebar-item-img">
                                <a href="" class="product__sidebar-item-name">Manga</a>
                            </div>
                            <div class="product__sidebar-item col-lg-6">
                                <img src="#" class="product__sidebar-item-img">
                                <a href="" class="product__sidebar-item-name">Series Manga</a>
                            </div>
                            <div class="product__sidebar-item col-lg-6">
                                <img src="#" alt="" class="product__sidebar-item-img">
                                <a href="" class="product__sidebar-item-name">Comics</a>
                            </div>
                            <div class="product__sidebar-item col-lg-6">
                                <img src="#" alt="" class="product__sidebar-item-img">
                                <a href="" class="product__sidebar-item-name">Truyện tranh Việt Nam</a>
                            </div>
                        </div>
                    </nav>

                    <!-- <div class="product__sidebar-img-wrap">
                        <video width="255" height="300" controls>
                        <source src="video/contra.st_1629123780_musicaldown.com.mp4" type="video/mp4">
                        </video>
                    </div> -->
                </aside>

                <article class="product__content col-lg-9 col-md-12 col-sm-12">
                    <nav class="row">
                        <ul class="product__list hide-on-mobile">
                            <li class="product__item product__item--active">
                                <a href="#" class="product__link">Hành động - Phiêu lưu</a>
                            </li>
                            <li class="product__item">
                                <a href="#" class="product__link">Bí ẩn - Siêu nhiên</a>
                            </li>
                            <li class="product__item">
                                <a href="#" class="product__link">Giả tưởng - Khoa học</a>
                            </li>
                            <li class="product__item">
                                <a href="#" class="product__link">Lãng mạn - Hài kịch</a>
                            </li>
                        </ul>

                        <div class="product__title-mobile">
                            <h2>Hành động - Phiêu lưu</h2>
                        </div>
                    </nav>

                    <div class="row product__panel">
                        <c:forEach var="getProductManga" items="${getProductManga.content}">
                        <div class="product__panel-item col-lg-3 col-md-4 col-sm-6">
                            <div class="product__panel-item-wrap">
                                <div class="product__panel-img-wrap">
                                    <a href="products/getProductById/${getProductManga.getId()}"><img src="${getProductManga.getAnhSp()}" alt="" class="product__panel-img"></a>
                                </div>
                                <h3 class="product__panel-heading">
                                    <a href="products/getProductById/${getProductManga.getId()}" class="product__panel-link">${getProductManga.getTenSp()}</a>
                                </h3>
                                <div class="product__panel-rate-wrap">
                                    <i class="fas fa-star product__panel-rate"></i>
                                    <i class="fas fa-star product__panel-rate"></i>
                                    <i class="fas fa-star product__panel-rate"></i>
                                    <i class="fas fa-star product__panel-rate"></i>
                                    <i class="fas fa-star product__panel-rate"></i>
                                </div>

                                <div class="product__panel-price">
                                    <span class="product__panel-price-old">
                                        100.000đ
                                    </span>
                                    <span class="product__panel-price-current">
                                        ${getProductManga.getGiaSp()}
                                    </span>
                                </div>

                                <div class="product__panel-price-sale-off">
                                    -11%
                                </div>
                            </div>
                        </div>
                        </c:forEach>
                </article>
            </div>
        </div>
    </section>
    <!--end product -->

    <!-- product love -->
    <section class="product__love">
        <div class="container">
            <div class="row bg-white">
                <div class="col-lg-12 col-md-12 col-sm-12 product__love-title">
                    <h2 class="product__love-heading">
                        Có thể bạn thích
                    </h2>
                </div>
            </div>
            <div class="row bg-white">
                <c:forEach var="getProductEnglish" items="${getProductEnglish.content}">
                <div class="product__panel-item col-lg-2 col-md-3 col-sm-6">
                    <div class="product__panel-img-wrap">
                        <a href="/products/getProductById/${getProductEnglish.getId()}"><img src="${getProductEnglish.getAnhSp()}" alt="" class="product__panel-img"></a>
                    </div>
                    <h3 class="product__panel-heading">
                        <a href="/products/getProductById/${getProductEnglish.getId()}" class="product__panel-link">${getProductEnglish.getTenSp()}</a>
                    </h3>
                    <div class="product__panel-rate-wrap">
                        <i class="fas fa-star product__panel-rate"></i>
                        <i class="fas fa-star product__panel-rate"></i>
                        <i class="fas fa-star product__panel-rate"></i>
                        <i class="fas fa-star product__panel-rate"></i>
                        <i class="fas fa-star product__panel-rate"></i>
                    </div>

                    <div class="product__panel-price">
                        <span class="product__panel-price-old product__panel-price-old-hide">
                            80.000đ
                        </span>
                        <span class="product__panel-price-current">
                            ${getProductEnglish.getGiaSp()}
                        </span>
                    </div>  
                </div>
                </c:forEach>
            </div>
        </div>
    </section>
    <!--end product love -->


    <!-- footer -->
    <footer>
        <section class="footer__top">
            <div class="container">
                <div class="row">
                    <article class="footer__top-intro col-lg-5 col-md-4 col-sm-6">
                        <h4 class="footer__top-intro-heading">
                            Về chúng tôi
                        </h4>
                        <div class="footer__top-intro-content">
                            Edubook là cửa hàng luôn cung cấp cho các bạn tìm tòi tri thức, đam mê 
                            đọc sách trên khắp cả nước.Chúng tôi sẽ liên tục cập 
                            nhật những cuốn sách hay nhất, mới nhất, chất lượng nhất 
                            giúp người đọc có những cuốn sách hay nhất để đọc! <br> <br>
                            Điện thoại: 096.868.6868 <br>
                            Email: nguyenhieuad1998@gmail.com <br>
                            Zalo:  096.868.6868 <br>
                        </div>
                    </article>

                    <article class="footer__top-policy col-lg-3 col-md-4 col-sm-6">
                        <h4 class="footer__top-policy-heading">
                            Chính sách mua hàng
                        </h4>

                        <ul class="footer__top-policy-list">
                            <li class="footer__top-policy-item">
                                <a href="#" class="footer__top-policy-link">Hình thức đặt hàng</a>
                            </li>
                            <li class="footer__top-policy-item">
                                <a href="#" class="footer__top-policy-link">Hình thức thanh toán</a>
                            </li>
                            <li class="footer__top-policy-item">
                                <a href="#" class="footer__top-policy-link">Phương thức vận chuyển</a>
                            </li>
                            <li class="footer__top-policy-item">
                                <a href="#" class="footer__top-policy-link">Chính sách đổi trả</a>
                            </li>
                            <li class="footer__top-policy-item">
                                <a href="#" class="footer__top-policy-link">Hướng dẫn sử dụng</a>
                            </li>
                        </ul>
                    </article>

                    <article class="footer__top-contact-wrap col-lg-4 col-md-4 col-sm-6">
                        <h4 class="footer__top-contact-heading">
                            Hotline liên hệ
                        </h4>

                        <div class="footer__top-contact">
                            <div class="footer__top-contact-icon">
                                <img src="../view/img/phone_top.png" class="footer__top-contact-img">
                            </div>

                            <div class="footer__top-contact-phone-wrap">
                                <div class="footer__top-contact-phone">
                                    039.882.3232
                                </div>
                                <div class="footer__top-contact-des">
                                    (Giải đáp thắc mắc 24/24)
                                </div>
                            </div>
                        </div>
                    
                        <h4 class="footer__top-contact-heading">
                            Kết nối với chúng tôi
                        </h4>

                        <div class="footer__top-contact-social">
                            <a href="https://www.facebook.com/nnguyenhieu" class="footer__top-contact-social-link">
                                <img src="../view/img/facebook.png">
                            </a>
                            <a href="#" class="footer__top-contact-social-link">
                                <img src="../view/img/youtube.png">
                            </a>
                            <a href="#" class="footer__top-contact-social-link">
                                <img src="../view/img/tiktok.png">
                            </a>
                            <a href="#" class="footer__top-contact-social-link">
                                <img src="../view/img/zalo.png">
                            </a>
                        </div>
                    </article>
                </div>
            </div>
        </section>
        <section class="footer__bottom">
            <div class="container">
                <div class="row">
                    <span class="footer__bottom-content">@Bản quyền thuộc về edubook | Thiết kế bởi team ED2 </span>
                </div>
            </div>
        </section>
</footer>
    <!-- end footer -->
    <script src="../view/js/jq.js"></script>
   
</body>
</html>