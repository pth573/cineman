package dao;
import entity.Lichchieu328;
import entity.Phim328;
import entity.Phongchieu328;
import util.DAO;

import java.sql.*;

public class LichchieuDAO328 extends DAO {
    public LichchieuDAO328() {
        super();
    }

    public Lichchieu328 createLichchieuphim(String ngaygiobatdau, String ngaygioketthuc, Phongchieu328 phongchieu328, Phim328 phim328) throws SQLException {
        Lichchieu328 lichchieu = new Lichchieu328();
        lichchieu.setNgaygiobatdau(ngaygiobatdau);
        lichchieu.setNgaygioketthuc(ngaygioketthuc);
        lichchieu.setPhim(phim328);
        lichchieu.setPhongchieu(phongchieu328);

        String query = "INSERT INTO Lichchieu328 (ngaygiobatdau, ngaygioketthuc, phim328id, phongchieu328id) VALUES (?, ?, ?, ?)";
        try (PreparedStatement stmt = con.prepareStatement(query)) {
            stmt.setString(1, ngaygiobatdau);
            stmt.setString(2, ngaygioketthuc);
            stmt.setInt(3, phim328.getId());
            stmt.setInt(4, phongchieu328.getId());

            int rowsAffected = stmt.executeUpdate();
            if (rowsAffected > 0) {
                System.out.println("Lịch chiếu đã được tạo thành công.");
            } else {
                System.out.println("Không thể tạo lịch chiếu.");
            }
        }
        return lichchieu;
    }

    public boolean isKhungGioTrong(Phongchieu328 phongchieu328, String ngaygiobatdau, String ngaygioketthuc) throws SQLException {
        int idPhong = phongchieu328.getId();
        String query = "SELECT COUNT(*) AS count " +
                "FROM Lichchieu328 " +
                "WHERE phongchieu328id = ? " +
                "  AND ( " +
                "        (ngaygiobatdau < ? AND ngaygioketthuc > ?) " +
                "      );";

        try (PreparedStatement stmt = con.prepareStatement(query)) {
            stmt.setInt(1, idPhong);
            stmt.setString(2, ngaygioketthuc);
            stmt.setString(3, ngaygiobatdau);

            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                return rs.getInt("count") == 0;
            }
        }
        return false;
    }


}
