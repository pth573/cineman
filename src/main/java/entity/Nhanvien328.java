package entity;

public class Nhanvien328 extends Thanhvien328 {
    private String chucvu;

    public Nhanvien328(int id, String ten, String ngaysinh, String email, String sdt, String tendangnhap, String matkhau, String chucvu) {
        super(id, ten, ngaysinh, email, sdt, tendangnhap, matkhau);
        this.chucvu = chucvu;
    }

    public String getChucvu() {
        return chucvu;
    }

    public void setChucvu(String chucvu) {
        this.chucvu = chucvu;
    }
}