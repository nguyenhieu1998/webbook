<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c" %>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Đăng ký</title>
    <link rel="stylesheet" href="../view/css/login.css" />
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/sweetalert2@11.6.15/dist/sweetalert2.min.css"
    />
  </head>
  <body>
    <div class="overlay">
      <!-- LOGN IN FORM by Omar Dsoky -->
      <form action="/signup" method="post">
        <div class="con">
          <header class="head-form">
            <h2>Sign Up</h2>
            <p>Sign Up here using your username and password</p>
          </header>
          <br />
          <div class="field-set">
            <!--   user email Input-->
            <input
              name="email"
              class="form-input"
              id="txt-input"
              type="text"
              placeholder="Email"
              field="email"
              required
            />
            <br />
            <!--   Password -->
            <span class="input-item">
              <i class="fa fa-key"></i>
            </span>
            <!--   Password Input-->
            <input
              class="form-input"
              type="password"
              placeholder="Password"
              id="pwd"
              name="password"
              field="password"
              required
            />
            <br />
            <!-- Confirm password -->
            <span class="input-item">
              <i class="fa fa-key"></i>
            </span>
            <!--  Confirm password Input-->
            <input
              class="form-input"
              type="password"
              placeholder="Confirm Password"
              id="pwd"
              name=""
              required
            />
            <br />
            <!-- Phone -->
            <span class="input-item">
              <i class="fa fa-key"></i>
            </span>
            <input
              class="form-input"
              type="text"
              placeholder="Phone number"
              id="phone"
              name="phone"
              field="phone"
              required
            />
            <br />
            <button id="btn" class="log-in" type="submit">Sign Up</button>
          </div>
          <!--   other buttons -->
          <div class="other">
            <button class="btn submits frgt-pass">Have an account?</button>
            <button class="btn submits sign-up">
              <a href="/login">Log in</a>
            </button>
          </div>
        </div>
      </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.6.15/dist/sweetalert2.min.js"></script>
    <!-- <script>
      document.querySelector("button").addEventListener("click", (event) => {
        event.preventDefault();
        Swal.fire("Good job!", "You are sign up success", "success");
      });
    </script> -->
    <!-- thêm dk mà anh
    vậy nếu muốn dùng cái aler thì có cách nào ko ạ để hiển thị thông báo dky thành công ấy ạ
    Muốn thông báo thành công hay thất bại sau khi đăng ký thì em dùng ajax của javascript
    validate phải ko ạ
    không phải, ajax nó thực hiện truyền dữ liệu từ client đến server (giống như hành động em submit form ấy)
    mà ko cần phải reload lại trang, khi ajax gủi data đi, nó sẽ nhận dc status thành công hay thất bại.
    lúc này em sẽ sử dụng status này để check nên hiển thị alert nào (success hay error).
    :)) quả này em phải nghiêm cữu thêm anh ạ tại em chưa rành lắm về cái ajax này
    thực ra mình đã học ajax rồi. trong bài học fetchAPI của javascript đó, thực ra fetchAPI là biến thể của ajax,
    nó tương tự như ajax, nhưng tiện hơn ajax
    vào đúng cái bài em xem lại vẫn chưa hiểu hết anh ạ
    để em tìm hiểu thêm ạ
    Uhm em nghiên cứu kỹ vào, đi phỏng vấn mà biết ajax là 1 điểm cộng đó, đó là kiến thức nâng cao
    oke anh -->
  </body>
</html>
