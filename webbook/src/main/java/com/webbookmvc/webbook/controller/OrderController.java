package com.webbookmvc.webbook.controller;

import com.webbookmvc.webbook.model.CarItem;
import com.webbookmvc.webbook.model.Order;
import com.webbookmvc.webbook.model.OrderDetail;
import com.webbookmvc.webbook.model.Products;
import com.webbookmvc.webbook.repositories.*;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Controller
// http:localhost:8080/order
public class OrderController {

    @Autowired
    OrderRepository orderRepository;

    @Autowired
    OrderDetailRepository orderDetailRepository;

    @Autowired
    ShoppingCartRepository cart;

    @Autowired
    FindOrderDetail findOrderDetail;

    @RequestMapping("/order")
    public String userOrder(Model model){
        model.addAttribute("order", new Order());
        return "order";
    }

    @GetMapping("/getorder")
    public String getOrder(Order order, ModelMap modelMap){
            LocalDateTime curDate = LocalDateTime.now();
            String date = curDate.toString();
            order.setOrderDate(date);
            orderRepository.save(order);
            try {
                List<OrderDetail> list = new ArrayList<>();
                for (CarItem item : cart.getAllItem()) {
                    OrderDetail orderDetail = new OrderDetail();
                    orderDetail.setName(order.getName());
                    orderDetail.setPhone(order.getPhone());
                    orderDetail.setDiaChi(order.getAddress());
                    orderDetail.setOrder_id(order.getOrder_id());
                    orderDetail.setProduct_id(item.getProductId());
                    orderDetail.setSoLuong(item.getQuantity());
                    orderDetail.setTongGia(cart.getAmount());
                    orderDetail.setOrderDetail(date);
                    orderDetailRepository.save(orderDetail);
                    list.add(orderDetail);
                }
                List<OrderDetail> getProductRelated = new ArrayList<>();
                Optional<OrderDetail> orderDetail1 = findOrderDetail.findById(order.getName());
                modelMap.addAttribute("orderDetail1", orderDetail1.get());
                modelMap.addAttribute("itemCart", cart.getAllItem());
            } catch (Exception e) {
                e.printStackTrace();
            }
            return "orderdetail";
    }
}
