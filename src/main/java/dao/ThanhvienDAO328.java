package dao;
import entity.Khachhang328;
import entity.Nhanvien328;
import entity.Thanhvien328;
import util.DAO;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ThanhvienDAO328 extends DAO {
    public ThanhvienDAO328() {
        super();
    }


    public int addThanhVien(String ten, String ngaysinh, String email, String sdt, String tendangnhap, String matkhau) {
        String query = "INSERT INTO thanhvien328 (ten, ngaysinh, email, sdt, tendangnhap, matkhau) VALUES (?, ?, ?, ?, ?, ?)";
        int generatedId = -1;
        try (PreparedStatement stmt = con.prepareStatement(query, Statement.RETURN_GENERATED_KEYS)) {
            stmt.setString(1, ten);
            stmt.setString(2, ngaysinh);
            stmt.setString(3, email);
            stmt.setString(4, sdt);
            stmt.setString(5, tendangnhap);
            stmt.setString(6, matkhau);
            stmt.executeUpdate();
            try (ResultSet generatedKeys = stmt.getGeneratedKeys()) {
                if (generatedKeys.next()) {
                    generatedId = generatedKeys.getInt(1);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return generatedId;
    }


    public Thanhvien328 checkLogin(String tendangnhap, String matkhau) {
        Thanhvien328 thanhVien = getThanhVienByLoginInfo(tendangnhap, matkhau);

        if (thanhVien != null) {
            if (isNhanVien(thanhVien.getId())) {
                String chucvu = getChucVuById(thanhVien.getId());
                return new Nhanvien328(
                        thanhVien.getId(),
                        thanhVien.getTen(),
                        thanhVien.getNgaysinh(),
                        thanhVien.getEmail(),
                        thanhVien.getSdt(),
                        thanhVien.getTendangnhap(),
                        thanhVien.getMatkhau(),
                        chucvu
                );
            }
            else if (isKhachHang(thanhVien.getId())) {
                return new Khachhang328(
                        thanhVien.getId(),
                        thanhVien.getTen(),
                        thanhVien.getNgaysinh(),
                        thanhVien.getEmail(),
                        thanhVien.getSdt(),
                        thanhVien.getTendangnhap(),
                        thanhVien.getMatkhau()
                );
            }
        }
        return null;
    }

    private boolean isNhanVien(int id) {
        boolean exists = false;
        try {
            String sql = "SELECT 1 FROM Nhanvien328 WHERE id = ?";
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            exists = rs.next();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return exists;
    }

    private boolean isKhachHang(int id) {
        boolean exists = false;
        try {
            String sql = "SELECT 1 FROM Khachhang328 WHERE id = ?";
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            exists = rs.next();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return exists;
    }

    private String getChucVuById(int id) {
        String chucVu = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            String sql = "SELECT chucvu FROM Nhanvien328 WHERE id = ?";
            stmt = con.prepareStatement(sql);
            stmt.setInt(1, id);
            rs = stmt.executeQuery();
            if (rs.next()) {
                chucVu = rs.getString("chucvu");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return chucVu;
    }


    public Thanhvien328 getThanhVienByLoginInfo (String tendangnhap, String matkhau){
        String query = "SELECT * FROM Thanhvien328 WHERE tendangnhap = ? AND matkhau = ?";
        try (PreparedStatement stmt = con.prepareStatement(query)) {
            stmt.setString(1, tendangnhap);
            stmt.setString(2, matkhau);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                return new Thanhvien328(
                        rs.getInt("id"),
                        rs.getString("ten"),
                        rs.getString("ngaysinh"),
                        rs.getString("email"),
                        rs.getString("sdt"),
                        rs.getString("tendangnhap"),
                        rs.getString("matkhau")
                );
            } else {
                System.out.println("Không tìm thấy thành viên");
            }
        } catch (SQLException e) {
            System.err.println("Lỗi khi lấy thông tin thành viên: " + e.getMessage());
        }
        return null;
    }


//    public Thanhvien328 checkLogin(String tendangnhap, String matkhau) {
//        String query = "SELECT * FROM Thanhvien328 WHERE tendangnhap = ? AND matkhau = ?";
//        try (PreparedStatement stmt = con.prepareStatement(query)) {
//            stmt.setString(1, tendangnhap);
//            stmt.setString(2, matkhau);
//            ResultSet rs = stmt.executeQuery();
//            if (rs.next()) {
//                return new Thanhvien328(
//                        rs.getLong("id"),
//                        rs.getString("ten"),
//                        rs.getString("ngaysinh"),
//                        rs.getString("email"),
//                        rs.getString("sdt"),
//                        rs.getString("tendangnhap"),
//                        rs.getString("matkhau")
//                );
//            } else {
//                System.out.println("Không tìm thấy thành viên");
//            }
//        } catch (SQLException e) {
//            System.err.println("Lỗi khi lấy thông tin thành viên: " + e.getMessage());
//        }
//        return null;
//    }


    public Thanhvien328 getThanhvien328 (String tendangnhap){
        String query = "SELECT * FROM Thanhvien328 WHERE tendangnhap = ?";
        try (PreparedStatement stmt = con.prepareStatement(query)) {
            stmt.setString(1, tendangnhap);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                return new Thanhvien328(
                        rs.getInt("id"),
                        rs.getString("ten"),
                        rs.getString("ngaysinh"),
                        rs.getString("email"),
                        rs.getString("sdt"),
                        rs.getString("tendangnhap"),
                        rs.getString("matkhau")
                );
            } else {
                System.out.println("Không tìm thấy thành viên");
            }
        } catch (SQLException e) {
            System.err.println("Lỗi khi lấy thông tin thành viên: " + e.getMessage());
        }
        return null;
    }

    public boolean isTendangnhapExist (String tendangnhap){
        String query = "SELECT COUNT(*) FROM thanhvien328 WHERE tendangnhap = ?";
        try (PreparedStatement stmt = con.prepareStatement(query)) {
            stmt.setString(1, tendangnhap);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                return rs.getInt(1) > 0;
            }
        } catch (SQLException e) {
            System.err.println("Lỗi khi kiểm tra tên đăng nhập: " + e.getMessage());
        }
        return false;
    }
}