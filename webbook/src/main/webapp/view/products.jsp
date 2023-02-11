<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c" %>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Sản phẩm</title>
    <script src="../../view/js/jquery-3.3.1.js"></script>
    <script src="../../view/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../../view/css/bootstrap.min.css" />
    <link
      href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500&display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="../../view/fontawesome/css/all.min.css" />
    <link rel="stylesheet" href="../../view/css/style.css" />
    <link rel="stylesheet" href="../../view/css/product.css" />
  </head>
  <body>
    <!-- header -->
    <jsp:include page="header.jsp" />
    <!-- <header id="header"> -->
    <!-- header top -->
    <!-- <div class="header__top">
        <div class="container">
          <section class="row flex">
            <div class="col-lg-5 col-md-0 col-sm-0 heade__top-left">
              <span>EduBook - Cội nguồn của tri thức</span>
            </div>

            <nav class="col-lg-7 col-md-0 col-sm-0 header__top-right">
              <ul class="header__top-list">
                <li class="header__top-item">
                  <a href="#" class="header__top-link"> Hỏi đáp</a>
                </li>
                <li class="header__top-item">
                  <a href="#" class="header__top-link">Hướng dẫn</a>
                </li>
                <li class="header__top-item">
                  <a href="/signup" class="header__top-link">Đăng ký</a>
                </li>
                <li class="header__top-item">
                  <a href="/login" class="header__top-link">Đăng nhập</a>
                </li>
              </ul>
            </nav>
          </section>
        </div>
      </div>
      end header top -->

    <!-- header bottom -->
    <!-- <div class="header__bottom">
        <div class="container">
          <section class="row">
            <div class="col-lg-3 col-md-4 col-sm-12 header__logo">
              <h1 class="header__heading">
                <a href="/home" class="header__logo-link">
                  <img
                    src="../../view/img/logo1.png"
                    alt="Logo"
                    class="header__logo-img"
                  />
                </a>
              </h1>
            </div>

            <div class="col-lg-6 col-md-7 col-sm-0 header__search">
              <select name="" id="" class="header__search-select">
                <option value="0">All</option>
                <option value="1">Sách tiếng việt</option>
                <option value="2">Sách sách nước ngoài</option>
                <option value="3">Manga-Comic</option>
              </select>
              <input
                type="text"
                class="header__search-input"
                placeholder="Tìm kiếm tại đây..."
              />
              <button class="header__search-btn">
                <div class="header__search-icon-wrap">
                  <i class="fas fa-search header__search-icon"></i>
                </div>
              </button>
            </div>

            <div class="col-lg-2 col-md-0 col-sm-0 header__call">
              <div class="header__call-icon-wrap">
                <i class="fas fa-phone-alt header__call-icon"></i>
              </div>
              <div class="header__call-info">
                <div class="header__call-text">Gọi điện tư vấn</div>
                <div class="header__call-number">039.882.3232</div>
              </div>
            </div>

            <a
              href="/addtocart/views"
              class="col-lg-1 col-md-1 col-sm-0 header__cart"
            >
              <div class="header__cart-icon-wrap">
                <span class="header__notice">4</span>
                <i class="fas fa-shopping-cart header__nav-cart-icon"></i>
              </div>
            </a>
          </section>
        </div>
      </div> -->
    <!--end header bottom -->

    <!-- header nav -->
    <!-- <div class="header__nav">
        <div class="container">
          <section class="row">
            <div class="header__nav-menu-wrap col-lg-3 col-md-0 col-sm-0">
              <i class="fas fa-bars header__nav-menu-icon"></i>
              <div class="header__nav-menu-title">Danh mục sản phẩm</div>
            </div>

            <div class="header__nav col-lg-9 col-md-0 col-sm-0">
              <ul class="header__nav-list">
                <li class="header__nav-item">
                  <a href="index.html" class="header__nav-link">Trang chủ</a>
                </li>
                <li class="header__nav-item">
                  <a href="category.html" class="header__nav-link"
                    >Danh mục sản phẩm</a
                  >
                </li>
                <li class="header__nav-item">
                  <a href="product.html" class="header__nav-link">Sản phẩm</a>
                </li>
                <li class="header__nav-item">
                  <a href="post.html" class="header__nav-link">Bài viết</a>
                </li>
                <li class="header__nav-item">
                  <a href="#" class="header__nav-link">Tuyển cộng tác viên</a>
                </li>
                <li class="header__nav-item">
                  <a href="contact.html" class="header__nav-link">Liên hệ</a>
                </li>
              </ul>
            </div>
          </section>
        </div>
      </div>
    </header> -->
    <!--end header nav -->
    <!-- score-top-->

    <button onclick="topFunction()" id="myBtn-scroll" title="Go to top">
      <i class="fas fa-chevron-up"></i>
    </button>

    <!-- product -->
    <section class="product">
      <div class="container">
        <div class="row bg-white pt-4 pb-4 border-bt pc">
          <nav class="menu__nav col-lg-3 col-md-12 col-sm-0">
            <ul class="menu__list">
              <li class="menu__item menu__item--active">
                <a href="#" class="menu__link">
                  <img
                    src="../../view/img/baby-boy.png"
                    alt=""
                    class="menu__item-icon"
                    id="Capa_1"
                    enable-background="new 0 0 512 512"
                    height="512"
                    viewBox="0 0 512 512"
                    width="512"
                  />
                  Sách Tiếng Việt</a
                >
              </li>
              <li class="menu__item">
                <a href="#" class="menu__link">
                  <img
                    src="../../view/img/translation.png"
                    alt=""
                    class="menu__item-icon"
                    id="Capa_1"
                    enable-background="new 0 0 512 512"
                    height="512"
                    viewBox="0 0 512 512"
                    width="512"
                  />
                  Sách nước ngoài</a
                >
              </li>

              <li class="menu__item">
                <a href="#" class="menu__link">
                  <img
                    src="../../view/img/1380754_batman_comic_hero_superhero_icon.png"
                    alt=""
                    class="menu__item-icon"
                    viewBox="0 0 512 512"
                    width="1012"
                    height="512"
                  />

                  Manga - Comic</a
                >
              </li>
            </ul>
          </nav>

          <article class="product__main col-lg-9 col-md-12 col-sm-12">
            <div class="row">
              <div class="product__main-img col-lg-4 col-md-4 col-sm-12">
                <div class="product__main-img-primary">
                  <img src="/${listProduct.getAnhSp()}" />
                </div>
              </div>

              <div class="product__main-info col-lg-8 col-md-8 col-sm-12">
                <div class="product__main-info-breadcrumb">
                  Trang chủ / Sản phẩm
                </div>

                <a href="#" class="product__main-info-title">
                  <h2 class="product__main-info-heading">
                    ${listProduct.getTenSp()}
                  </h2>
                </a>

                <div class="product__main-info-rate-wrap">
                  <i class="fas fa-star product__main-info-rate"></i>
                  <i class="fas fa-star product__main-info-rate"></i>
                  <i class="fas fa-star product__main-info-rate"></i>
                  <i class="fas fa-star product__main-info-rate"></i>
                  <i class="fas fa-star product__main-info-rate"></i>
                </div>

                <div class="product__main-info-price">
                  <span class="product__main-info-price-current">
                    ${listProduct.getGiaSp()}
                  </span>
                </div>

                <div class="product__main-info-description">
                  Think And Grow Rich - Nghĩ Giàu Và Làm Giàu là một trong những
                  cuốn sách bán chạy nhất mọi thời đại. Đã hơn 60 triệu bản được
                  phát hành với gần trăm ngôn ngữ trên toàn thế giới và được
                  công nhận là cuốn sách tạo ra nhiều triệu phú, một cuốn sách
                  truyền cảm hứng thành công nhiều hơn bất cứ...
                </div>

                <div class="product__main-info-cart">
                  <!--<div class="product__main-info-cart-quantity">
                                    <input type="button" value="-"  class="product__main-info-cart-quantity-minus">
                                    <input type="number" step="1" min="1" max="999" value="1" class="product__main-info-cart-quantity-total">
                                    <input type="button" value="+" class="product__main-info-cart-quantity-plus">
                                </div>-->

                  <div class="product__main-info-cart-btn-wrap">
                    <button class="product__main-info-cart-btn">
                      <a href="/addtocart/add/${listProduct.getId()}">
                        Thêm vào giỏ hàng
                      </a>
                    </button>
                  </div>
                </div>

                <div class="product__main-info-contact">
                  <a href="#" class="product__main-info-contact-fb">
                    <i class="fab fa-facebook-f"></i>
                    Chat Facebook
                  </a>
                  <div class="product__main-info-contact-phone-wrap">
                    <div class="product__main-info-contact-phone-icon">
                      <i class="fas fa-phone-alt"></i>
                    </div>

                    <div class="product__main-info-contact-phone">
                      <div class="product__main-info-contact-phone-title">
                        Gọi điện tư vấn
                      </div>
                      <div class="product__main-info-contact-phone-number">
                        ( 0352.860.701)
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="row bg-white">
              <div class="col-12 product__main-tab">
                <a
                  href="#"
                  class="product__main-tab-link product__main-tab-link--active"
                >
                  Mô tả
                </a>
                <a href="#" class="product__main-tab-link"> Đánh giá </a>
              </div>

              <div class="col-12 product__main-content-wrap">
                <h2 class="product__main-content-heading">Học tập qua dự án</h2>
                ${listProduct.getThongTinSp()}
                <h2 class="thongtin"><span>Thông tin chi tiết</span></h2>
                <div class="table-responsive">
                  <table class="table table-bordered">
                    <tbody>
                      <tr>
                        <th>Tên Nhà Cung Cấp:</th>
                        <td>${listProduct.getNhaCc()}</td>
                      </tr>
                      <tr>
                        <th>Tác giả</th>
                        <td>${listProduct.getTacGia()}</td>
                      </tr>
                      <tr>
                        <th>Nhà sản xuất</th>
                        <td>${listProduct.getNhaSx()}</td>
                      </tr>
                      <tr>
                        <th>Kích thước</th>
                        <td>${listProduct.getKichThuoc()}</td>
                      </tr>
                      <tr>
                        <th>Số trang</th>
                        <td>${listProduct.getSoTrang()}</td>
                      </tr>
                      <tr>
                        <th>Mã Hàng:</th>
                        <td>${listProduct.getMaHang()}</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </article>

          <aside class="product__aside col-lg-3 col-md-0 col-sm-0">
            <div class="product__aside-top">
              <div class="product__aside-top-item">
                <img src="../../view/img/shipper.png" />
                <div class="product__aside-top-item-text">
                  <p>Giao hàng nhanh chóng</p>
                  <span> Chỉ trong vòng 24h </span>
                </div>
              </div>
              <div class="product__aside-top-item">
                <img src="../../view/img/brand.png" />
                <div class="product__aside-top-item-text">
                  <p>Sản phẩm chính hãng</p>
                  <span> Sản phẩm nhập khẩu 100% </span>
                </div>
              </div>
              <div class="product__aside-top-item">
                <img src="../../view/img/less.png" />
                <div class="product__aside-top-item-text">
                  <p>Mua hàng tiết kiệm</p>
                  <span> Rẻ hơn từ 10% đến 30% </span>
                </div>
              </div>
            </div>

            <div class="product__aside-bottom">
              <h3 class="product__aside-heading">Có thể bạn thích</h3>
              <c:forEach var="productsList" items="${productsList}">
                <div class="product__aside-list">
                  <div class="product__aside-item product__aside-item--border">
                    <div class="product__aside-img-wrap">
                      <a
                        href="/products/getProductById/${productsList.getId()}"
                      >
                        <img
                          src="/${productsList.getAnhSp()}"
                          class="product__aside-img"
                      /></a>
                    </div>
                    <div class="product__aside-title">
                      <a
                        href="/products/getProductById/${productsList.getId()}"
                        class="product__aside-link"
                      >
                        <h4 class="product__aside-link-heading">
                          ${productsList.getTenSp()}
                        </h4>
                      </a>

                      <div class="product__aside-rate-wrap">
                        <i class="fas fa-star product__aside-rate"></i>
                        <i class="fas fa-star product__aside-rate"></i>
                        <i class="fas fa-star product__aside-rate"></i>
                        <i class="fas fa-star product__aside-rate"></i>
                        <i class="fas fa-star product__aside-rate"></i>
                      </div>

                      <div class="product__aside-price">
                        <span class="product__aside-price-current"
                          >${productsList.getGiaSp()}</span
                        >
                      </div>
                    </div>
                  </div>
                </div>
              </c:forEach>
            </div>
          </aside>
        </div>

        <div class="customer-reviews row pb-4 pb-4 py-4 pb-4 py-4 py-4">
          <div class="col-lg-12 col-md-12 col-sm-12">
            <h3>Bình luận sản phẩm</h3>
            <form id="formgroupcomment" method="post">
              <div class="form-group">
                <label>Tên:</label>
                <input
                  name="comm_name"
                  required=""
                  type="text"
                  id="form-name"
                  class="form-control"
                />
              </div>
              <div class="form-group">
                <label>Email:</label>
                <input
                  name="comm_mail"
                  required=""
                  type="email"
                  class="form-control"
                  id="pwd"
                />
              </div>
              <div class="form-group">
                <label>Nội dung:</label>
                <textarea
                  name="comm_details"
                  required=""
                  rows="8"
                  id="formcontent"
                  class="form-control"
                ></textarea>
              </div>
              <button
                type="submit"
                name="sbm"
                id="submitcomment"
                class="btn btn-primary"
              >
                Gửi
              </button>
            </form>
          </div>
        </div>

        <div class="product-comment row pb-4 pb-4 py-4 pb-4 py-4 py-4">
          <div class="col-lg-12 col-md-12 col-sm-12">
            <div class="comment-item">
              <ul class="item-reviewer">
                <div class="comment-item-user">
                  <img src="#" alt="" class="comment-item-user-img" />

                  <li><b>Nguyễn Nhung</b></li>
                </div>

                <br />
                <li>2021-08-17 20:40:10</li>
                <li>
                  <h4>
                    Sách được bọc nilong kỹ càng, sạch, mới. Giao hàng nhanh.
                    Nội dung chưa đọc nhưng nhìn sơ có vẻ hấp dẫn và rất nhiều
                    kiến thức bổ ích. Mình ở nước ngoài nhờ người mua rồi gửi
                    qua nên khâu đóng gói của người bán quan trọng lắm, giúp cho
                    sách vận chuyển đi xa cũng không bị hư tổn gì. Sẽ tiếp tục
                    ủng hộ. Love book shop .From Hust with LOve
                  </h4>
                </li>
              </ul>
            </div>
            <div class="comment-item">
              <ul class="item-reviewer">
                <div class="comment-item-user">
                  <img src="#" alt="" class="comment-item-user-img" />
                  <li><b>Tùng Lương</b></li>
                </div>

                <br />
                <li>2021-02-17 12:20:10</li>
                <li>
                  <h4>
                    Sách được đóng rất cẩn thận, hộp ko bị móp méo gì cả .... ,
                    giao hàng chậm cả tuần, Rõ trên app báo hàng đến kho rồi cả
                    tuần k thấy đâu. shipper rất vui tính và thân thiện . Còn
                    ngoài ra thì sách rất đẹp nha mọi người. Giấy sáng và thơm.
                    Từ bìa tới màu sắc trong sách.Thấy mọi người bảo hay lắm nên
                    mua về thử chứ mk chưa có đọc nên chưa thể review về nội
                    dung.
                  </h4>
                </li>
              </ul>
            </div>
            <div class="comment-item">
              <ul class="item-reviewer">
                <div class="comment-item-user">
                  <img src="#" alt="" class="comment-item-user-img" />
                  <li><b>Trung Trần</b></li>
                </div>

                <br />

                <li>2020-12-27 10:48:20</li>
                <li>
                  <h4>
                    Love it! - Sách bìa cứng, in màu, giấy dày. - Giao hàng đúng
                    hẹn, bao bì cẩn thận. -mình đã tham gia 1 lớp nhưng chưa
                    thông lắm nên mua về đọc lại.Giờ thì thông rồi .Giá hơi chát
                    nhưng phù hợp, hy vọng sẽ có giá tốt hơn vào kỳ tái bản kế
                    tiếp! - Nội dung hay, công phu, nhiều thuật ngữ nhưng viết
                    dễ hiểu, hữu ích; có lẽ dịch cũng tốt nữa! Tò mò quá nên
                    mình mua thêm ebook tiếng Anh để đọc thêm nâng cao từ vựng.
                    Quyển này đọc nguyên gốc (tiếng Anh) trước chắc sẽ rất khó
                    đọc. Bạn nào làm quản lý mua đọc cũng hữu ích! Đáng đồng
                    tiền bát gạo!
                  </h4>
                </li>
              </ul>
            </div>
            <div class="comment-item">
              <ul class="item-reviewer">
                <div class="comment-item-user">
                  <img src="#" alt="" class="comment-item-user-img" />
                  <li><b>Sơn Hoàng</b></li>
                </div>
                <br />

                <li>2020-08-17 20:40:18</li>
                <li>
                  <h4>
                    sách được đóng trong hộp và có 1 lớp màng nilon bảo vệ. Gáy
                    sách ko bị móp méo, chất lượng giấy, màu sắc rất tuyệt. Nội
                    dung cực kỳ hữu ích, rất dễ hiểu cho thể loại sách thuần về
                    lý thuyết tâm lý.Nội dung sách mới, lạ. Sách sử dụng rất
                    nhiều thuật ngữ khoa học, nên đòi hỏi người đọc kiên nhẫn và
                    có hiểu biết nhất định. Cực kỳ hài lòng và sẽ ủng hộ tiếp
                  </h4>
                </li>
              </ul>
            </div>
          </div>
        </div>

        <section class="product__love col-12 mt-4">
          <div class="row bg-white">
            <div class="col-lg-12 col-md-12 col-sm-12 product__love-title">
              <h2 class="product__love-heading">Sản phẩm tương tự</h2>
            </div>
          </div>
          <div class="row bg-white">
            <c:forEach var="productsList" items="${productsList}">
              <div class="product__panel-item col-lg-2 col-md-3 col-sm-6">
                <div class="product__panel-img-wrap">
                  <a href="/products/getProductById/${productsList.getId()}"
                    ><img
                      src="/${productsList.getAnhSp()}"
                      alt=""
                      class="product__panel-img"
                  /></a>
                </div>
                <h3 class="product__panel-heading">
                  <a
                    href="/products/getProductById/${productsList.getId()}"
                    class="product__panel-link"
                    >${productsList.getTenSp()}
                  </a>
                </h3>
                <div class="product__panel-rate-wrap">
                  <i class="fas fa-star product__panel-rate"></i>
                  <i class="fas fa-star product__panel-rate"></i>
                  <i class="fas fa-star product__panel-rate"></i>
                  <i class="fas fa-star product__panel-rate"></i>
                  <i class="fas fa-star product__panel-rate"></i>
                </div>

                <div class="product__panel-price">
                  <span
                    class="product__panel-price-old product__panel-price-old-hide"
                  >
                    85.000đ
                  </span>
                  <span class="product__panel-price-current">
                    ${productsList.getGiaSp()}</span
                  >
                </div>
              </div>
            </c:forEach>
          </div>
        </section>
      </div>
    </section>
    <!--product -->

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
                    src="../../view/img/phone_top.png"
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
                <a
                  href="https://www.facebook.com/nnguyenhieu"
                  class="footer__top-contact-social-link"
                >
                  <img src="../../view/img/facebook.png" />
                </a>
                <a href="#" class="footer__top-contact-social-link">
                  <img src="../../view/img/youtube.png" />
                </a>
                <a href="#" class="footer__top-contact-social-link">
                  <img src="../../view/img/tiktok.png" />
                </a>
                <a href="#" class="footer__top-contact-social-link">
                  <img src="../../view/img/zalo.png" />
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

    <script src="../../view/js/jq.js"></script>
    <!-- <script src="../../view/js/product.js"></script> -->
  </body>
</html>
