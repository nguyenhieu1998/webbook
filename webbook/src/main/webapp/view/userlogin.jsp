<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c" %>
<html lang="en" xmlns="https://www.thymeleaf.org">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Đăng nhập</title>
    <link rel="stylesheet" href="../view/css/login.css" />
  </head>
  <body>
    <div class="overlay">
      <!-- LOGN IN FORM by Omar Dsoky -->
      <form action="http://localhost:8080/userLogin" method="post">
        <div class="con">
          <header class="head-form">
            <h2>Log In</h2>
            <p>login here using your username and password</p>
            <br />
            <p style="background-color: Tomato">${message}</p>
          </header>
          <div class="field-set">
            <!--   user name Input-->
            <input
              class="form-input"
              id="email"
              name="email"
              type="text"
              placeholder="Email"
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
              required
            />
            <br />
            <!-- checkbox remember me -->
            <input
              type="checkbox"
              value="isRemember"
              id="rememberMe"
              name="checkbox"
            />
            <label for="rememberMe">Remember me</label>
            <br />
            <button type="submit" class="log-in">Log In</button>
          </div>
          <div class="other">
            <button class="btn submits frgt-pass">Forgot Password</button>
            <button class="btn submits sign-up">
              <a href="/signup"> Sign up </a>
            </button>
          </div>
        </div>
      </form>
    </div>
  </body>
</html>
