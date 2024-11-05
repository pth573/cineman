package entity;

import java.util.List;

public class Phongchieu328 {
    private int id;
    private String ten;
    private int soluongghe;
    private boolean tinhtrang;
    private List<Ghe328> ghe;

    public Phongchieu328() {}

    public Phongchieu328(int id, String ten, int soluongghe, boolean tinhtrang, List<Ghe328> ghe) {
        this.id = id;
        this.ten = ten;
        this.soluongghe = soluongghe;
        this.tinhtrang = tinhtrang;
        this.ghe = ghe;
    }

    public Phongchieu328(String ten, int soluongghe, boolean tinhtrang, List<Ghe328> ghe) {
        this.ten = ten;
        this.soluongghe = soluongghe;
        this.tinhtrang = tinhtrang;
        this.ghe = ghe;
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

    public int getSoluongghe() {
        return soluongghe;
    }

    public void setSoluongghe(int soluongghe) {
        this.soluongghe = soluongghe;
    }

    public boolean isTinhtrang() {
        return tinhtrang;
    }

    public void setTinhtrang(boolean tinhtrang) {
        this.tinhtrang = tinhtrang;
    }

    public List<Ghe328> getGhe() {
        return ghe;
    }

    public void setGhe(List<Ghe328> ghe) {
        this.ghe = ghe;
    }
}
