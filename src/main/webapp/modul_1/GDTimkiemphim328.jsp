<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="entity.Phim328" %>
<%@ page import="dao.PhimDAO328" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Tìm Kiếm Phim</title>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap" rel="stylesheet">
  <style>
    body {
      font-family: 'Roboto', sans-serif;
      background-color: #f4f4f4;
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
    input[type="text"], input[type="submit"] {
      width: 100%;
      padding: 10px;
      margin: 10px 0;
      border-radius: 4px;
      border: 1px solid #ccc;
    }
    input[type="submit"] {
      background-color: #28a745;
      color: white;
      cursor: pointer;
    }
    input[type="submit"]:hover {
      background-color: #218838;
    }
    table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 20px;
    }
    table, th, td {
      border: 1px solid #ddd;
      padding: 8px;
      text-align: center;
    }
    th {
      background-color: #f2f2f2;
      color: #333;
    }
    .movie-item {
      margin-top: 20px;
      color: #777;
    }
  </style>
</head>
<body>

<div class="container">
  <h1>Tìm Kiếm Phim</h1>
  <form method="post">
    <input type="text" name="movieName" placeholder="Nhập tên phim..." required>
    <input type="submit" value="Tìm Kiếm">
  </form>

  <div class="movie-list">
    <%
      PhimDAO328 phimDAO = new PhimDAO328();
      String searchQuery = request.getParameter("movieName");

      List<Phim328> danhSachPhim = null;
      if (searchQuery != null && !searchQuery.trim().isEmpty()) {
        danhSachPhim = phimDAO.findPhimByTen(searchQuery);
      }
      if (danhSachPhim != null && !danhSachPhim.isEmpty()) {
    %>
    <table>
      <tr><th>STT</th><th>ID</th><th>Tên</th><th>Chi tiết</th></tr>
      <%
        for (int i = 0; i < danhSachPhim.size(); i++) {
          Phim328 phim = danhSachPhim.get(i);
          session.setAttribute("phim", phim);
      %>
      <tr>
        <td><%= i + 1 %></td>
        <td><%= phim.getId() %></td>
        <td><%= phim.getTen() %></td>
        <td><a href="GDChiTietPhim328.jsp?id=<%= phim.getId() %>">Xem Chi Tiết</a></td>
      </tr>
      <%
        }
      %>
    </table>

    <%
    } else if (searchQuery != null) {
    %>
    <div class="movie-item">Không tìm thấy phim nào với tên "<%= searchQuery %>".</div>
    <%
      }
    %>
  </div>
</div>

</body>
</html>
