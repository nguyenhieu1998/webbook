package com.webbookmvc.webbook.controller;

import com.webbookmvc.webbook.model.Products;
import com.webbookmvc.webbook.repositories.HomeRepository;
import com.webbookmvc.webbook.repositories.ProductRelated;
import com.webbookmvc.webbook.repositories.ProductsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping(path = "products")
public class InformationController {
    @Autowired
    ProductsRepository productsRepository;

    @Autowired
    ProductRelated productRelated;
    // http:localhost:8080/products/getProductById/1
    @RequestMapping(value = "/getProductById/{id}", method = RequestMethod.GET)
    public String getProductById(ModelMap modelMap, @PathVariable int id){
        //Tìm kiếm sp khi ng dùng chọn
        Optional<Products> listProduct = productsRepository.findById(id);
        //hiện thị các danh sách sp có cùng danh mục.
        List<Products> getProductRelated = new ArrayList<>();
        getProductRelated = productRelated.findByDanhMuc(listProduct.get().getDanhMuc());

        modelMap.addAttribute("listProduct", listProduct.get());
        modelMap.addAttribute("productsList", getProductRelated);
        return "products";
    }



}
