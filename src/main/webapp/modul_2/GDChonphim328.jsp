<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ page import="java.sql.*" %>--%>
<%--<%@ page import="java.util.*" %>--%>
<%--<%@ page import="java.time.LocalDateTime" %>--%>
<%--<%@ page import="dao.PhimDAO328" %>--%>
<%--<%@ page import="entity.Phim328" %>--%>
<%--<%@ page import="java.time.LocalDate" %>--%>
<%--<%@ page import="java.time.LocalTime" %>--%>

<%--<%--%>
<%--    String ngaygiobatdau = request.getParameter("ngaygiobatdau");--%>
<%--    String ngaygioketthuc = request.getParameter("ngaygioketthuc");--%>
<%--    String idPhong = request.getParameter("idPhong");--%>

<%--    if (ngaygiobatdau == null || ngaygioketthuc == null || idPhong == null) {--%>
<%--        out.println("<h3>Thông tin không đầy đủ. Vui lòng quay lại và thử lại.</h3>");--%>
<%--        return;--%>
<%--    }--%>

<%--    PhimDAO328 phimDAO = new PhimDAO328();--%>
<%--    List<Phim328> danhSachPhim = phimDAO.findPhimByKhungchieuAndNgaychieu(ngaygiobatdau, ngaygioketthuc);--%>
<%--%>--%>

<%--<html>--%>
<%--<head>--%>
<%--    <title>Danh sách phim đang chiếu</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<h1>Danh sách phim đang chiếu</h1>--%>
<%--<p><strong>Ngày Giờ Bắt Đầu:</strong> <%= ngaygiobatdau %></p>--%>
<%--<p><strong>Ngày Giờ Kết Thúc:</strong> <%= ngaygioketthuc %></p>--%>
<%--<p><strong>Mã Phòng:</strong> <%= idPhong %></p>--%>

<%--<h2>Danh Sách Phim:</h2>--%>
<%--<table border="1">--%>
<%--    <tr>--%>
<%--        <th>ID</th>--%>
<%--        <th>Tên Phim</th>--%>
<%--        <th>Mô Tả</th>--%>
<%--        <th>Thể Loại</th>--%>
<%--        <th>Thời Lượng</th>--%>
<%--        <th>Giờ Khởi Chiếu</th>--%>
<%--        <th>Giờ Kết Thúc</th>--%>
<%--        <th>Chọn</th>--%>
<%--    </tr>--%>
<%--    <%--%>
<%--        if (danhSachPhim != null && !danhSachPhim.isEmpty()) {--%>
<%--            for (Phim328 phim : danhSachPhim) {--%>
<%--    %>--%>
<%--    <tr>--%>
<%--        <td><%= phim.getId() %></td>--%>
<%--        <td><%= phim.getTen() %></td>--%>
<%--        <td><%= phim.getMota() %></td>--%>
<%--        <td><%= phim.getTheloai() %></td>--%>
<%--        <td><%= phim.getThoiluong() %></td>--%>
<%--        <td><%= phim.getNgaygiokhoichieu() %></td>--%>
<%--        <td><%= phim.getNgaygioketthuc() %></td>--%>
<%--        <td>--%>
<%--            <form action="GDXacnhanlichchieu328.jsp" method="post">--%>
<%--                <input type="hidden" name="idPhim" value="<%= phim.getId() %>">--%>
<%--                <input type="hidden" name="ngaygiobatdau" value="<%= ngaygiobatdau %>">--%>
<%--                <input type="hidden" name="ngaygioketthuc" value="<%= ngaygioketthuc %>">--%>
<%--                <input type="hidden" name="idPhong" value="<%= idPhong %>">--%>
<%--                <input type="submit" value="Chọn Phim">--%>
<%--            </form>--%>
<%--        </td>--%>
<%--    </tr>--%>
<%--    <%--%>
<%--        }--%>
<%--    } else {--%>
<%--    %>--%>
<%--    <tr>--%>
<%--        <td colspan="8">Không có phim nào được tìm thấy.</td>--%>
<%--    </tr>--%>
<%--    <%--%>
<%--        }--%>
<%--    %>--%>
<%--</table>--%>

<%--<form action="GDTaophimmoi328.jsp" method="get">--%>
<%--    <input type="hidden" name="ngaygiobatdau" value="<%= ngaygiobatdau %>">--%>
<%--    <input type="hidden" name="ngaygioketthuc" value="<%= ngaygioketthuc %>">--%>
<%--    <input type="hidden" name="idPhong" value="<%= idPhong %>">--%>
<%--    <input type="submit" value="Thêm Phim Mới">--%>
<%--</form>--%>


<%--<a href="GDChonphongchieu328.jsp?ngaygiobatdau=<%= ngaygiobatdau %>&ngaygioketthuc=<%= ngaygioketthuc %>&idPhong=<%= idPhong %>">Quay lại</a>--%>

<%--&lt;%&ndash;<a href="GDChonphongchieu328.jsp">Quay lại</a> <!-- Link quay lại trang trước -->&ndash;%&gt;--%>
<%--</body>--%>
<%--</html>--%>



<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="dao.PhimDAO328" %>
<%@ page import="entity.Phim328" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.LocalTime" %>

<%
    String ngaygiobatdau = request.getParameter("ngaygiobatdau");
    String ngaygioketthuc = request.getParameter("ngaygioketthuc");
    String idPhong = request.getParameter("idPhong");

    if (ngaygiobatdau == null || ngaygioketthuc == null || idPhong == null) {
        out.println("<h3>Thông tin không đầy đủ. Vui lòng quay lại và thử lại.</h3>");
        return;
    }

    PhimDAO328 phimDAO = new PhimDAO328();
    List<Phim328> danhSachPhim = phimDAO.findPhimByNgayGio(ngaygiobatdau, ngaygioketthuc);
%>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Danh sách phim đang chiếu</title>
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            max-width: 900px;
            height: 600px;
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            text-align: center;
            overflow: auto;
        }
        table {
            border-collapse: collapse;
            width: 100%;
            margin-top: 20px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }

        .search-button {
            background-color: #007bff;
            color: white;
            width: 200px; /* Đặt kích thước nút giống phiên bản trước */
            height: 50px; /* Đặt kích thước nút giống phiên bản trước */
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 14px; /* Chỉnh lại kích thước font cho nút */
            text-decoration: none;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            margin: 10px 0; /* Thêm khoảng cách giữa các nút */
        }
        .search-button:hover {
            background-color: #0056b3;
        }
        .back-button {
            background: #666666;
            color: white;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Danh sách phim đang chiếu</h1>
    <p><strong>Ngày Giờ Bắt Đầu:</strong> <%= ngaygiobatdau %></p>
    <p><strong>Ngày Giờ Kết Thúc:</strong> <%= ngaygioketthuc %></p>
    <p><strong>Mã Phòng:</strong> <%= idPhong %></p>

    <h2>Danh Sách Phim:</h2>
    <table>
        <tr>
            <th>ID</th>
            <th>Tên Phim</th>
            <th>Mô Tả</th>
            <th>Thể Loại</th>
            <th>Thời Lượng</th>
            <th>Giờ Khởi Chiếu</th>
            <th>Giờ Kết Thúc</th>
            <th>Chọn</th>
        </tr>
        <%
            if (danhSachPhim != null && !danhSachPhim.isEmpty()) {
                for (Phim328 phim : danhSachPhim) {
        %>
        <tr>
            <td><%= phim.getId() %></td>
            <td><%= phim.getTen() %></td>
            <td><%= phim.getMota() %></td>
            <td><%= phim.getTheloai() %></td>
            <td><%= phim.getThoiluong() %></td>
            <td><%= phim.getNgaygiokhoichieu() %></td>
            <td><%= phim.getNgaygioketthuc() %></td>
            <td>
                <form action="GDXacnhanlichchieu328.jsp" method="post">
                    <input type="hidden" name="idPhim" value="<%= phim.getId() %>">
                    <input type="hidden" name="ngaygiobatdau" value="<%= ngaygiobatdau %>">
                    <input type="hidden" name="ngaygioketthuc" value="<%= ngaygioketthuc %>">
                    <input type="hidden" name="idPhong" value="<%= idPhong %>">
                    <input type="submit" value="Chọn Phim">
                </form>
            </td>
        </tr>
        <%
            }
        } else {
        %>
        <tr>
            <td colspan="8">Không có phim nào được tìm thấy.</td>
        </tr>
        <%
            }
        %>
    </table>

    <form action="GDTaophimmoi328.jsp" method="get">
        <input type="hidden" name="ngaygiobatdau" value="<%= ngaygiobatdau %>">
        <input type="hidden" name="ngaygioketthuc" value="<%= ngaygioketthuc %>">
        <input type="hidden" name="idPhong" value="<%= idPhong %>">
        <input type="submit" value="Thêm Phim Mới" class="search-button">
    </form>

    <a class="back-button search-button" href="GDChonphongchieu328.jsp?ngaygiobatdau=<%= ngaygiobatdau %>&ngaygioketthuc=<%= ngaygioketthuc %>&idPhong=<%= idPhong %>">Quay lại</a>
</div>

</body>
</html>
