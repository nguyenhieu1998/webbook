package com.webbookmvc.webbook.controller;

import com.webbookmvc.webbook.model.UserLogin;
import com.webbookmvc.webbook.repositories.LoginRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpCookie;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.jsf.FacesContextUtils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.net.http.HttpRequest;
import java.util.Optional;

@Controller

// http:localhost:8080/login
public class UserLoginController {


    @GetMapping("/login")
    public String getUserLogin(Model model){
        UserLogin user = new UserLogin();
        model.addAttribute("user", user);
        return "userlogin";
    }

    @Autowired
    LoginRepository loginRepository;
    @PostMapping("/userLogin")
    public String loginUser(@ModelAttribute("user") UserLogin user, final Model model,
                            @RequestParam(value = "isRemember", required = false) String checkBox, HttpServletRequest request, HttpServletResponse response){

        String userId = user.getEmail();
        Optional<UserLogin> userData = loginRepository.findById(userId);
        String emailName = userData.get().getEmail();
        String password = userData.get().getPassword();
        HttpSession session = request.getSession(true);
        if(user.getPassword().equals(password) && user.getEmail().equals(emailName)) {
            // lưu email vào trong session
            session.setAttribute("email", emailName);
            // lưu lại phiên đăng nhập vào trong cookie
            Cookie userEmail = new Cookie("email", emailName);

            Cookie userPassword = new Cookie("password", password);
            if(checkBox != null){
                userEmail.setMaxAge(60 * 60 * 24);
                userPassword.setMaxAge(60 * 60 * 24);
            } else {
                userEmail.setMaxAge(0);
                userPassword.setMaxAge(0);
            }
            response.addCookie(userEmail); // lưu user email lên chorm và set thời gian là 24H
            response.addCookie(userPassword);// lưu user password lên chorm và set thời gian là 24H
            return "redirect:/home";
        }else {
            String message = "wrong email or password";
            model.addAttribute("message", message);
            return "userlogin";
        }
    }

    @PostMapping("/logout")
    public void logout(HttpServletRequest request, HttpServletResponse response){
        Cookie cookie = new Cookie("email", null);
        cookie.setMaxAge(0);
        cookie.setSecure(true);
        cookie.setHttpOnly(true);
        cookie.setPath("/logout");
        response.addCookie(cookie);
        try{
            HttpSession session = request.getSession(false);
            if(session != null){
                session.invalidate();
                response.sendRedirect(request.getContextPath() + "/home");
            }
        } catch (Exception e){
            System.out.println(e.getMessage());
            e.printStackTrace();
        }
    }
}
