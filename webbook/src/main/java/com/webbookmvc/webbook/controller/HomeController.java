package com.webbookmvc.webbook.controller;

import com.webbookmvc.webbook.model.Products;
import com.webbookmvc.webbook.repositories.HomeRepository;
import com.webbookmvc.webbook.repositories.ProductRelated;
import com.webbookmvc.webbook.repositories.SearchRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping(path = "home")
// http:localhost:8080/home
public class HomeController {
    @Autowired
    private HomeRepository homeController;
    @Autowired
    SearchRepository searchRepository;

    @Autowired
    ProductRelated productRelated;
    @RequestMapping(value = "", method = RequestMethod.GET)
    public String getAllProduct(ModelMap modelMap, @RequestParam("page")Optional<Integer> page){
//        Iterable<Products> list = homeController.findAll();
//        modelMap.addAttribute("list", list);



        //        <!-- category 1: Sách trong nước-->
        Pageable pageable = PageRequest.of(page.orElse(0), 6);
        String text = "Kinh tế";
        Page<Products> getProduct= productRelated.findByDanhMuc(text, pageable);
        modelMap.addAttribute("getProduct", getProduct);

        //        <!-- category 2: Sách nước ngoài-->
        Pageable pageable1 = PageRequest.of(page.orElse(0), 6);
        String text1 = "english";
        Page<Products> getProductEnglish = productRelated.findByDanhMuc(text1,pageable1);
        modelMap.addAttribute("getProductEnglish", getProductEnglish);

        //        <!-- category 3: truyện manga-->
        Pageable pageable2 = PageRequest.of(page.orElse(0), 6);
        String text2 = "Manga";
        Page<Products> getProductManga = productRelated.findByDanhMuc(text2, pageable2);
        modelMap.addAttribute("getProductManga", getProductManga);
        return "home";
    }

    public List<Products> search(String keyword) {
        return searchRepository.search(keyword);
    }

    @GetMapping("/manga")
    public String getMangaComic(Model model){
        String text = "Manga";
        List<Products> getAllManga = productRelated.findByDanhMuc(text);
        model.addAttribute("getAllManga", getAllManga);
        return "manga";
    }

    @GetMapping("/sachviet")
    public String getSachViet(Model model){
        String mes = "Kinh tế";
        List<Products> getAllBook = productRelated.findByDanhMuc(mes);
        model.addAttribute("getAllBook", getAllBook);
        return "sachviet";
    }

    @GetMapping("/englishbook")
    public String getEnglishBook(Model model){
        String mes = "english";
        List<Products> getAllEnglishBook = productRelated.findByDanhMuc(mes);
        model.addAttribute("getAllEnglishBook", getAllEnglishBook);
        return "englishbook";
    }

    @GetMapping("/contact")
    public String getContact(){
        return "contact";
    }
}
