package com.webbookmvc.webbook.repositories;

import com.webbookmvc.webbook.model.CarItem;

import java.util.Collection;

public interface ShoppingCartRepository {

    void add(CarItem item);

    void remove(int id);

    CarItem update(int id, int qty);

    void clear();

    Collection<CarItem> getAllItem();

    int getCount();

    double getAmount();
}
