package dao;
import entity.Phim328;
import util.DAO;

import java.sql.*;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

public class PhimDAO328 extends DAO {
    public PhimDAO328() {
        super();
    }


    public List<Phim328> findPhimByNgayGio(String ngaygiobatdau, String ngaygioketthuc) {
        List<Phim328> danhSachPhim = new ArrayList<>();

        String query = "SELECT p.id, p.ten, p.mota, p.theloai, p.thoiluong, p.ngaygiokhoichieu, p.ngaygioketthuc " +
                "FROM Phim328 p " +
                "WHERE p.ngaygiokhoichieu <= ? " +
                "AND p.ngaygioketthuc >= ?";

        try (PreparedStatement stmt = con.prepareStatement(query)) {
            stmt.setString(1, ngaygiobatdau);
            stmt.setString(2, ngaygioketthuc);

            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    int id = rs.getInt("id");
                    String ten = rs.getString("ten");
                    String mota = rs.getString("mota");
                    String theloai = rs.getString("theloai");
                    int thoiluong = rs.getInt("thoiluong");
                    String ngaygioKhoiChieu = rs.getString("ngaygiokhoichieu");
                    String ngaygioKetThuc = rs.getString("ngaygioketthuc");
                    Phim328 phim = new Phim328(id, ten, mota, theloai, thoiluong, ngaygioKhoiChieu, ngaygioKetThuc);
                    danhSachPhim.add(phim);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return danhSachPhim;
    }

    public Phim328 createPhimMoi(Phim328 phim) {
        String query = "INSERT INTO phim328 (ten, mota, theloai, thoiluong, ngaygiokhoichieu, ngaygioketthuc) VALUES (?, ?, ?, ?, ?, ?)";
        try (PreparedStatement stmt = con.prepareStatement(query, Statement.RETURN_GENERATED_KEYS)) {
            // Gán các tham số cho PreparedStatement
            stmt.setString(1, phim.getTen());
            stmt.setString(2, phim.getMota());
            stmt.setString(3, phim.getTheloai());
            stmt.setInt(4, phim.getThoiluong());
            stmt.setString(5, phim.getNgaygiokhoichieu());
            stmt.setString(6, phim.getNgaygioketthuc());

            int affectedRows = stmt.executeUpdate();
            if (affectedRows > 0) {
                try (ResultSet generatedKeys = stmt.getGeneratedKeys()) {
                    if (generatedKeys.next()) {
                        long id = generatedKeys.getLong(1);
                        String selectQuery = "SELECT * FROM phim328 WHERE id = ?";
                        try (PreparedStatement selectStmt = con.prepareStatement(selectQuery)) {
                            selectStmt.setLong(1, id);
                            ResultSet rs = selectStmt.executeQuery();
                            if (rs.next()) {
                                return new Phim328(
                                        rs.getString("ten"),
                                        rs.getString("mota"),
                                        rs.getString("theloai"),
                                        rs.getInt("thoiluong"),
                                        rs.getString("ngaygiokhoichieu"),
                                        rs.getString("ngaygioketthuc")
                                );
                            }
                        }
                    }
                }
            }
        } catch (SQLException e) {
            System.err.println("Lỗi khi thêm phim mới: " + e.getMessage());
        }
        return null;
    }

    public List<Phim328> findPhimByTen(String tenPhim) {
        String query = "SELECT * FROM phim328 WHERE ten LIKE ?";
        List<Phim328> danhSachPhim = new ArrayList<>();
        try (PreparedStatement stmt = con.prepareStatement(query)) {
            stmt.setString(1, "%" + tenPhim + "%");
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                Phim328 phim = new Phim328(
                        rs.getInt("id"),
                        rs.getString("ten"),
                        rs.getString("mota"),
                        rs.getString("theloai"),
                        rs.getInt("thoiluong"),
                        rs.getString("ngaygiokhoichieu"), // Chuyển đổi từ Timestamp sang LocalDateTime
                        rs.getString("ngaygioketthuc") //
                );
                danhSachPhim.add(phim);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return danhSachPhim;
    }

    public Phim328 findPhimById(int id) {
        Phim328 phim = null;
        String query = "SELECT * FROM Phim328 WHERE id = ?";

        try (PreparedStatement stmt = con.prepareStatement(query)) {
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                phim = new Phim328();
                phim.setId(rs.getInt("id"));
                phim.setTen(rs.getString("ten"));
                phim.setMota(rs.getString("mota"));
                phim.setTheloai(rs.getString("theloai"));
                phim.setThoiluong(rs.getInt("thoiluong"));
                phim.setNgaygiokhoichieu(rs.getString("ngaygiokhoichieu"));
                phim.setNgaygioketthuc(rs.getString("ngaygioketthuc"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return phim;
    }
}
