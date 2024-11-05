package entity;

import java.time.LocalDateTime;

public class Phim328 {
    private int id;
    private String ten;
    private String mota;
    private String theloai;
    private int thoiluong;
    private String ngaygiokhoichieu;
    private String ngaygioketthuc;

    public Phim328() {}

    public Phim328(int id, String ten, String mota, String theloai, int thoiluong, String ngaygiokhoichieu, String ngaygioketthuc) {
        this.id = id;
        this.ten = ten;
        this.mota = mota;
        this.theloai = theloai;
        this.thoiluong = thoiluong;
        this.ngaygiokhoichieu = ngaygiokhoichieu;
        this.ngaygioketthuc = ngaygioketthuc;
    }

    public Phim328(String ten, String mota, String theloai, int thoiluong, String ngaygiokhoichieu, String ngaygioketthuc) {
        this.id = id;
        this.ten = ten;
        this.mota = mota;
        this.theloai = theloai;
        this.thoiluong = thoiluong;
        this.ngaygiokhoichieu = ngaygiokhoichieu;
        this.ngaygioketthuc = ngaygioketthuc;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public String getMota() {
        return mota;
    }

    public void setMota(String mota) {
        this.mota = mota;
    }

    public String getTheloai() {
        return theloai;
    }

    public void setTheloai(String theloai) {
        this.theloai = theloai;
    }

    public int getThoiluong() {
        return thoiluong;
    }

    public void setThoiluong(int thoiluong) {
        this.thoiluong = thoiluong;
    }

    public String getNgaygiokhoichieu() {
        return ngaygiokhoichieu;
    }

    public void setNgaygiokhoichieu(String ngaygiokhoichieu) {
        this.ngaygiokhoichieu = ngaygiokhoichieu;
    }

    public String getNgaygioketthuc() {
        return ngaygioketthuc;
    }

    public void setNgaygioketthuc(String ngaygioketthuc) {
        this.ngaygioketthuc = ngaygioketthuc;
    }
}
