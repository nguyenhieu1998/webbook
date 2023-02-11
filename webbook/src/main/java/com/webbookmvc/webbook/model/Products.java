package com.webbookmvc.webbook.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "products")
public class Products {
    @Id
    @Column(name = "id")
    private int id;
    @Column(name = "TenSP")
    private String tenSp;
    @Column(name = "ThongtinSP")
    private String thongTinSp;
    @Column(name = "giaSP")
    private float giaSp;
    @Column(name = "anhSP")
    private String anhSp;
    @Column(name = "Tacgia")
    private String tacGia;
    @Column(name = "NhaCC")
    private String nhaCc;
    @Column(name = "NhaSX")
    private String nhaSx;
    @Column(name = "DanhmucSP")
    private String danhMuc;
    @Column(name = "mahang")
    private String maHang;
    @Column(name = "sotrang")
    private String soTrang;
    @Column(name = "kichthuoc")
    private String kichThuoc;

    public String getMaHang() {
        return maHang;
    }

    public void setMaHang(String maHang) {
        this.maHang = maHang;
    }

    public String getSoTrang() {
        return soTrang;
    }

    public void setSoTrang(String soTrang) {
        this.soTrang = soTrang;
    }

    public String getKichThuoc() {
        return kichThuoc;
    }

    public void setKichThuoc(String kichThuoc) {
        this.kichThuoc = kichThuoc;
    }

    public Products(){}

    public Products(int id, String tenSp, String thongTinSp, float giaSp, String anhSp, String tacGia, String nhaCc, String nhaSx, String danhMuc, String maHang, String soTrang, String kichThuoc) {
        this.id = id;
        this.tenSp = tenSp;
        this.thongTinSp = thongTinSp;
        this.giaSp = giaSp;
        this.anhSp = anhSp;
        this.tacGia = tacGia;
        this.nhaCc = nhaCc;
        this.nhaSx = nhaSx;
        this.danhMuc = danhMuc;
        this.maHang = maHang;
        this.soTrang = soTrang;
        this.kichThuoc = kichThuoc;
    }

    //    public Products(int id, String tenSp, String thongTinSp, float giaSp, String anhSp, String tacGia, String nhaCc, String nhaSx, String danhMuc) {
//        this.id = id;
//        this.tenSp = tenSp;
//        this.thongTinSp = thongTinSp;
//        this.giaSp = giaSp;
//        this.anhSp = anhSp;
//        this.tacGia = tacGia;
//        this.nhaCc = nhaCc;
//        this.nhaSx = nhaSx;
//        this.danhMuc = danhMuc;
//    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTenSp() {
        return tenSp;
    }

    public void setTenSp(String tenSp) {
        this.tenSp = tenSp;
    }

    public String getThongTinSp() {
        return thongTinSp;
    }

    public void setThongTinSp(String thongTinSp) {
        this.thongTinSp = thongTinSp;
    }

    public float getGiaSp() {
        return giaSp;
    }

    public void setGiaSp(float giaSp) {
        this.giaSp = giaSp;
    }

    public String getAnhSp() {
        return anhSp;
    }

    public void setAnhSp(String anhSp) {
        this.anhSp = anhSp;
    }

    public String getTacGia() {
        return tacGia;
    }

    public void setTacGia(String tacGia) {
        this.tacGia = tacGia;
    }

    public String getNhaCc() {
        return nhaCc;
    }

    public void setNhaCc(String nhaCc) {
        this.nhaCc = nhaCc;
    }

    public String getNhaSx() {
        return nhaSx;
    }

    public void setNhaSx(String nhaSx) {
        this.nhaSx = nhaSx;
    }

    public String getDanhMuc() {
        return danhMuc;
    }

    public void setDanhMuc(String danhMuc) {
        this.danhMuc = danhMuc;
    }
}
