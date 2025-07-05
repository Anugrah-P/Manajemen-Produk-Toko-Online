<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Tambah Produk</title>
    <link rel="stylesheet" href="style.css"/>
</head>
<body>
    <h1>Tambah Produk Baru</h1>
    <form method="post" action="tambahProduk">
        <input type="text" name="nama" placeholder="Nama Produk" required /><br>
        <input type="text" name="kategori" placeholder="Kategori" required /><br>
        <input type="number" name="harga" placeholder="Harga" required /><br>
        <input type="number" name="stok" placeholder="Stok" required /><br>
        <button type="submit">Tambah</button>
    </form>
    <% if (request.getAttribute("error") != null) { %>
        <p style="color:red;"><%= request.getAttribute("error") %></p>
    <% } %>
    <a href="produk">Kembali ke daftar produk</a>
</body>
</html>
