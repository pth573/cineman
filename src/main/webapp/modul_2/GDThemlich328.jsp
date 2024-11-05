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
            width: 900px;
            height: 600px;
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            text-align: center;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
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
            text-align: left;
            width: 100%;
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
            width: 200px;
            height: 50px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            text-decoration: none;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-top: 10px;
        }
        button[type="submit"]:hover, a:hover {
            background-color: #0056b3;
        }
        a {
            margin-left: 10px;
            background-color: #666666;
            width: 200px;
            height: 50px;
            display: flex;
            align-items: center;
            justify-content: center;
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
