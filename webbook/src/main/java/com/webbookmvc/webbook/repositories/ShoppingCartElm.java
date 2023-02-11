package com.webbookmvc.webbook.repositories;

import com.webbookmvc.webbook.model.CarItem;
import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

@SessionScope
@Service
public class ShoppingCartElm implements ShoppingCartRepository{
    Map<Integer, CarItem> maps = new HashMap<>();// danh sách giỏ hàng
    @Override
    public void add(CarItem item){
        CarItem carItem = maps.get(item.getProductId());
        if(carItem == null){
            maps.put(item.getProductId(),item);
        } else {
            carItem.setQuantity(carItem.getQuantity() + 1);
        }
    }

    @Override
    public void remove(int id){
        maps.remove(id);
    }

    @Override
    public CarItem update(int id, int qty){
        CarItem carItem = maps.get(id);
        carItem.setQuantity(qty);
        return carItem;
    }

    @Override
    public void clear(){
        maps.clear();
    }

    @Override
    public Collection<CarItem> getAllItem(){
        return maps.values();
    }

    @Override
    public int getCount(){
        return maps.values().size();
    }
    @Override
    public double getAmount(){
        return maps.values().stream().mapToDouble(item -> item.getQuantity() * item.getPrice()).sum();
    }
}
