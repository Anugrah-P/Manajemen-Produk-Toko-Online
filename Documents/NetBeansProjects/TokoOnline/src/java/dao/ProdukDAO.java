package dao;
import java.sql.*;
import java.util.*;
import model.Produk;

public class ProdukDAO {
    private String jdbcURL = "jdbc:mysql://localhost:3306/toko_online";
    private String jdbcUsername = "root"; // ganti sesuai user
    private String jdbcPassword = "";     // ganti sesuai password

    private static final String INSERT_SQL = "INSERT INTO produk (nama, kategori, harga, stok) VALUES (?, ?, ?, ?)";
    private static final String SELECT_ALL = "SELECT * FROM produk";
    private static final String SELECT_BY_KATEGORI = "SELECT * FROM produk WHERE kategori=?";
    private static final String SEARCH = "SELECT * FROM produk WHERE nama LIKE ?";
    private static final String SORT_BY_HARGA = "SELECT * FROM produk ORDER BY harga ASC";

    protected Connection getConnection() throws SQLException {
        return DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
    }

    public void tambahProduk(Produk p) throws SQLException {
        try (Connection conn = getConnection(); PreparedStatement stmt = conn.prepareStatement(INSERT_SQL)) {
            stmt.setString(1, p.getNama());
            stmt.setString(2, p.getKategori());
            stmt.setDouble(3, p.getHarga());
            stmt.setInt(4, p.getStok());
            stmt.executeUpdate();
        }
    }

    public List<Produk> daftarProduk(String cari, String kategori, String sort) {
        List<Produk> list = new ArrayList<>();
        String query = SELECT_ALL;

        if (cari != null && !cari.isEmpty()) {
            query = SEARCH;
        } else if (kategori != null && !kategori.isEmpty()) {
            query = SELECT_BY_KATEGORI;
        } else if (sort != null && sort.equals("harga")) {
            query = SORT_BY_HARGA;
        }

        try (Connection conn = getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {
            if (query.equals(SEARCH)) {
                stmt.setString(1, "%" + cari + "%");
            } else if (query.equals(SELECT_BY_KATEGORI)) {
                stmt.setString(1, kategori);
            }
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                list.add(new Produk(
                    rs.getInt("id"),
                    rs.getString("nama"),
                    rs.getString("kategori"),
                    rs.getDouble("harga"),
                    rs.getInt("stok")
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
}
