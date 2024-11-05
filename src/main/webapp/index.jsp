<%@ page import="java.sql.*" %>
<%@ page import="dao.ThanhvienDAO328" %>
<%@ page import="entity.Thanhvien328" %>
<%@ page import="dao.KhachhangDAO328" %>
<%@ page import="entity.Nhanvien328" %>
<%@ page import="entity.Khachhang328" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng Nhập / Đăng Ký</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700">
    <style>
        body {
            background: linear-gradient(90deg, rgba(141,194,111,1) 0%, rgba(118,184,82,1) 50%);
            font-family: "Montserrat", sans-serif;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
        }
        .login-page {
            width: 360px;
            padding: 8% 0 0;
            margin: auto;
        }
        .form {
            position: relative;
            z-index: 1;
            background: #FFFFFF;
            max-width: 360px;
            margin: 0 auto 100px;
            padding: 45px;
            text-align: center;
            box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
        }
        .form input {
            font-family: "Montserrat", sans-serif;
            outline: 0;
            background: #f2f2f2;
            width: 100%;
            border: 0;
            margin: 0 0 15px;
            padding: 15px;
            box-sizing: border-box;
            font-size: 14px;
        }
        .form button {
            font-family: "Montserrat", sans-serif;
            text-transform: uppercase;
            outline: 0;
            background: #4CAF50;
            width: 100%;
            border: 0;
            padding: 15px;
            color: #FFFFFF;
            font-size: 14px;
            transition: all 0.3s ease;
            cursor: pointer;
        }
        .form button:hover {
            background: #43A047;
        }
        .form .message {
            margin: 15px 0 0;
            color: #b3b3b3;
            font-size: 12px;
        }
        .form .message a {
            color: #4CAF50;
            text-decoration: none;
        }
        .register-form {
            display: none;
        }
    </style>
</head>
<body>

<div class="login-page">
    <div class="form">
        <form class="register-form" method="post">
            <input type="text" name="ten" placeholder="Tên" required/>
            <input type="date" name="ngaysinh" placeholder="Ngày sinh" required/>
            <input type="email" name="email" placeholder="Email" required/>
            <input type="text" name="sdt" placeholder="Số điện thoại" required/>
            <input type="text" name="tendangnhap" placeholder="Tên đăng nhập" required/>
            <input type="password" name="matkhau" placeholder="Mật khẩu" required/>
            <button type="submit" name="action" value="register">Tạo tài khoản</button>
            <p class="message">Đã có tài khoản? <a href="#" class="toggle-form">Đăng Nhập</a></p>
        </form>

        <form class="login-form" method="post">
            <input type="text" name="tendangnhap" placeholder="Tên đăng nhập" required/>
            <input type="password" name="matkhau" placeholder="Mật khẩu" required/>
            <button type="submit" name="action" value="login">Đăng Nhập</button>
            <p class="message">Chưa có tài khoản? <a href="#" class="toggle-form">Tạo tài khoản</a></p>
        </form>

        <%
            ThanhvienDAO328 thanhvienDAO328 = new ThanhvienDAO328();
            String action = request.getParameter("action");

            if ("login".equals(action)) {
                String tendangnhap = request.getParameter("tendangnhap");
                String matkhau = request.getParameter("matkhau");

                Thanhvien328 thanhVien328 = thanhvienDAO328.checkLogin(tendangnhap, matkhau);
                if (thanhVien328 != null) {
                    out.println("<p style='color: green;'>Đăng nhập thành công!</p>");
                    if(thanhVien328 instanceof Nhanvien328){

                        response.sendRedirect("modul_2/GDChinhQL328.jsp");
                    }
                    else if(thanhVien328 instanceof Khachhang328){
                        response.sendRedirect("modul_1/GDChinhKH328.jsp");
                    }
                } else {
                    out.println("<p style='color: red;'>Đăng nhập không thành công!</p>");
                }
            } else if ("register".equals(action)) {
                String ten = request.getParameter("ten");
                String ngaysinh = request.getParameter("ngaysinh");
                String email = request.getParameter("email");
                String sdt = request.getParameter("sdt");
                String tendangnhap = request.getParameter("tendangnhap");
                String matkhau = request.getParameter("matkhau");
                if (thanhvienDAO328.isTendangnhapExist(tendangnhap)) {
                    out.println("<p style='color: red;'>Người dùng đã tồn tại</p>");
                } else {
                    int id = thanhvienDAO328.addThanhVien(ten, ngaysinh, email, sdt, tendangnhap, matkhau);
                    KhachhangDAO328 khachhangDAO328 = new KhachhangDAO328();
                    khachhangDAO328.addKhachhang(id);
                    out.println("<p style='color: green;'>Tạo tài khoản thành công!</p>");
                }
            }
        %>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $('.toggle-form').click(function(event){
        event.preventDefault();
        $('.register-form, .login-form').toggle();
    });
</script>

</body>
</html>
