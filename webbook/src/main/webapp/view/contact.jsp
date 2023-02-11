<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c" %>
<html lang="en" >
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Liên hệ</title>
        <script src="../view/js/jquery-3.3.1.js"></script>
        <script src="../view/js/bootstrap.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="../view/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="fonts/fontawesome/css/all.min.css">
        <link rel="stylesheet" href="../view/css/style.css">
        <link rel="stylesheet" href="../view/css/contact.css">
    </head>
<body>
    <jsp:include page="header.jsp" />
    
    <!-- contact -->
    <section class="contact">
    	<div class="container">
    		<div class="row mt-4 mb-50 pc">
                <nav class="menu__nav col-lg-3 col-md-12 col-sm-0">
                    <ul class="menu__list">
                        <li class="menu__item menu__item--active">
                            <a href="#" class="menu__link">
                            <img src="images1/item/baby-boy.png" alt=""  class="menu__item-icon" id="Capa_1" enable-background="new 0 0 512 512" height="512" viewBox="0 0 512 512" width="512">
                            Sách Tiếng Việt</a>
                        </li>
                        <li class="menu__item">
                            <a href="#" class="menu__link">
                            <img src="images1/item/translation.png" alt="" class="menu__item-icon" id="Capa_1" enable-background="new 0 0 512 512" height="512" viewBox="0 0 512 512" width="512">
                            Sách nước ngoài</a>
                        </li>
                      
                        <li class="menu__item">
                            <a href="#" class="menu__link">
                                <img src="images1/item/1380754_batman_comic_hero_superhero_icon.png" alt="" class="menu__item-icon"  viewBox="0 0 512 512" width="1012" height="512">

                            Manga - Comic</a>
                        </li>
                      
                    </ul>
                </nav>

    			<div class="col-12 contact__map">
    				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.8969921702765!2d105.76491950710259!3d21.036807215564114!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313454bbe135a505%3A0x152cff27eb8815ee!2zxJDGoW4gbmd1ecOqbiA1IGvDvSB0w7pjIHjDoSBN4bu5IMSQw6xuaA!5e0!3m2!1svi!2s!4v1592705439737!5m2!1svi!2s" width="1100" height="200" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
    			</div>
    		</div>

    		<div class="row mt-4 mb-4">
                <div class="col-lg-6 col-md-6 col-sm-12 contact__self">
                    <h3 class="mb-4">
                        Liên hệ với chúng tôi
                    </h3>
                    <p>
                        Để không ngừng nâng cao chất lượng dịch vụ và đáp ứng tốt hơn nữa các yêu cầu sử dụng sách của Quý khách, chúng tôi mong muốn nhận được các thông tin phản hồi. Nếu Quý khách có bất kỳ thắc mắc hoặc đóng góp nào, xin vui lòng liên hệ với chúng tôi theo thông tin dưới đây. Chúng tôi sẽ phản hồi lại Quý khách trong thời gian sớm nhất.
                    </p>
                    <h3 class="mt-4 mb-4">
                        Thông tin liên hệ
                    </h3>
                    
                    <ul class="contact__self-list">
                        <li class="contact__self-item">
                            <a class="contact__self-link" href="#">EduBook.com</a>
                        </li>
                        <li class="contact__self-item">
                            <a class="contact__self-link" href="#">SĐT: 0393.078.242</a>
                        </li>
                        <li class="contact__self-item">
                            <a class="contact__self-link" href="#">Email: EduBook2001@gmail.com</a>
                        </li>
                        <li class="contact__self-item">
                            <a class="contact__self-link" href="#">Địa chỉ: Số 3A, Tạ Quang Bử, Hai Bà Trưng, Hà Nội</a>
                        </li>
                    </ul>
                </div>
    			<div class="col-lg-6 col-md-6 col-sm-12 contact__regist">
    				<h3 class="mb-4">
    					Đăng ký tư vấn miễn phí
    				</h3>

    				<p>Quý khách vui lòng để lại thông tin để nhân viên tư vấn điện lại cho bạn sớm nhất!</p>

    				<form>
					    <input type="text" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Họ tên của bạn...">

					    <input type="email" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Email của bạn...">

					    <input type="number" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Số điện thoại...">
						
						<textarea name="" id="" cols="200" rows="15" placeholder="Nội dung cần tư vấn..."></textarea> 
					  <button type="submit">Gửi liên hệ</button>
					</form>
    			</div>
    		</div>
    	</div>
    </section>
    <!--end contact -->

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

<button onclick="topFunction()" id="myBtn-scroll" title="Go to top"><i class="fas fa-chevron-up"></i></i></button>
    <!--  -->
    
    <script src="../view/js/jq.js"></script>
    <!-- <script src="../view/js/category.js"></script> -->
</body>
</html>