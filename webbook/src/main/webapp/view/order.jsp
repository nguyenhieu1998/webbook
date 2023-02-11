<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c" %>

<html lang="vi" class="h-100">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Đặt hàng</title>
    <script src="../view/js/jquery-3.3.1.js"></script>
    <script src="../view/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../view/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link
      href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500&display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="../view/fontawesome/css/all.min.css" />
    <link rel="stylesheet" href="../view/css/style.css" />
    <link
      rel="stylesheet"
      href="../view/css/bootstrap.min.css"
      type="text/css"
    />
    <!-- Font awesome -->
    <link
      rel="stylesheet"
      href="../view/css/font-awesome.min.css"
      type="text/css"
    />

    <!-- Custom css - Các file css do chúng ta tự viết -->
    <link rel="stylesheet" href="../view/css/app.css" type="text/css" />
  </head>

  <body>
    <!-- header -->
    <jsp:include page="header.jsp" />
    <!-- end header -->

    <div id='form-wrapper'>
  <form action="/getorder" method="get">

    <div id='header' class='text-center mb-3'>
      <h1>THANH TOÁN</h1>
    </div>

    <div class='text-center'>
      <p style="background-color: Tomato">${message}</p>
    </div>

    <h5>Thông tin</h4>

      <hr>

      <div class='form-group mb-1'>
        <label class='mb-1' for='name' style="font-size: 18px;">Full Name</label>
        <input class='form-control mb-1' id='name' name="name" type='text'  style="padding: 1.375rem 0.75rem;" required />
      </div>

      <div class='form-group mb-1'>
        <label class='mb-1' for='email' style="font-size: 18px;">Email</label>
        <input id='email' name="email" type='text' class='form-control'  style="padding: 1.375rem 0.75rem;" required />
      </div>

      <div class='form-group mb-1'>
        <label class='mb-1' style="font-size: 18px;">Địa chỉ</label>
        <input class='form-control' type='text' id='street' name="address"  style="padding: 1.375rem 0.75rem;" required />
      </div>

      <div class='form-group mb-1'>
        <label class='mb-1' for='city' style="font-size: 18px;">Thành phố</label>
        <input type='text' id='city' name="city" class='form-control' style="padding: 1.375rem 0.75rem;" required />
      </div>

      <div class='form-row mb-2'>
        <div class='col-md-8'>
          <label class='mb-1' for='state' style="font-size: 18px;">Số điện thoại</label>
          <input id='phone' name="phone" class='form-control'  style="padding: 1.375rem 0.75rem;" required />
        </div>
        <div class='col-md-4'>

          <label class='mb-1' for='zip'>Mã Zip</label>
          <input type='text' id='zip' class='form-control'  style="padding: 1.375rem 0.75rem;">
        </div>
      </div>

      <h5>Card Info</h4>

        <hr class='mb-1'>

        <div class='form-group mb-1'>
          <label class='mb-1' for='nameOnCard' style="font-size: 18px;">Name on card</label>
          <input class='form-control' id='nameOnCard' placeholder='Johnny Big Dough' style="padding: 1.375rem 0.75rem;">
        </div>

        <div class='form-group mb-1'>
          <label class='mb-1' for='cardNum' style="font-size: 18px;">Card number</label>
          <input class='form-control' id='cardNum' placeholder style="padding: 1.375rem 0.75rem;">
        </div>

        <div class='form-row mb-1'>
          <div class='col'>
            <label class='mb-0' for='expMonth' style="font-size: 18px;">Expiration Month</label>
            <select class='form-control' id='expMonth'>
              <option value='01'>Jan</option>
              <option value='02'>Feb</option>
              <option value='03'>March</option>
              <option value='04'>April</option>
              <option value='05'>May</option>
              <option value='06'>June</option>
              <option value='07'>July</option>
              <option value='08'>Aug</option>
              <option value='09'>Sept</option>
              <option value='10'>Oct</option>
              <option value='11'>Nov</option>
              <option value='12'>Dec</option>
            </select>
          </div>
          <div class='col'>
            <label class='mb-0' for='expYear' style="font-size: 18px;">Exp Year</label>
            <select class='form-control' id='expYear'>
              <option value='2023'>2023</option>
              <option value='2023'>2022</option>
              <option value='2023'>2021</option>
              <option value='2023'>2020</option>
              <option value='2023'>2019</option>
            </select>
          </div>
          <div class='col'>
            <label class='mb-0' for='ccv' style="font-size: 18px;">CCV</label>
            <input placeholder='* * * *' class='form-control' id='ccv' style="padding: 1.375rem 0.75rem;">
          </div>
          <button class='btn btn-primary mt-4' type='submit' id="btn-submit"><i class="fas fa-lock mr-2"></i>Submit Payment</button>
        </div>
  </form>
</div>

    <!-- footer -->
    <footer>
      <section class="footer__top">
        <div class="container">
          <div class="row">
            <article class="footer__top-intro col-lg-5 col-md-4 col-sm-6">
              <h4 class="footer__top-intro-heading">Về chúng tôi</h4>
              <div class="footer__top-intro-content">
                Edubook là cửa hàng luôn cung cấp cho các bạn tìm tòi tri thức,
                đam mê đọc sách trên khắp cả nước.Chúng tôi sẽ liên tục cập nhật
                những cuốn sách hay nhất, mới nhất, chất lượng nhất giúp người
                đọc có những cuốn sách hay nhất để đọc! <br />
                <br />
                Điện thoại: 0352 860 701 <br />
                Email: teamed2@gmail.com <br />
                Zalo: 039.882.3232 <br />
              </div>
            </article>

            <article class="footer__top-policy col-lg-3 col-md-4 col-sm-6">
              <h4 class="footer__top-policy-heading">Chính sách mua hàng</h4>

              <ul class="footer__top-policy-list">
                <li class="footer__top-policy-item">
                  <a href="#" class="footer__top-policy-link"
                    >Hình thức đặt hàng</a
                  >
                </li>
                <li class="footer__top-policy-item">
                  <a href="#" class="footer__top-policy-link"
                    >Hình thức thanh toán</a
                  >
                </li>
                <li class="footer__top-policy-item">
                  <a href="#" class="footer__top-policy-link"
                    >Phương thức vận chuyển</a
                  >
                </li>
                <li class="footer__top-policy-item">
                  <a href="#" class="footer__top-policy-link"
                    >Chính sách đổi trả</a
                  >
                </li>
                <li class="footer__top-policy-item">
                  <a href="#" class="footer__top-policy-link"
                    >Hướng dẫn sử dụng</a
                  >
                </li>
              </ul>
            </article>

            <article
              class="footer__top-contact-wrap col-lg-4 col-md-4 col-sm-6"
            >
              <h4 class="footer__top-contact-heading">Hotline liên hệ</h4>

              <div class="footer__top-contact">
                <div class="footer__top-contact-icon">
                  <img
                    src="../view/img/phone_top.png"
                    class="footer__top-contact-img"
                  />
                </div>

                <div class="footer__top-contact-phone-wrap">
                  <div class="footer__top-contact-phone">039.882.3232</div>
                  <div class="footer__top-contact-des">
                    (Giải đáp thắc mắc 24/24)
                  </div>
                </div>
              </div>

              <h4 class="footer__top-contact-heading">Kết nối với chúng tôi</h4>

              <div class="footer__top-contact-social">
                <a href="https://www.facebook.com/nnguyenhieu" class="footer__top-contact-social-link">
                  <img src="../view/img/facebook.png" />
                </a>
                <a href="#" class="footer__top-contact-social-link">
                  <img src="../view/img/youtube.png" />
                </a>
                <a href="#" class="footer__top-contact-social-link">
                  <img src="../view/img/tiktok.png" />
                </a>
                <a href="#" class="footer__top-contact-social-link">
                  <img src="../view/img/zalo.png" />
                </a>
              </div>
            </article>
          </div>
        </div>
      </section>
      <section class="footer__bottom">
        <div class="container">
          <div class="row">
            <span class="footer__bottom-content"
              >@Bản quyền thuộc về edubook | Thiết kế bởi team ED2
            </span>
          </div>
        </div>
      </section>
    </footer>
    <!-- end footer -->
    <script src="../view/js/jq.js"></script>
    <script src="../view/js/orderform.js"></script>
  </body>
</html>
