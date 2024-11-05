
<%--&lt;%&ndash;<%@ page contentType="text/html;charset=UTF-8" language="java" %>&ndash;%&gt;--%>
<%--&lt;%&ndash;<%@ page import="java.util.ArrayList" %>&ndash;%&gt;--%>
<%--&lt;%&ndash;<%@ page import="java.util.List" %>&ndash;%&gt;--%>
<%--&lt;%&ndash;<%@ page import="entity.Phim328" %>&ndash;%&gt;--%>
<%--&lt;%&ndash;<%@ page import="dao.PhimDAO328" %>&ndash;%&gt;--%>
<%--&lt;%&ndash;<!DOCTYPE html>&ndash;%&gt;--%>
<%--&lt;%&ndash;<html lang="en">&ndash;%&gt;--%>
<%--&lt;%&ndash;<head>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <meta charset="UTF-8">&ndash;%&gt;--%>
<%--&lt;%&ndash;    <meta name="viewport" content="width=device-width, initial-scale=1.0">&ndash;%&gt;--%>
<%--&lt;%&ndash;    <title>Tìm Kiếm Phim</title>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <style>&ndash;%&gt;--%>
<%--&lt;%&ndash;        body {&ndash;%&gt;--%>
<%--&lt;%&ndash;            font-family: Arial, sans-serif;&ndash;%&gt;--%>
<%--&lt;%&ndash;            margin: 0;&ndash;%&gt;--%>
<%--&lt;%&ndash;            padding: 20px;&ndash;%&gt;--%>
<%--&lt;%&ndash;            background-color: #f4f4f4;&ndash;%&gt;--%>
<%--&lt;%&ndash;        }&ndash;%&gt;--%>
<%--&lt;%&ndash;        .container {&ndash;%&gt;--%>
<%--&lt;%&ndash;            max-width: 600px;&ndash;%&gt;--%>
<%--&lt;%&ndash;            margin: auto;&ndash;%&gt;--%>
<%--&lt;%&ndash;            background: white;&ndash;%&gt;--%>
<%--&lt;%&ndash;            padding: 20px;&ndash;%&gt;--%>
<%--&lt;%&ndash;            border-radius: 5px;&ndash;%&gt;--%>
<%--&lt;%&ndash;            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);&ndash;%&gt;--%>
<%--&lt;%&ndash;        }&ndash;%&gt;--%>
<%--&lt;%&ndash;        h1 {&ndash;%&gt;--%>
<%--&lt;%&ndash;            text-align: center;&ndash;%&gt;--%>
<%--&lt;%&ndash;            color: #333;&ndash;%&gt;--%>
<%--&lt;%&ndash;        }&ndash;%&gt;--%>
<%--&lt;%&ndash;        input[type="text"] {&ndash;%&gt;--%>
<%--&lt;%&ndash;            width: 100%;&ndash;%&gt;--%>
<%--&lt;%&ndash;            padding: 10px;&ndash;%&gt;--%>
<%--&lt;%&ndash;            margin: 10px 0;&ndash;%&gt;--%>
<%--&lt;%&ndash;            border: 1px solid #ccc;&ndash;%&gt;--%>
<%--&lt;%&ndash;            border-radius: 4px;&ndash;%&gt;--%>
<%--&lt;%&ndash;        }&ndash;%&gt;--%>
<%--&lt;%&ndash;        input[type="submit"] {&ndash;%&gt;--%>
<%--&lt;%&ndash;            background-color: #28a745;&ndash;%&gt;--%>
<%--&lt;%&ndash;            color: white;&ndash;%&gt;--%>
<%--&lt;%&ndash;            padding: 10px 15px;&ndash;%&gt;--%>
<%--&lt;%&ndash;            border: none;&ndash;%&gt;--%>
<%--&lt;%&ndash;            border-radius: 4px;&ndash;%&gt;--%>
<%--&lt;%&ndash;            cursor: pointer;&ndash;%&gt;--%>
<%--&lt;%&ndash;            width: 100%;&ndash;%&gt;--%>
<%--&lt;%&ndash;        }&ndash;%&gt;--%>
<%--&lt;%&ndash;        input[type="submit"]:hover {&ndash;%&gt;--%>
<%--&lt;%&ndash;            background-color: #218838;&ndash;%&gt;--%>
<%--&lt;%&ndash;        }&ndash;%&gt;--%>
<%--&lt;%&ndash;        .movie-list {&ndash;%&gt;--%>
<%--&lt;%&ndash;            margin-top: 20px;&ndash;%&gt;--%>
<%--&lt;%&ndash;        }&ndash;%&gt;--%>
<%--&lt;%&ndash;        .movie-item {&ndash;%&gt;--%>
<%--&lt;%&ndash;            padding: 10px;&ndash;%&gt;--%>
<%--&lt;%&ndash;            border: 1px solid #ddd;&ndash;%&gt;--%>
<%--&lt;%&ndash;            border-radius: 4px;&ndash;%&gt;--%>
<%--&lt;%&ndash;            margin-bottom: 10px;&ndash;%&gt;--%>
<%--&lt;%&ndash;            background-color: #f9f9f9;&ndash;%&gt;--%>
<%--&lt;%&ndash;        }&ndash;%&gt;--%>
<%--&lt;%&ndash;        @media (max-width: 600px) {&ndash;%&gt;--%>
<%--&lt;%&ndash;            body {&ndash;%&gt;--%>
<%--&lt;%&ndash;                padding: 10px;&ndash;%&gt;--%>
<%--&lt;%&ndash;            }&ndash;%&gt;--%>
<%--&lt;%&ndash;        }&ndash;%&gt;--%>
<%--&lt;%&ndash;    </style>&ndash;%&gt;--%>
<%--&lt;%&ndash;</head>&ndash;%&gt;--%>
<%--&lt;%&ndash;<body>&ndash;%&gt;--%>

<%--&lt;%&ndash;<div class="container">&ndash;%&gt;--%>
<%--&lt;%&ndash;    <h1>Tìm Kiếm Phim</h1>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <form method="post">&ndash;%&gt;--%>
<%--&lt;%&ndash;        <input type="text" name="movieName" placeholder="Nhập tên phim..." required>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <input type="submit" value="Tìm Kiếm">&ndash;%&gt;--%>
<%--&lt;%&ndash;    </form>&ndash;%&gt;--%>

<%--&lt;%&ndash;    <div class="movie-list">&ndash;%&gt;--%>
<%--&lt;%&ndash;        &lt;%&ndash;%>--%>
<%--&lt;%&ndash;            // Tạo đối tượng DAO&ndash;%&gt;--%>
<%--&lt;%&ndash;            PhimDAO328 phimDAO = new PhimDAO328();&ndash;%&gt;--%>

<%--&lt;%&ndash;            // Nhận truy vấn tìm kiếm từ form&ndash;%&gt;--%>
<%--&lt;%&ndash;            String searchQuery = request.getParameter("movieName");&ndash;%&gt;--%>
<%--&lt;%&ndash;            if (searchQuery != null && !searchQuery.trim().isEmpty()) {&ndash;%&gt;--%>
<%--&lt;%&ndash;                out.println("<h2>Kết quả tìm kiếm cho: " + searchQuery + "</h2>");&ndash;%&gt;--%>

<%--&lt;%&ndash;                // Tìm kiếm phim theo tên&ndash;%&gt;--%>
<%--&lt;%&ndash;                Phim328 phim = phimDAO.findPhimByTen(searchQuery);&ndash;%&gt;--%>
<%--&lt;%&ndash;                if (phim != null) {&ndash;%&gt;--%>
<%--&lt;%&ndash;                    out.println("<div class='movie-item'>" +&ndash;%&gt;--%>
<%--&lt;%&ndash;                            "<strong>" + phim.getTen() + "</strong><br>" +&ndash;%&gt;--%>
<%--&lt;%&ndash;                            "<p><strong>Mô Tả:</strong> " + phim.getMota() + "</p>" +&ndash;%&gt;--%>
<%--&lt;%&ndash;                            "<p><strong>Thể Loại:</strong> " + phim.getTheloai() + "</p>" +&ndash;%&gt;--%>
<%--&lt;%&ndash;                            "<p><strong>Thời Lượng:</strong> " + phim.getThoiluong() + " phút</p>" +&ndash;%&gt;--%>
<%--&lt;%&ndash;                            "<p><strong>Ngày Giờ Khởi Chiếu:</strong> " + phim.getNgaygiokhoichieu() + "</p>" +&ndash;%&gt;--%>
<%--&lt;%&ndash;                            "<p><strong>Ngày Giờ Kết Thúc:</strong> " + phim.getNgaygioketthuc() + "</p>" +&ndash;%&gt;--%>
<%--&lt;%&ndash;                            "</div>");&ndash;%&gt;--%>
<%--&lt;%&ndash;                } else {&ndash;%&gt;--%>
<%--&lt;%&ndash;                    out.println("<div class='movie-item'>Không tìm thấy phim nào.</div>");&ndash;%&gt;--%>
<%--&lt;%&ndash;                }&ndash;%&gt;--%>
<%--&lt;%&ndash;            }&ndash;%&gt;--%>
<%--&lt;%&ndash;        %>&ndash;%&gt;--%>
<%--&lt;%&ndash;    </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;</div>&ndash;%&gt;--%>

<%--&lt;%&ndash;</body>&ndash;%&gt;--%>
<%--&lt;%&ndash;</html>&ndash;%&gt;--%>


<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ page import="java.util.List" %>--%>
<%--<%@ page import="entity.Phim328" %>--%>
<%--<%@ page import="dao.PhimDAO328" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--  <meta charset="UTF-8">--%>
<%--  <meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
<%--  <title>Tìm Kiếm Phim</title>--%>
<%--  <style>--%>
<%--    body {--%>
<%--      font-family: Arial, sans-serif;--%>
<%--      background-color: #f4f4f4;--%>
<%--      padding: 20px;--%>
<%--      margin: 0;--%>
<%--    }--%>
<%--    .container {--%>
<%--      max-width: 600px;--%>
<%--      margin: auto;--%>
<%--      background: white;--%>
<%--      padding: 20px;--%>
<%--      border-radius: 5px;--%>
<%--      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);--%>
<%--    }--%>
<%--    h1 {--%>
<%--      text-align: center;--%>
<%--      color: #333;--%>
<%--    }--%>
<%--    input[type="text"], input[type="submit"] {--%>
<%--      width: 100%;--%>
<%--      padding: 10px;--%>
<%--      margin: 10px 0;--%>
<%--      border-radius: 4px;--%>
<%--      border: 1px solid #ccc;--%>
<%--    }--%>
<%--    input[type="submit"] {--%>
<%--      background-color: #28a745;--%>
<%--      color: white;--%>
<%--      cursor: pointer;--%>
<%--    }--%>
<%--    input[type="submit"]:hover {--%>
<%--      background-color: #218838;--%>
<%--    }--%>
<%--    table {--%>
<%--      width: 100%;--%>
<%--      border-collapse: collapse;--%>
<%--      margin-top: 20px;--%>
<%--    }--%>
<%--    table, th, td {--%>
<%--      border: 1px solid #ddd;--%>
<%--      padding: 8px;--%>
<%--      text-align: center;--%>
<%--    }--%>
<%--    th {--%>
<%--      background-color: #f2f2f2;--%>
<%--      color: #333;--%>
<%--    }--%>
<%--    .movie-item {--%>
<%--      margin-top: 20px;--%>
<%--      color: #777;--%>
<%--    }--%>
<%--  </style>--%>
<%--</head>--%>
<%--<body>--%>

<%--<div class="container">--%>
<%--  <h1>Tìm Kiếm Phim</h1>--%>
<%--  <form method="post">--%>
<%--    <input type="text" name="movieName" placeholder="Nhập tên phim..." required>--%>
<%--    <input type="submit" value="Tìm Kiếm">--%>
<%--  </form>--%>

<%--  <div class="movie-list">--%>
<%--    <%--%>
<%--      PhimDAO328 phimDAO = new PhimDAO328();--%>
<%--      String searchQuery = request.getParameter("movieName");--%>

<%--      List<Phim328> danhSachPhim = null;--%>
<%--      if (searchQuery != null && !searchQuery.trim().isEmpty()) {--%>
<%--        danhSachPhim = phimDAO.findPhimByTen(searchQuery);--%>
<%--      }--%>
<%--      if (danhSachPhim != null && !danhSachPhim.isEmpty()) {--%>
<%--    %>--%>
<%--&lt;%&ndash;    <table>&ndash;%&gt;--%>
<%--&lt;%&ndash;      <tr><th>STT</th><th>ID</th><th>Tên</th><th>Chi tiết</th></tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;      &lt;%&ndash;%>--%>
<%--&lt;%&ndash;        for (int i = 0; i < danhSachPhim.size(); i++) {&ndash;%&gt;--%>
<%--&lt;%&ndash;          Phim328 phim = danhSachPhim.get(i);&ndash;%&gt;--%>
<%--&lt;%&ndash;//&ndash;%&gt;--%>
<%--&lt;%&ndash;//          if (session == null) {&ndash;%&gt;--%>
<%--&lt;%&ndash;//            session = request.getSession(true);&ndash;%&gt;--%>
<%--&lt;%&ndash;//          }&ndash;%&gt;--%>
<%--&lt;%&ndash;//&ndash;%&gt;--%>
<%--&lt;%&ndash;//          session.setAttribute("phim", phim);&ndash;%&gt;--%>
<%--&lt;%&ndash;      %>&ndash;%&gt;--%>
<%--&lt;%&ndash;      <tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <td><%= i + 1 %></td>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <td><%= phim.getId() %></td>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <td><%= phim.getTen() %></td>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <td><a href="GDChiTietPhim328.jsp?id=<%= phim.getId() %>">Xem Chi Tiết</a></td>&ndash;%&gt;--%>
<%--&lt;%&ndash;      </tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;      &lt;%&ndash;%>--%>
<%--&lt;%&ndash;        }&ndash;%&gt;--%>
<%--&lt;%&ndash;      %>&ndash;%&gt;--%>
<%--&lt;%&ndash;    </table>&ndash;%&gt;--%>


<%--    <table>--%>
<%--      <tr><th>STT</th><th>ID</th><th>Tên</th><th>Chi tiết</th></tr>--%>
<%--      <%--%>
<%--        for (int i = 0; i < danhSachPhim.size(); i++) {--%>
<%--          Phim328 phim = danhSachPhim.get(i);--%>
<%--          session.setAttribute("phim", phim);--%>
<%--      %>--%>
<%--      <tr>--%>
<%--        <td><%= i + 1 %></td>--%>
<%--        <td><%= phim.getId() %></td>--%>
<%--        <td><%= phim.getTen() %></td>--%>
<%--        <td><a href="GDChiTietPhim328.jsp">Xem Chi Tiết</a></td>--%>
<%--      </tr>--%>
<%--      <%--%>
<%--        }--%>
<%--      %>--%>
<%--    </table>--%>

<%--    <%--%>
<%--    } else if (searchQuery != null) {--%>
<%--    %>--%>
<%--    <div class="movie-item">Không tìm thấy phim nào với tên "<%= searchQuery %>".</div>--%>
<%--    <%--%>
<%--      }--%>
<%--    %>--%>
<%--  </div>--%>
<%--</div>--%>

<%--</body>--%>
<%--</html>--%>


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
      font-family: 'Roboto', sans-serif; /* Sử dụng phông chữ Roboto */
      background-color: #f4f4f4;
      margin: 0;
      display: flex;
      justify-content: center; /* Căn giữa theo chiều ngang */
      align-items: center; /* Căn giữa theo chiều dọc */
      height: 100vh; /* Để toàn bộ chiều cao của viewport */
    }
    .container {
      width: 900px; /* Chiều rộng 900px */
      height: 600px; /* Chiều cao 600px */
      background: white;
      padding: 20px;
      border-radius: 5px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      display: flex;
      flex-direction: column; /* Căn giữa nội dung theo chiều dọc */
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
