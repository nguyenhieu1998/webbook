package com.webbookmvc.webbook.controller;

import com.webbookmvc.webbook.model.User;
import com.webbookmvc.webbook.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SignUpController {

    @Autowired
    UserRepository users;

    @RequestMapping("/signup")
    public String showSignUp(Model model){
        model.addAttribute("user", new User());
        return "signup";
    }

    @PostMapping("/signup")
    public String processSignUp(User user){
        users.save(user);
        return "signup";
    }
}
