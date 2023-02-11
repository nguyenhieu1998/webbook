package com.webbookmvc.webbook.repositories;

import com.webbookmvc.webbook.model.Products;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;


import java.util.List;

public interface ProductRelated extends JpaRepository<Products, Integer> {
  List<Products> findByDanhMuc (String danhMuc);

  Page<Products> findByDanhMuc (String danhMuc, Pageable pageable);
}
