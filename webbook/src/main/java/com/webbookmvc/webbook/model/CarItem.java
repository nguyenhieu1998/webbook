package com.webbookmvc.webbook.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CarItem {
    private Integer productId;
    private String name;
    private double price;
    private String anhSp;
    private int quantity = 1;
}
