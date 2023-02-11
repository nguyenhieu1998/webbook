package com.webbookmvc.webbook.controller;

import com.webbookmvc.webbook.model.CarItem;
import com.webbookmvc.webbook.model.Products;
import com.webbookmvc.webbook.repositories.HomeRepository;
import com.webbookmvc.webbook.repositories.ProductsRepository;
import com.webbookmvc.webbook.repositories.ShoppingCartRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@Controller
@RequestMapping(path= "addtocart")
public class AddtoCartController {
    @Autowired
    ProductsRepository productsRepository;
    @Autowired
    ShoppingCartRepository cart;
   @RequestMapping("views")
    public String viewsCart(ModelMap modelMap){
        modelMap.addAttribute("listItem", cart.getAllItem());
        modelMap.addAttribute("total", cart.getAmount());
        modelMap.addAttribute("totalitems", cart.getCount());
       return "addtocart";
    }
    @GetMapping("add/{id}")
    public String addCart(@PathVariable int id){
        Optional<Products> product = productsRepository.findById(id);
        if(product != null){

            CarItem item = new CarItem();
            item.setProductId(product.get().getId());
            item.setName(product.get().getTenSp());
            item.setPrice(product.get().getGiaSp());
            item.setAnhSp(product.get().getAnhSp());
            item.setQuantity(1);
            cart.add(item);
        }
       return "redirect:/addtocart/views";
    }

    @GetMapping("delete/{id}")
    public String removeCart(@PathVariable int id){
       cart.remove(id);
       return "redirect:/addtocart/views";
    }

    @PostMapping("update")
    public String update(@RequestParam("id") int id, @RequestParam("qty") int qty){
       cart.update(id,qty);
       return "redirect:/addtocart/views";
    }
}
