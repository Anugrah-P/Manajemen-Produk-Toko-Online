/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author pf3k6
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

public class Koneksi {
    private static Connection conn;

    public static Connection getConnection() {
        if (conn == null) {
            try {
                String url = "jdbc:mysql://localhost:3306/penjualan_rumah";
                String user = "root";
                String password = "";

                // Penting: load JDBC driver
                Class.forName("com.mysql.cj.jdbc.Driver");

                conn = DriverManager.getConnection(url, user, password);
                System.out.println("Koneksi berhasil.");
            } catch (Exception e) {
                JOptionPane.showMessageDialog(null, "Koneksi database gagal: " + e.getMessage(), "Database Error", JOptionPane.ERROR_MESSAGE);
            }
        }
        return conn;
    }
}