package com.webbookmvc.webbook.repositories;

import com.webbookmvc.webbook.model.Products;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

import java.util.List;

public interface SearchRepository extends PagingAndSortingRepository<Products, Integer> {

    @Query(value = "select * from db_book.products where match(TenSP, ThongtinSP, Tacgia, NhaCC, NhaSX, DanhmucSP) against(?1)", nativeQuery = true)
    public List<Products> search(String keywords);
}
