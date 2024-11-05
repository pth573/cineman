<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
<%--    <title>Trang Chủ</title>--%>
<%--    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap" rel="stylesheet">--%>
<%--    <style>--%>
<%--        body {--%>
<%--            font-family: 'Montserrat', sans-serif;--%>
<%--            background-color: #f4f4f4;--%>
<%--            padding: 20px;--%>
<%--            margin: 0;--%>
<%--        }--%>
<%--        .container {--%>
<%--            max-width: 600px;--%>
<%--            margin: auto;--%>
<%--            background: white;--%>
<%--            padding: 20px;--%>
<%--            border-radius: 5px;--%>
<%--            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);--%>
<%--            text-align: center;--%>
<%--        }--%>
<%--        h1 {--%>
<%--            color: #333;--%>
<%--        }--%>
<%--        .search-button {--%>
<%--            background-color: #007bff;--%>
<%--            color: white;--%>
<%--            padding: 10px 20px;--%>
<%--            border: none;--%>
<%--            border-radius: 4px;--%>
<%--            cursor: pointer;--%>
<%--            font-size: 16px;--%>
<%--            text-decoration: none;--%>
<%--        }--%>
<%--        .search-button:hover {--%>
<%--            background-color: #0056b3;--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>

<%--<div class="container">--%>
<%--    <h1>Quan ly lich chieu</h1>--%>
<%--    <a href="GDThemlich328.jsp" class="search-button">Them lich chieu</a>--%>
<%--</div>--%>

<%--<a href="GDChinhQL328.jsp">Quay lại</a>--%>

<%--</body>--%>
<%--</html>--%>


<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang Chủ</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            width: 900px; /* Thay đổi kích thước khung chứa */
            height: 600px; /* Thay đổi kích thước khung chứa */
            background: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
        }
        h1 {
            color: #333;
            font-size: 24px;
            margin-bottom: 20px;
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
    <h1>Quan ly lich chieu</h1>
    <a href="GDThemlich328.jsp" class="search-button">Them lich chieu</a>
    <a href="GDChinhQL328.jsp" class="search-button back-button">Quay lai</a>
</div>

</body>
</html>
