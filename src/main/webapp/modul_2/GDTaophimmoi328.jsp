
<%--<%@ page import="entity.Phim328" %>--%>
<%--<%@ page import="dao.PhimDAO328" %>--%>
<%--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>--%>
<%--<%@ page import="java.sql.*" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <title>Thêm Phim Mới</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<h1>Thông Tin Phim</h1>--%>
<%--<form action="" method="post">--%>
<%--    <label for="ten">Tên Phim:</label>--%>
<%--    <input type="text" id="ten" name="ten" required><br><br>--%>

<%--    <label for="mota">Mô Tả:</label>--%>
<%--    <textarea id="mota" name="mota" required></textarea><br><br>--%>

<%--    <label for="theloai">Thể Loại:</label>--%>
<%--    <input type="text" id="theloai" name="theloai" required><br><br>--%>

<%--    <label for="thoiluong">Thời Lượng (phút):</label>--%>
<%--    <input type="number" id="thoiluong" name="thoiluong" required><br><br>--%>

<%--    <label for="ngaygiokhoichieu">Ngày Giờ Khởi Chiếu:</label>--%>
<%--    <input type="datetime-local" id="ngaygiokhoichieu" name="ngaygiokhoichieu" required><br><br>--%>

<%--    <label for="ngaygioketthuc">Ngày Giờ Kết Thúc:</label>--%>
<%--    <input type="datetime-local" id="ngaygioketthuc" name="ngaygioketthuc" required><br><br>--%>

<%--        <input type="hidden" name="ngaygiobatdau" value="<%= request.getParameter("ngaygiobatdau") %>">--%>
<%--        <input type="hidden" name="ngaygioketthuc" value="<%= request.getParameter("ngaygioketthuc") %>">--%>
<%--        <input type="hidden" name="idPhong" value="<%= request.getParameter("idPhong") %>">--%>

<%--    <input type="submit" value="Lưu Thông Tin">--%>
<%--</form>--%>

<%--<%--%>
<%--    // Kiểm tra xem form có được gửi không--%>
<%--    if ("POST".equalsIgnoreCase(request.getMethod())) {--%>
<%--        String ten = request.getParameter("ten");--%>
<%--        String mota = request.getParameter("mota");--%>
<%--        String theloai = request.getParameter("theloai");--%>
<%--        int thoiluong = Integer.parseInt(request.getParameter("thoiluong"));--%>
<%--        String ngaygiokhoichieu = request.getParameter("ngaygiokhoichieu");--%>
<%--        String ngaygioketthuc = request.getParameter("ngaygioketthuc");--%>

<%--        try {--%>
<%--            PhimDAO328 phimDAO328 = new PhimDAO328();--%>
<%--            Phim328 phim328 = null;--%>
<%--            phim328 = phimDAO328.createPhimMoi(new Phim328(ten, mota, theloai, thoiluong, ngaygiokhoichieu, ngaygioketthuc));--%>
<%--            if(phim328 != null){--%>
<%--                out.println("<h1>Thêm Phim Thành Công!</h1>");--%>
<%--            }--%>
<%--            else{--%>
<%--                out.println("<h1>Thêm Phim Khong Thành Công!</h1>");--%>
<%--            }--%>
<%--        }--%>
<%--        catch (Exception e) {--%>
<%--            e.printStackTrace();--%>
<%--            out.println("<h1>Đã xảy ra lỗi: " + e.getMessage() + "</h1>");--%>
<%--        }--%>
<%--        out.println("<a href='GDChonphim328.jsp'>Quay lại</a>");--%>

<%--    }--%>
<%--%>--%>
<%--</body>--%>
<%--</html>--%>


<%@ page import="entity.Phim328" %>
<%@ page import="dao.PhimDAO328" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Thêm Phim Mới</title>
</head>
<body>
<h1>Thêm phim mới</h1>
<form action="" method="post">
    <label for="ten">Tên Phim:</label>
    <input type="text" id="ten" name="ten" required><br><br>

    <label for="mota">Mô Tả:</label>
    <textarea id="mota" name="mota" required></textarea><br><br>

    <label for="theloai">Thể Loại:</label>
    <input type="text" id="theloai" name="theloai" required><br><br>

    <label for="thoiluong">Thời Lượng (phút):</label>
    <input type="number" id="thoiluong" name="thoiluong" required><br><br>

    <label for="ngaygiokhoichieu">Ngày Giờ Khởi Chiếu:</label>
    <input type="datetime-local" id="ngaygiokhoichieu" name="ngaygiokhoichieu" required><br><br>

    <label for="ngaygioketthuckhoichieu">Ngày Giờ Kết Thúc:</label>
    <input type="datetime-local" id="ngaygioketthuckhoichieu" name="ngaygioketthuckhoichieu" required><br><br>

    <input type="submit" value="Lưu Thông Tin">
</form>

<%
    if ("POST".equalsIgnoreCase(request.getMethod())) {
        String ten = request.getParameter("ten");
        String mota = request.getParameter("mota");
        String theloai = request.getParameter("theloai");
        int thoiluong = Integer.parseInt(request.getParameter("thoiluong"));
        String ngaygiokhoichieu = request.getParameter("ngaygiokhoichieu");
        String ngaygioketthuckhoichieu = request.getParameter("ngaygioketthuckhoichieu");

        try {
            PhimDAO328 phimDAO328 = new PhimDAO328();
            Phim328 phim328 = phimDAO328.createPhimMoi(new Phim328(ten, mota, theloai, thoiluong, ngaygiokhoichieu, ngaygioketthuckhoichieu));
            if (phim328 != null) {
                out.println("<h1>Thêm Phim Thành Công!</h1>");
            } else {
                out.println("<h1>Thêm Phim Không Thành Công!</h1>");
            }
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<h1>Đã xảy ra lỗi: " + e.getMessage() + "</h1>");
        }
    }
%>


<%
    String ngaygiobatdau = request.getParameter("ngaygiobatdau");
    String ngaygioketthuc = request.getParameter("ngaygioketthuc");
    String idPhong = request.getParameter("idPhong");
%>
<%--<button onclick="window.history.back()">Quay lại</button>--%>
<a href="GDChonphim328.jsp?ngaygiobatdau=<%= ngaygiobatdau %>&ngaygioketthuc=<%= ngaygioketthuc %>&idPhong=<%= idPhong %>">Quay lại</a>
</body>
</html>
