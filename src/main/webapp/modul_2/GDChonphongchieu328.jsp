<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ page import="java.sql.*" %>--%>
<%--<%@ page import="java.util.*" %>--%>
<%--<%@ page import="dao.PhongchieuDAO328" %>--%>
<%--<%@ page import="entity.Phongchieu328" %>--%>
<%--<%@ page import="java.time.LocalDateTime" %>--%>

<%--<%--%>
<%--    String ngaygiobatdau = request.getParameter("ngaygiobatdau");--%>
<%--    String ngaygioketthuc = request.getParameter("ngaygioketthuc");--%>
<%--    PhongchieuDAO328 dao = new PhongchieuDAO328();--%>
<%--    List<Phongchieu328> phongChieuList = dao.findPhongchieuByDateAndTime(ngaygiobatdau, ngaygioketthuc);--%>
<%--%>--%>

<%--<!DOCTYPE html>--%>
<%--<html lang="vi">--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <title>Kết Quả Tìm Kiếm Phòng Chiếu</title>--%>
<%--    <style>--%>
<%--        table {--%>
<%--            border-collapse: collapse;--%>
<%--            width: 100%;--%>
<%--            margin-top: 20px;--%>
<%--        }--%>
<%--        th, td {--%>
<%--            border: 1px solid #ddd;--%>
<%--            padding: 8px;--%>
<%--            text-align: left;--%>
<%--        }--%>
<%--        th {--%>
<%--            background-color: #f2f2f2;--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<h1>Danh sách phòn chiếu trống</h1>--%>
<%--<p><strong>Ngày Giờ Bắt Đầu:</strong> <%= ngaygiobatdau %></p>--%>
<%--<p><strong>Ngày Giờ Kết Thúc:</strong> <%= ngaygioketthuc %></p>--%>

<%--<h2>Danh Sách Phòng Chiếu:</h2>--%>
<%--<table>--%>
<%--    <tr>--%>
<%--        <th>ID</th>--%>
<%--        <th>Tên Phòng</th>--%>
<%--        <th>Số Lượng Ghế</th>--%>
<%--        <th>Chọn</th>--%>
<%--    </tr>--%>
<%--    <%--%>
<%--        for (Phongchieu328 phongChieu : phongChieuList) {--%>
<%--    %>--%>
<%--    <tr>--%>
<%--        <td><%= phongChieu.getId() %></td>--%>
<%--        <td><%= phongChieu.getTen() %></td>--%>
<%--        <td><%= phongChieu.getSoluongghe() %></td>--%>
<%--        <td>--%>
<%--            <form action="GDChonphim328.jsp" method="post">--%>
<%--                <input type="hidden" name="ngaygiobatdau" value="<%= ngaygiobatdau %>">--%>
<%--                <input type="hidden" name="ngaygioketthuc" value="<%= ngaygioketthuc %>">--%>
<%--                <input type="hidden" name="idPhong" value="<%= phongChieu.getId() %>">--%>
<%--                <input type="submit" value="Chọn">--%>
<%--            </form>--%>
<%--        </td>--%>
<%--    </tr>--%>
<%--    <%--%>
<%--        }--%>
<%--    %>--%>
<%--</table>--%>

<%--<a href="GDThemlich328.jsp">Quay lại</a>--%>
<%--</body>--%>
<%--</html>--%>


<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ page import="java.sql.*" %>--%>
<%--<%@ page import="java.util.*" %>--%>
<%--<%@ page import="dao.PhongchieuDAO328" %>--%>
<%--<%@ page import="entity.Phongchieu328" %>--%>
<%--<%@ page import="java.time.LocalDateTime" %>--%>

<%--<%--%>
<%--    String ngaygiobatdau = request.getParameter("ngaygiobatdau");--%>
<%--    String ngaygioketthuc = request.getParameter("ngaygioketthuc");--%>
<%--    PhongchieuDAO328 dao = new PhongchieuDAO328();--%>
<%--    List<Phongchieu328> phongChieuList = dao.findPhongchieuByDateAndTime(ngaygiobatdau, ngaygioketthuc);--%>
<%--%>--%>

<%--<!DOCTYPE html>--%>
<%--<html lang="vi">--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <title>Kết Quả Tìm Kiếm Phòng Chiếu</title>--%>
<%--    <style>--%>
<%--        body {--%>
<%--            font-family: 'Roboto', sans-serif;--%>
<%--            background-color: #f4f4f4;--%>
<%--            margin: 0;--%>
<%--            padding: 20px;--%>
<%--        }--%>
<%--        table {--%>
<%--            border-collapse: collapse;--%>
<%--            width: 100%;--%>
<%--            margin-top: 20px;--%>
<%--            background-color: #fff;--%>
<%--            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);--%>
<%--        }--%>
<%--        th, td {--%>
<%--            border: 1px solid #ddd;--%>
<%--            padding: 8px;--%>
<%--            text-align: left;--%>
<%--        }--%>
<%--        th {--%>
<%--            background-color: #f2f2f2;--%>
<%--        }--%>
<%--        h1 {--%>
<%--            color: #333;--%>
<%--            font-size: 24px;--%>
<%--            margin-bottom: 10px;--%>
<%--        }--%>
<%--        h2 {--%>
<%--            color: #555;--%>
<%--            font-size: 20px;--%>
<%--            margin-bottom: 10px;--%>
<%--        }--%>
<%--        a {--%>
<%--            text-decoration: none;--%>
<%--            color: #007bff;--%>
<%--            font-size: 16px;--%>
<%--        }--%>
<%--        a:hover {--%>
<%--            text-decoration: underline;--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<h1>Danh sách phòng chiếu trống</h1>--%>
<%--<p><strong>Ngày Giờ Bắt Đầu:</strong> <%= ngaygiobatdau %></p>--%>
<%--<p><strong>Ngày Giờ Kết Thúc:</strong> <%= ngaygioketthuc %></p>--%>

<%--<h2>Danh Sách Phòng Chiếu:</h2>--%>
<%--<table>--%>
<%--    <tr>--%>
<%--        <th>ID</th>--%>
<%--        <th>Tên Phòng</th>--%>
<%--        <th>Số Lượng Ghế</th>--%>
<%--        <th>Chọn</th>--%>
<%--    </tr>--%>
<%--    <%--%>
<%--        for (Phongchieu328 phongChieu : phongChieuList) {--%>
<%--    %>--%>
<%--    <tr>--%>
<%--        <td><%= phongChieu.getId() %></td>--%>
<%--        <td><%= phongChieu.getTen() %></td>--%>
<%--        <td><%= phongChieu.getSoluongghe() %></td>--%>
<%--        <td>--%>
<%--            <form action="GDChonphim328.jsp" method="post">--%>
<%--                <input type="hidden" name="ngaygiobatdau" value="<%= ngaygiobatdau %>">--%>
<%--                <input type="hidden" name="ngaygioketthuc" value="<%= ngaygioketthuc %>">--%>
<%--                <input type="hidden" name="idPhong" value="<%= phongChieu.getId() %>">--%>
<%--                <input type="submit" value="Chọn">--%>
<%--            </form>--%>
<%--        </td>--%>
<%--    </tr>--%>
<%--    <%--%>
<%--        }--%>
<%--    %>--%>
<%--</table>--%>

<%--<a href="GDThemlich328.jsp">Quay lại</a>--%>
<%--</body>--%>
<%--</html>--%>



<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="dao.PhongchieuDAO328" %>
<%@ page import="entity.Phongchieu328" %>
<%@ page import="java.time.LocalDateTime" %>

<%
    String ngaygiobatdau = request.getParameter("ngaygiobatdau");
    String ngaygioketthuc = request.getParameter("ngaygioketthuc");
    PhongchieuDAO328 dao = new PhongchieuDAO328();
    List<Phongchieu328> phongChieuList = dao.findPhongchieuByDateAndTime(ngaygiobatdau, ngaygioketthuc);
%>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Kết Quả Tìm Kiếm Phòng Chiếu</title>
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
            width: 900px;
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
    <h1>Danh sách phòng chiếu trống</h1>
    <p><strong>Ngày Giờ Bắt Đầu:</strong> <%= ngaygiobatdau %></p>
    <p><strong>Ngày Giờ Kết Thúc:</strong> <%= ngaygioketthuc %></p>

    <h2>Danh Sách Phòng Chiếu:</h2>
    <table>
        <tr>
            <th>ID</th>
            <th>Tên Phòng</th>
            <th>Số Lượng Ghế</th>
            <th>Chọn</th>
        </tr>
        <%
            for (Phongchieu328 phongChieu : phongChieuList) {
        %>
        <tr>
            <td><%= phongChieu.getId() %></td>
            <td><%= phongChieu.getTen() %></td>
            <td><%= phongChieu.getSoluongghe() %></td>
            <td>
                <form action="GDChonphim328.jsp" method="post">
                    <input type="hidden" name="ngaygiobatdau" value="<%= ngaygiobatdau %>">
                    <input type="hidden" name="ngaygioketthuc" value="<%= ngaygioketthuc %>">
                    <input type="hidden" name="idPhong" value="<%= phongChieu.getId() %>">
                    <input type="submit" value="Chọn">
                </form>
            </td>
        </tr>
        <%
            }
        %>
    </table>

    <a href="GDThemlich328.jsp" class="search-button back-button">Quay lại</a>
</div>

</body>
</html>
