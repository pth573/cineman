<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Thêm lịch chiếu</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<h1>Thêm lịch chiếu</h1>--%>
<%--<form action="GDChonphongchieu328.jsp" method="post">--%>
<%--    <label for="ngaygiobatdau">Ngày Giờ Bắt Đầu:</label>--%>
<%--    <input type="datetime-local" id="ngaygiobatdau" name="ngaygiobatdau" required /><br /><br />--%>

<%--    <label for="ngaygioketthuc">Ngày Giờ Kết Thúc:</label>--%>
<%--    <input type="datetime-local" id="ngaygioketthuc" name="ngaygioketthuc" required /><br /><br />--%>

<%--    <button type="submit">Tìm Kiếm</button>--%>
<%--</form>--%>
<%--<a href="GDLenlich328.jsp">Quay lại</a>--%>

<%--</body>--%>
<%--</html>--%>


<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Thêm lịch chiếu</title>--%>
<%--    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">--%>
<%--    <style>--%>
<%--        body {--%>
<%--            font-family: 'Roboto', sans-serif;--%>
<%--            background-color: #f4f4f4;--%>
<%--            margin: 0;--%>
<%--            padding: 0;--%>
<%--            display: flex;--%>
<%--            justify-content: center;--%>
<%--            align-items: center;--%>
<%--            height: 100vh;--%>
<%--        }--%>
<%--        .container {--%>
<%--            max-width: 500px;--%>
<%--            background-color: #fff;--%>
<%--            padding: 30px;--%>
<%--            border-radius: 8px;--%>
<%--            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);--%>
<%--            text-align: center;--%>
<%--        }--%>
<%--        h1 {--%>
<%--            color: #333;--%>
<%--            font-size: 24px;--%>
<%--            margin-bottom: 20px;--%>
<%--        }--%>
<%--        label {--%>
<%--            display: block;--%>
<%--            color: #555;--%>
<%--            margin-bottom: 8px;--%>
<%--            font-weight: bold;--%>
<%--        }--%>
<%--        input[type="datetime-local"] {--%>
<%--            width: 100%;--%>
<%--            padding: 10px;--%>
<%--            margin-bottom: 20px;--%>
<%--            border: 1px solid #ddd;--%>
<%--            border-radius: 4px;--%>
<%--            font-size: 16px;--%>
<%--            box-sizing: border-box;--%>
<%--        }--%>
<%--        button[type="submit"], a {--%>
<%--            background-color: #007bff;--%>
<%--            color: #fff;--%>
<%--            padding: 10px 20px;--%>
<%--            border: none;--%>
<%--            border-radius: 4px;--%>
<%--            cursor: pointer;--%>
<%--            font-size: 16px;--%>
<%--            text-decoration: none;--%>
<%--            display: inline-block;--%>
<%--            margin-top: 10px;--%>
<%--        }--%>
<%--        button[type="submit"]:hover, a:hover {--%>
<%--            background-color: #0056b3;--%>
<%--        }--%>
<%--        a {--%>
<%--            margin-left: 10px;--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>

<%--<div class="container">--%>
<%--    <h1>Thêm lịch chiếu</h1>--%>
<%--    <form action="GDChonphongchieu328.jsp" method="post">--%>
<%--        <label for="ngaygiobatdau">Ngày Giờ Bắt Đầu:</label>--%>
<%--        <input type="datetime-local" id="ngaygiobatdau" name="ngaygiobatdau" required />--%>

<%--        <label for="ngaygioketthuc">Ngày Giờ Kết Thúc:</label>--%>
<%--        <input type="datetime-local" id="ngaygioketthuc" name="ngaygioketthuc" required />--%>

<%--        <button type="submit">Tìm Kiếm</button>--%>
<%--        <a href="GDLenlich328.jsp">Quay lại</a>--%>
<%--    </form>--%>
<%--</div>--%>

<%--</body>--%>
<%--</html>--%>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thêm lịch chiếu</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            width: 900px; /* Thay đổi kích thước khung chứa */
            height: 600px; /* Thay đổi kích thước khung chứa */
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            text-align: center;
            display: flex;
            flex-direction: column; /* Thay đổi cách bố trí */
            justify-content: center; /* Căn giữa theo chiều dọc */
            align-items: center; /* Căn giữa theo chiều ngang */
        }
        h1 {
            color: #333;
            font-size: 24px;
            margin-bottom: 20px;
        }
        label {
            display: block;
            color: #555;
            margin-bottom: 8px;
            font-weight: bold;
            text-align: left; /* Căn trái nhãn */
            width: 100%; /* Đảm bảo nhãn chiếm toàn bộ chiều rộng */
        }
        input[type="datetime-local"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 16px;
            box-sizing: border-box;
        }
        button[type="submit"], a {
            background-color: #007bff;
            color: #fff;
            width: 200px; /* Đặt kích thước nút giống phiên bản trước */
            height: 50px; /* Đặt kích thước nút giống phiên bản trước */
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            text-decoration: none;
            display: flex;
            align-items: center; /* Căn giữa chữ trong nút */
            justify-content: center; /* Căn giữa chữ trong nút */
            margin-top: 10px;
        }
        button[type="submit"]:hover, a:hover {
            background-color: #0056b3;
        }
        a {
            margin-left: 10px;
            background-color: #666666; /* Nền màu cho nút quay lại */
            width: 200px; /* Đặt kích thước nút quay lại giống như các nút khác */
            height: 50px; /* Đặt kích thước nút quay lại giống như các nút khác */
            display: flex;
            align-items: center; /* Căn giữa chữ trong nút */
            justify-content: center; /* Căn giữa chữ trong nút */
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Thêm lịch chiếu</h1>
    <form action="GDChonphongchieu328.jsp" method="post">
        <label for="ngaygiobatdau">Ngày Giờ Bắt Đầu:</label>
        <input type="datetime-local" id="ngaygiobatdau" name="ngaygiobatdau" required />

        <label for="ngaygioketthuc">Ngày Giờ Kết Thúc:</label>
        <input type="datetime-local" id="ngaygioketthuc" name="ngaygioketthuc" required />

        <button type="submit">Tìm Kiếm</button>
        <a href="GDLenlich328.jsp">Quay lại</a>
    </form>
</div>

</body>
</html>
