package entity;
public class Thanhvien328 {
    private int id;
    private String ten;
    private String ngaysinh;
    private String email;
    private String sdt;
    private String tendangnhap;
    private String matkhau;

    public Thanhvien328(int id, String ten, String ngaysinh, String email, String sdt, String tendangnhap, String matkhau) {
        this.id = id;
        this.ten = ten;
        this.ngaysinh = ngaysinh;
        this.email = email;
        this.sdt = sdt;
        this.tendangnhap = tendangnhap;
        this.matkhau = matkhau;
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

    public String getNgaysinh() {
        return ngaysinh;
    }

    public void setNgaysinh(String ngaysinh) {
        this.ngaysinh = ngaysinh;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public String getTendangnhap() {
        return tendangnhap;
    }

    public void setTendangnhap(String tendangnhap) {
        this.tendangnhap = tendangnhap;
    }

    public String getMatkhau() {
        return matkhau;
    }

    public void setMatkhau(String matkhau) {
        this.matkhau = matkhau;
    }
}
