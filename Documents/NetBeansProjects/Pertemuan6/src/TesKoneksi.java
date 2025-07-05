/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author pf3k6
 */
public class TesKoneksi {
    public static void main (String[] args) {
        if (Koneksi.getConnection() !=null) {
            System.out.println("Koneksi ke database berhasil");
        } else {
            System.out.println(" Koneksi ke database gagal");
        }
    }
}
