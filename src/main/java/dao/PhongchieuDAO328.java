package dao;

import entity.Lichchieu328;
import entity.Phongchieu328;
import util.DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Time;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class PhongchieuDAO328 extends DAO {
    public PhongchieuDAO328() {
        super();
    }


    public Phongchieu328 findPhongchieuById(int id) {
        Phongchieu328 phongchieu = null;
        String query = "SELECT * FROM Phongchieu328 WHERE id = ?";

        try (PreparedStatement stmt = con.prepareStatement(query)) {
            stmt.setInt(1, id);

            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                phongchieu = new Phongchieu328();
                phongchieu.setId(rs.getInt("id"));
                phongchieu.setTen(rs.getString("ten"));
                phongchieu.setSoluongghe(rs.getInt("soluongghe"));
            } else {
                System.out.println("Không tìm thấy phòng chiếu với ID: " + id);
            }
        } catch (SQLException e) {
            System.err.println("Lỗi khi tìm phòng chiếu: " + e.getMessage());
        }

        return phongchieu;
    }

    public List<Phongchieu328> findPhongchieuByDateAndTime(String ngaygiobatdau, String ngaygioketthuc) {
        List<Phongchieu328> phongChieuList = new ArrayList<>();
        String sql = "SELECT p.id, p.ten, p.soluongghe " +
                "FROM Phongchieu328 p " +
                "WHERE NOT EXISTS ( " +
                "    SELECT 1 " +
                "    FROM Lichchieu328 lc " +
                "    WHERE p.id = lc.phongchieu328id " +
                "      AND ( " +
                "          (lc.ngaygiobatdau >= ? AND lc.ngaygioketthuc < ?) " +
                "          OR (lc.ngaygiobatdau < ? AND lc.ngaygioketthuc >= ?) " +
                "      ) " +
                ")";

        try (PreparedStatement pstmt = con.prepareStatement(sql)) {
            pstmt.setString(1, ngaygiobatdau);
            pstmt.setString(2, ngaygioketthuc);
            pstmt.setString(3, ngaygiobatdau);
            pstmt.setString(4, ngaygioketthuc);
            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                Phongchieu328 phongChieu = new Phongchieu328();
                phongChieu.setId(rs.getInt("id"));
                phongChieu.setTen(rs.getString("ten"));
                phongChieu.setSoluongghe(rs.getInt("soluongghe"));
                phongChieuList.add(phongChieu);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return phongChieuList;
    }

}
