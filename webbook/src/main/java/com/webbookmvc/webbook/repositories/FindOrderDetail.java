package com.webbookmvc.webbook.repositories;

import com.webbookmvc.webbook.model.OrderDetail;
import com.webbookmvc.webbook.model.Products;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import java.util.List;
import java.util.Optional;

public interface FindOrderDetail extends JpaRepository<OrderDetail, String> {
    @Override
    Optional<OrderDetail> findById(String name);
}
