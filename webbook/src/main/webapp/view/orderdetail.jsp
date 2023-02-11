<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c" %>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Chi tiết hoá đơn</title>
    <link rel="stylesheet" href="../view/css/orderdetail.css" />
    <link rel="stylesheet" href="../view/css/bootstrap1.min.css" />
    <link rel="stylesheet" href="../view/css/fontawesome.min.css" />
  </head>
  <body>
    <div
      class="d-flex flex-column justify-content-center align-items-center"
      id="order-heading"
    >
      <div class="text-uppercase">
        <p>Chi tiết hoá đơn</p>
      </div>
      <div class="h4">Bạn đã đặt hàng thành công</div>
      <div class="pt-1">
        <p>Order #12615 is currently<b class="text-dark"> processing</b></p>
      </div>
      <div class="btn close text-white">&times;</div>
    </div>
    <div class="wrapper bg-white">
      <div class="table-responsive">
        <table class="table table-borderless">
          <thead>
            <tr class="text-uppercase text-muted">
              <th scope="col">Sản phẩm</th>
              <th scope="col" class="text-right">Tổng</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <th scope="row">Thành tiền:</th>
              <td class="text-right"><b>${orderDetail1.getTongGia()}</b></td>
            </tr>
          </tbody>
        </table>
      </div>

      <!-- for item cart -->
      <c:forEach var="item" items="${itemCart}">
        <div
          class="d-flex justify-content-start align-items-center list my-2 py-1"
        >
          <div><b>${item.quantity}</b></div>
          <div class="mx-3">
            <img
              src="/${item.anhSp}"
              alt="apple"
              class="rounded-circle"
              width="30"
              height="30"
            />
          </div>
          <div class="order-item">${item.name}</div>
        </div>
      </c:forEach>
      <!-- end for item cart -->

      <div class="pt-2 border-bottom mb-3"></div>
      <div class="d-flex justify-content-start align-items-center pl-3">
        <div class="text-muted">Phương thức thanh toán</div>
        <div class="ml-auto">
          <img
            src="https://www.freepnglogos.com/uploads/mastercard-png/mastercard-logo-logok-15.png"
            alt=""
            width="30"
            height="30"
          />
          <label>Thanh toán khi nhận hàng</label>
        </div>
      </div>
      <div class="d-flex justify-content-start align-items-center py-1 pl-3">
        <div class="text-muted">Phí vận chuyển</div>
        <div class="ml-auto"><label>Free</label></div>
      </div>
      <div
        class="d-flex justify-content-start align-items-center pb-4 pl-3 border-bottom"
      >
        <div class="text-muted">
          <button class="text-white btn">0% Discount</button>
        </div>
        <div class="ml-auto price">0</div>
      </div>
      <div
        class="d-flex justify-content-start align-items-center pl-3 py-3 mb-4 border-bottom"
      >
        <div class="text-muted">Số tiền cần thanh toán</div>
        <div class="ml-auto h5">${orderDetail1.getTongGia()}</div>
      </div>
      <div class="row border rounded p-1 my-3">
        <div class="col-md-6 py-3">
          <div class="d-flex flex-column align-items start">
            <b>Địa chỉ thanh toán</b>
            <p class="text-justify pt-2">${orderDetail1.getDiaChi()}</p>
            <p class="text-justify">SĐT: ${orderDetail1.getPhone()}</p>
          </div>
        </div>
        <div class="col-md-6 py-3">
          <div class="d-flex flex-column align-items start">
            <b>Địa chỉ nhận hàng</b>
            <p class="text-justify pt-2">${orderDetail1.getDiaChi()}</p>
            <p class="text-justify">SĐT: ${orderDetail1.getPhone()}</p>
          </div>
        </div>
      </div>
      <div class="pl-3 font-weight-bold">Thông tin liên quan</div>
      <div class="d-sm-flex justify-content-between rounded my-3 subscriptions">
        <div><b>#9632</b></div>
        <div>${orderDetail1.orderDetail}</div>
        <div>Status: Đang xử lý</div>
        <div>
          Tổng:
          <b>
            ${orderDetail1.getTongGia()} for ${orderDetail1.getSoLuong()}
            items</b
          >
        </div>
      </div>
      <form action="/goback" method="get">
        <button
          class="d-sm-flex justify-content-between rounded my-3 subscriptions"
        >
          <a href="/home">Trở về Trang chủ</a>
        </button>
      </form>
    </div>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  </body>
</html>
