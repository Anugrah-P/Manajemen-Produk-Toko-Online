import java.sql.Connection;
import java.sql.DriverManager;

public class TestKoneksiDB {
    public static void main(String[] args) {
        // Ganti sesuai database Anda
        String jdbcURL = "jdbc:mysql://localhost:3306/toko_online";
        String jdbcUsername = "root"; // Ganti jika bukan root
        String jdbcPassword = "";     // Ganti jika ada password

        try {
            // Pastikan driver sudah di-include di Libraries project!
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
            System.out.println("Koneksi ke database BERHASIL!");
            conn.close();
        } catch (Exception e) {
            System.out.println("Koneksi ke database GAGAL!");
            e.printStackTrace();
        }
    }
}
