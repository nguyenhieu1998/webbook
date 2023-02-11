package com.webbookmvc.webbook.repositories;

import com.webbookmvc.webbook.model.OrderDetail;
import com.webbookmvc.webbook.model.Products;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface OrderDetailRepository extends JpaRepository<OrderDetail, Integer> {

}
