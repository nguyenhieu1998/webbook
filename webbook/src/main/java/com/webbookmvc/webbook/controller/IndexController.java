package com.webbookmvc.webbook.controller;

import com.webbookmvc.webbook.model.Products;
import com.webbookmvc.webbook.repositories.HomeRepository;
import com.webbookmvc.webbook.repositories.ProductRelated;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Optional;

@Controller

// http:localhost:8080/index
public class IndexController {
//    @Autowired
//    private HomeRepository homeController;

    @Autowired
    ProductRelated productRelated;
    @RequestMapping("/index")
    public String index(ModelMap modelMap,  @RequestParam("page") Optional<Integer> page){
//        Iterable<Products> list = homeController.findAll();
//        modelMap.addAttribute("list", list);

        Pageable pageable = PageRequest.of(page.orElse(0), 6);
        String text = "Kinh tế";
        Page<Products> getProduct= productRelated.findByDanhMuc(text, pageable);
        modelMap.addAttribute("getProduct", getProduct);

        Pageable pageable2 = PageRequest.of(page.orElse(0), 8);
        String text2 = "Manga";
        Page<Products> getProductManga = productRelated.findByDanhMuc(text2, pageable2);
        modelMap.addAttribute("getProductManga", getProductManga);

        Pageable pageable1 = PageRequest.of(page.orElse(0), 6);
        String text1 = "english";
        Page<Products> getProductEnglish = productRelated.findByDanhMuc(text1,pageable1);
        modelMap.addAttribute("getProductEnglish", getProductEnglish);
        return "index";
    }
}
