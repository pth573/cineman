package dao;

import util.DAO;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class KhachhangDAO328 extends DAO {
    public KhachhangDAO328() {
        super();
    }

    public void addKhachhang(int id) {
        String query = "INSERT INTO khachhang328 (id) VALUES (?)";
        try (PreparedStatement stmt = con.prepareStatement(query)) {
            stmt.setInt(1, id);
            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
