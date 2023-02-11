package com.webbookmvc.webbook.repositories;

import com.webbookmvc.webbook.model.Products;
import org.springframework.data.repository.CrudRepository;

public interface HomeRepository extends CrudRepository<Products, Integer> {
}
