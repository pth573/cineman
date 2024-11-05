<%@ page import="java.sql.*" %>
<%@ page import="dao.*" %>
<%@ page import="entity.Phim328" %>
<%@ page import="entity.Phongchieu328" %>
<%@ page import="entity.Lichchieu328" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Xác Nhận Lịch Chiếu</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        .container {
            width: 900px;
            height: 600px;
            margin: auto;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }
        h1 {
            text-align: center;
            color: #333;
        }
        p {
            font-size: 16px;
            color: #555;
        }
        .error {
            color: red;
        }
        .success {
            color: green;
        }
        button {
            padding: 10px 15px;
            background-color: #5cb85c;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #4cae4c;
        }
        a {
            display: inline-block;
            margin-top: 20px;
            text-decoration: none;
            color: #007bff;
        }
        a:hover {
            text-decoration: underline;
        }

        .search-button {
            background-color: #007bff;
            color: white;
            width: 200px;
            height: 50px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 14px;
            text-decoration: none;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            margin: 10px 0;
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
    <h1>Xác Nhận Lịch Chiếu</h1>

    <%
        boolean isSuccess = false;

        try {
            int idPhim = Integer.parseInt(request.getParameter("idPhim"));
            String ngaygiobatdau = request.getParameter("ngaygiobatdau");
            String ngaygioketthuc = request.getParameter("ngaygioketthuc");
            int idPhong = Integer.parseInt(request.getParameter("idPhong"));

            // Tạo đối tượng DAO để truy xuất dữ liệu
            PhimDAO328 phimDAO = new PhimDAO328();
            PhongchieuDAO328 phongDAO = new PhongchieuDAO328();

            Phim328 phim328 = phimDAO.findPhimById(idPhim);
            Phongchieu328 phongchieu328 = phongDAO.findPhongchieuById(idPhong);

            if (phim328 != null && phongchieu328 != null) {
                LichchieuDAO328 lichchieuDAO328 = new LichchieuDAO328();
//                if (lichchieuDAO328.isKhungGioTrong(phongchieu328, ngaygiobatdau, ngaygioketthuc)) {
                    Lichchieu328 lichchieu328 = lichchieuDAO328.createLichchieuphim(ngaygiobatdau, ngaygioketthuc, phongchieu328, phim328);
                    isSuccess = true;
//                }

    %>
    <p><strong>ID Phim:</strong> <%= idPhim %></p>
    <p><strong>Tên Phim:</strong> <%= phim328.getTen() %></p>
    <p><strong>Ngày giờ bắt đầu:</strong> <%= ngaygiobatdau %></p>
    <p><strong>Ngày giờ kết thúc:</strong> <%= ngaygioketthuc %></p>
    <p><strong>ID Phòng:</strong> <%= idPhong %></p>
    <p><strong>Tên Phòng:</strong> <%= phongchieu328.getTen() %></p>
    <%
    } else {
    %>
    <p class="error">Lỗi, không thể xác nhận lịch chiếu.</p>
    <%
        }
    } catch (Exception e) {
    %>
    <p class="error">Lỗi: <%= e.getMessage() %></p>
    <%
        }
    %>

    <%
        if (request.getParameter("confirm") != null) {
            if (isSuccess) {
    %>
    <p class="success">Đã thêm lịch thành công!</p>
    <%
    } else {
    %>
    <p class="error">Lịch đã bị trùng.</p>
    <%
            }
        }
    %>

    <form method="post">
        <input type="hidden" name="idPhim" value="<%= request.getParameter("idPhim") %>">
        <input type="hidden" name="ngaygiobatdau" value="<%= request.getParameter("ngaygiobatdau") %>">
        <input type="hidden" name="ngaygioketthuc" value="<%= request.getParameter("ngaygioketthuc") %>">
        <input type="hidden" name="idPhong" value="<%= request.getParameter("idPhong") %>">
        <button type="submit" name="confirm">Xác Nhận</button>
    </form>

    <%
        String ngaygiobatdau = request.getParameter("ngaygiobatdau");
        String ngaygioketthuc = request.getParameter("ngaygioketthuc");
        String idPhong = request.getParameter("idPhong");
    %>
    <a class="search-button back-button" href="GDChonphim328.jsp?ngaygiobatdau=<%= ngaygiobatdau %>&ngaygioketthuc=<%= ngaygioketthuc %>&idPhong=<%= idPhong %>">Quay lại</a>
    <a class="search-button back-button" href="/cineman">Đăng xuất</a>
</div>
</body>
</html>
