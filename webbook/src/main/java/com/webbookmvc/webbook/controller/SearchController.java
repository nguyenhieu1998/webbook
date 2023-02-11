package com.webbookmvc.webbook.controller;

import com.webbookmvc.webbook.model.Products;
import com.webbookmvc.webbook.repositories.SearchRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class SearchController {
    @Autowired
    SearchRepository homeController;
    @GetMapping("/search")
    public String search(Model model, HttpServletRequest request){
        String keyWord = request.getParameter("keyword");
        System.out.println("keyword " + keyWord);

        List<Products> search = homeController.search(keyWord);

        model.addAttribute("search", search);

        return "search";
    }
}
