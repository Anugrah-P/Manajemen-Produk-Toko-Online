package servlet;
import dao.ProdukDAO;
import model.Produk;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.SQLException;

public class TambahProdukServlet extends HttpServlet {
    private ProdukDAO dao = new ProdukDAO();

    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
        throws ServletException, IOException {
        try {
            String nama = req.getParameter("nama");
            String kategori = req.getParameter("kategori");
            double harga = Double.parseDouble(req.getParameter("harga"));
            int stok = Integer.parseInt(req.getParameter("stok"));

            Produk p = new Produk(0, nama, kategori, harga, stok);
            dao.tambahProduk(p);

            resp.sendRedirect("produk");
        } catch (NumberFormatException | SQLException e) {
            req.setAttribute("error", "Input tidak valid!");
            req.getRequestDispatcher("tambah_produk.jsp").forward(req, resp);
        }
    }
}
