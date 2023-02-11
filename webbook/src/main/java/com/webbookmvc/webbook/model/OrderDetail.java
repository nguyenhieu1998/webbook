package com.webbookmvc.webbook.model;

import javax.persistence.*;

@Entity
@Table(name = "ordersdetail")
public class OrderDetail {
    @Id

    @Column(name = "username")
    private String name;
    @Column(name = "DT")
    private String phone;
    @Column(name = "Diachicuthe")
    private String diaChi;
    @Column(name = "order_id")
    private int order_id;
    @Column(name = "product_id")
    private int product_id;
    @Column(name = "Soluong")
    private int soLuong;
    @Column(name = "Giasp")
    private double tongGia;
    @Column(name = "Ngaydat")
    private String orderDetail;



    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public int getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }

    public double getTongGia() {
        return tongGia;
    }

    public void setTongGia(double tongGia) {
        this.tongGia = tongGia;
    }

    public String getOrderDetail() {
        return orderDetail;
    }

    public void setOrderDetail(String orderDetail) {
        this.orderDetail = orderDetail;
    }
}
