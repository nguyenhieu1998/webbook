package com.webbookmvc.webbook.repositories;

import com.webbookmvc.webbook.model.Products;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;
import java.util.Optional;

public interface ProductsRepository extends CrudRepository<Products, Integer> {
//    @Override
//    Optional<Products> findById(Integer id);

}
