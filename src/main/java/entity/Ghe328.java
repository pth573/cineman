package entity;

public class Ghe328 {
    private int id;
    private String vitri;
    private String mota;
    private boolean trangthai;

    public Ghe328() {
    }

    public Ghe328(int id, String vitri, String mota, boolean trangthai) {
        this.id = id;
        this.vitri = vitri;
        this.mota = mota;
        this.trangthai = trangthai;
    }

    public Ghe328(String vitri, String mota, boolean trangthai) {
        this.vitri = vitri;
        this.mota = mota;
        this.trangthai = trangthai;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getVitri() {
        return vitri;
    }

    public void setVitri(String vitri) {
        this.vitri = vitri;
    }

    public String getMota() {
        return mota;
    }

    public void setMota(String mota) {
        this.mota = mota;
    }

    public boolean isTrangthai() {
        return trangthai;
    }

    public void setTrangthai(boolean trangthai) {
        this.trangthai = trangthai;
    }
}
