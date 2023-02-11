<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c" %>
<html lang="en" >
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Danh mục English Book</title>
    <script src="../view/js/jquery-3.3.1.js"></script>
    <script src="../view/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../view/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../view/fontawesome/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Paytone+One&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../view/css/style.css">
    <link rel="stylesheet" href="../view/css/home.css">
 <link rel="stylesheet" href="../view/css/category.css">
 <link rel="stylesheet" href="../view/fontawesome/css/all.min.css">
</head>
<body>
    <jsp:include page="header.jsp" />
    

    <!-- category 1: Sách trong nước-->
    <section id ='category1' class="product__love">
        <div class="container">
            <div class="row bg-white">
                <div class="col-lg-12 col-md-12 col-sm-12 product__love-title">
                    <h2 class="product__love-heading upper">
                        Manga Comix
                    </h2>
                </div>
            </div>
            <div class="row bg-white">
                <c:forEach var="getAllEnglishBook" items="${getAllEnglishBook}">
                    <div class="product__panel-item col-lg-2 col-md-3 col-sm-6">
                        <div class="product__panel-img-wrap">
                           <a href="/products/getProductById/${getAllEnglishBook.getId()}"><img src="/${getAllEnglishBook.getAnhSp()}" alt="" class="product__panel-img" ></a>
                        </div>
                        <h3 class="product__panel-heading">
                            <a href="/products/getProductById/${getAllEnglishBook.getId()}" class="product__panel-link">${getAllEnglishBook.getTenSp()}</a>
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
                                78.000đ
                            </span>
                            <span class="product__panel-price-current">
                                ${getAllEnglishBook.getGiaSp()}
                            </span>
                        </div> 
                    </div>
                </c:forEach>
            </div>
        </div>
    </section>
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
    <!-- scroll to top -->
  <!-- score-top-->

<button onclick="topFunction()" id="myBtn-scroll" title="Go to top"><i class="fas fa-chevron-up"></i></i></button>
    <!--  -->
    
    <script src="../view/js/jq.js"></script>
    <!-- <script src="../view/js/category.js"></script> -->
</body>
</html>