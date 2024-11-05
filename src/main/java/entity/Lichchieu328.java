package entity;

public class Lichchieu328 {
    private int id;
//    private String ngaychieu;
    private String ngaygiobatdau;
    private String ngaygioketthuc;
    private Phim328 phim;
    private Phongchieu328 phongchieu;

    public Lichchieu328() {
    }

    public Lichchieu328(String ngaychieu, String ngaygiobatdau, String ngaygioketthuc, Phim328 phim, Phongchieu328 phongchieu) {
//        this.ngaychieu = ngaychieu;
        this.ngaygiobatdau = ngaygiobatdau;
        this.ngaygioketthuc = ngaygioketthuc;
        this.phim = phim;
        this.phongchieu = phongchieu;
    }

    public Lichchieu328(int id, String ngaychieu, String ngaygiobatdau, String ngaygioketthuc, Phim328 phim, Phongchieu328 phongchieu) {
        this.id = id;
//        this.ngaychieu = ngaychieu;
        this.ngaygiobatdau = ngaygiobatdau;
        this.ngaygioketthuc = ngaygioketthuc;
        this.phim = phim;
        this.phongchieu = phongchieu;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

//    public String getNgaychieu() {
//        return ngaychieu;
//    }
//
//    public void setNgaychieu(String ngaychieu) {
//        this.ngaychieu = ngaychieu;
//    }

    public String getNgaygiobatdau() {
        return ngaygiobatdau;
    }

    public void setNgaygiobatdau(String ngaygiobatdau) {
        this.ngaygiobatdau = ngaygiobatdau;
    }

    public String getNgaygioketthuc() {
        return ngaygioketthuc;
    }

    public void setNgaygioketthuc(String ngaygioketthuc) {
        this.ngaygioketthuc = ngaygioketthuc;
    }

    public Phim328 getPhim() {
        return phim;
    }

    public void setPhim(Phim328 phim) {
        this.phim = phim;
    }

    public Phongchieu328 getPhongchieu() {
        return phongchieu;
    }

    public void setPhongchieu(Phongchieu328 phongchieu) {
        this.phongchieu = phongchieu;
    }
}
