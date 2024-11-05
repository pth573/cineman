<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="entity.Phim328" %>
<%@ page import="dao.PhimDAO328" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chi Tiết Phim</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f4f4f4;
            padding: 0;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            width: 900px;
            height: 600px;
            background: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            display: flex;
            flex-direction: column;
        }
        h1 {
            text-align: center;
            color: #333;
        }
        .movie-detail {
            margin-top: 20px;
            color: #555;
            flex-grow: 1;
        }
        .movie-detail p {
            margin: 10px 0;
        }
        .back-button {
            display: inline-block;
            padding: 10px 15px;
            margin-top: 20px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 4px;
            align-self: center;
        }
        .back-button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<div class="container">
    <%
        String idParam = request.getParameter("id");
        int id = (idParam != null) ? Integer.parseInt(idParam) : -1;
        PhimDAO328 phimDAO = new PhimDAO328();
        Phim328 phim = phimDAO.findPhimById(id);


        if (phim != null) {
    %>

    <h1>Chi Tiết Phim <%= phim.getTen() %> </h1>
    <div class="movie-detail">
        <p><strong>ID:</strong> <%= phim.getId() %></p>
        <p><strong>Mô tả:</strong> <%= phim.getMota() %></p>
        <p><strong>Thể Loại:</strong> <%= phim.getTheloai() %></p>
        <p><strong>Thời lượng:</strong> <%= phim.getThoiluong() %></p>
        <p><strong>Ngày giờ chiếu:</strong> <%= phim.getNgaygiokhoichieu() %></p>
        <p><strong>Ngày giờ kết thúc:</strong> <%= phim.getNgaygioketthuc() %></p>
        <%
        } else {
        %>
        <p>Không tìm thấy thông tin phim.</p>
        <%
            }
        %>
    </div>
    <a href="GDChinhKH328.jsp" class="back-button">Quay lại</a>
    <a href="/cineman" class="back-button">Đăng xuất</a>
</div>

</body>
</html>

