<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c" %>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Danh mục sản phẩm - EduBook</title>
<script src="../view/js/jquery-3.3.1.js"></script>
<script src="../view/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="../view/css/bootstrap.min.css" />
<link
  href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500&display=swap"
  rel="stylesheet"
/>
<link rel="stylesheet" href="../view/fontawesome/css/all.min.css" />
<link
  href="https://fonts.googleapis.com/css2?family=Paytone+One&display=swap"
  rel="stylesheet"
/>
<link rel="stylesheet" href="../view/css/style.css" />
<link rel="stylesheet" href="../view/css/home.css" />
<link rel="stylesheet" href="../view/css/category.css" />
<link rel="stylesheet" href="../view/fontawesome/css/all.min.css" />
<header id="header">
  <!-- header top -->
  <div class="header__top">
    <div class="container">
      <section class="row flex">
        <div class="col-lg-5 col-md-0 col-sm-0 heade__top-left">
          <span>EduBook - Cội nguồn của tri thức</span>
        </div>
        <nav class="col-lg-7 col-md-0 col-sm-0 header__top-right">
          <%if (session.getAttribute("email") != null) { %>
          <ul class="header__top-list">
            <li class="header__top-item">
              <a href="/home/contact" class="header__top-link">Hỏi đáp</a>
            </li>
            <li class="header__top-item">
              <a href="#" class="header__top-link">Hướng dẫn</a>
            </li>
            <li class="header__top-item">
              <a href="#" class="header__top-link"
                ><%= session.getAttribute("email") %></a
              >
            </li>
            <form action="/logout" method="post">
              <button
                class="header__top-link"
                type="submit"
                style="background-color: red"
              >
                Đăng xuất
              </button>
            </form>
          </ul>
          <% } else { %>
          <ul class="header__top-list">
            <li class="header__top-item">
              <a href="/home/contact" class="header__top-link">Hỏi đáp</a>
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
          <% } %>
        </nav>
      </section>
    </div>
  </div>
  <!--end header top -->

  <!-- header bottom -->
  <form action="/search" method="get">
    <div class="header__bottom">
      <div class="container">
        <section class="row">
          <div class="col-lg-3 col-md-4 col-sm-12 header__logo">
            <h1 class="header__heading">
              <a href="/index" class="header__logo-link">
                <img
                  src="../../view/img/logo1.png"
                  alt="Logo"
                  class="header__logo-img"
                />
              </a>
            </h1>
          </div>

          <div class="col-lg-6 col-md-7 col-sm-0 header__search">
            <select name="" id="categorySelect" class="header__search-select">
              <option value="0">All</option>
              <option value="1">Sách tiếng việt</option>
              <option value="2">Sách nước ngoài</option>
              <option value="3">Manga-Comic</option>
            </select>

            <input
              type="text"
              id="productNameSelect"
              name="keyword"
              class="header__search-input"
              placeholder="Tìm kiếm tại đây..."
            />
            <button class="header__search-btn">
              <div class="header__search-icon-wrap">
                <i
                  type="submit"
                  value="search"
                  class="fas fa-search header__search-icon"
                ></i>
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
            <!-- <%if(session.getAttribute("totalitems") == null) {%> -->
            <div class="header__cart-icon-wrap">
              <span class="header__notice">${totalitems}</span>
              <i class="fas fa-shopping-cart header__nav-cart-icon"></i>
            </div>
            <!-- <% } else {%> -->
            <!-- <div class="header__cart-icon-wrap">
              <span class="header__notice">${totalitems}</span>
              <i class="fas fa-shopping-cart header__nav-cart-icon"></i>
            </div>
            <% } %> -->
          </a>
        </section>
      </div>
    </div>
  </form>
  <!--end header bottom -->

  <!-- header nav -->
  <div class="header__nav">
    <div class="container">
      <section class="row">
        <div class="header__nav-menu-wrap col-lg-3 col-md-0 col-sm-0">
          <i class="fas fa-bars header__nav-menu-icon"></i>
          <div class="header__nav-menu-title">Danh mục sản phẩm</div>
        </div>

        <div class="header__nav col-lg-9 col-md-0 col-sm-0">
          <ul class="header__nav-list">
            <li class="header__nav-item">
              <a href="#" class="header__nav-link">Trang chủ</a>
            </li>

            <li class="header__nav-item">
              <a href="/home/sachviet" class="header__nav-link"
                >Sách Trong Nước</a
              >
            </li>
            <li class="header__nav-item">
              <a href="/home/englishbook" class="header__nav-link"
                >Sách Nước ngoài</a
              >
            </li>
            <li class="header__nav-item">
              <a href="/home/manga" class="header__nav-link">Manga - Comic</a>
            </li>
            <li class="header__nav-item">
              <a href="#" class="header__nav-link">Bài viết</a>
            </li>
            <li class="header__nav-item">
              <a href="/home/contact" class="header__nav-link">Liên hệ</a>
            </li>
          </ul>
        </div>
      </section>
    </div>
  </div>
</header>
<script src="../view/js/jq.js"></script>
<!-- <script src="../view/js/category.js"></script> -->
