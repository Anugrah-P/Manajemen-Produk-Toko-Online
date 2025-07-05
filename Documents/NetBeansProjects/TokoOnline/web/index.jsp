<%@ page import="java.util.*,model.Produk" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Daftar Produk</title>
    <link rel="stylesheet" href="style.css"/>
</head>
<body>
    <h1>Manajemen Produk Toko Online</h1>
    <form method="get" action="produk">
        <input type="text" name="cari" placeholder="Cari produk..." />
        <select name="kategori">
            <option value="">Semua Kategori</option>
            <option value="Elektronik">Elektronik</option>
            <option value="Pakaian">Pakaian</option>
            <option value="Lainnya">Lainnya</option>
        </select>
        <select name="sort">
            <option value="">Urutkan</option>
            <option value="harga">Harga Termurah</option>
        </select>
        <button type="submit">Cari</button>
        <a href="tambah_produk.jsp">Tambah Produk</a>
    </form>
    <table>
        <tr>
            <th>ID</th><th>Nama</th><th>Kategori</th><th>Harga</th><th>Stok</th>
        </tr>
        <%
        List<Produk> produkList = (List<Produk>) request.getAttribute("produkList");
        if (produkList != null) {
            for (Produk p : produkList) {
        %>
        <tr>
            <td><%=p.getId()%></td>
            <td><%=p.getNama()%></td>
            <td><%=p.getKategori()%></td>
            <td>Rp <%=p.getHarga()%></td>
            <td><%=p.getStok()%></td>
        </tr>
        <%  }
        }
        %>
    </table>
</body>
</html>
