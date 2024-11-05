<%@ page import="dao.PhimDAO328" %>
<%@ page import="entity.Phim328" %>
<%
    String ngaygiobatdau = request.getParameter("ngaygiobatdau");
    String ngaygioketthuc = request.getParameter("ngaygioketthuc");
    String idPhong = request.getParameter("idPhong");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Thêm Phim Mới</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap">
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

        form {
            width: 1000px;
            height: 700px;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            border-radius: 8px;
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        h1 {
            text-align: center;
            font-size: 24px;
            font-weight: 700;
            margin-bottom: 10px;
        }

        label {
            font-weight: 500;
            margin-bottom: 2px;
        }

        input[type="text"], input[type="number"], input[type="datetime-local"], textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
            box-sizing: border-box;
        }

        textarea {
            resize: vertical;
            min-height: 40px;
        }

        input[type="submit"] {
            width: 100%;
            padding: 7px;
            background-color: #4CAF50;
            color: white;
            font-size: 18px;
            font-weight: 500;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        a {
            display: block;
            text-align: center;
            color: #333;
            text-decoration: none;
            font-size: 16px;
            margin-top: 10px;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<form action="" method="post">
    <h1>Them phim moi</h1>
    <label for="ten">Ten Phim:</label>
    <input type="text" id="ten" name="ten" required>

    <label for="mota">Mo ta:</label>
    <textarea id="mota" name="mota" required></textarea>

    <label for="theloai">The loai:</label>
    <input type="text" id="theloai" name="theloai" required>

    <label for="thoiluong">Thoi luong (phut):</label>
    <input type="number" id="thoiluong" name="thoiluong" required>

    <label for="ngaygiokhoichieu">Ngay gio khoi chieu:</label>
    <input type="datetime-local" id="ngaygiokhoichieu" name="ngaygiokhoichieu" required>

    <label for="ngaygioketthuckhoichieu"> Ngay gio ket thuc khoi chieu:</label>
    <input type="datetime-local" id="ngaygioketthuckhoichieu" name="ngaygioketthuckhoichieu" required>


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
                    out.println("<h1>Them Phim Thanh Cong!</h1>");
                } else {
                    out.println("<h1>Them Phim Khong Thanh Cong!</h1>");
                }
            } catch (Exception e) {
                e.printStackTrace();
                out.println("<h1>Da xay ra loi: " + e.getMessage() + "</h1>");
            }
        }
    %>



    <a href="GDChonphim328.jsp?ngaygiobatdau=<%= ngaygiobatdau %>&ngaygioketthuc=<%= ngaygioketthuc %>&idPhong=<%= idPhong %>">Quay lai</a>

    <input type="submit" value="Luu">
</form>
</body>
</html>
