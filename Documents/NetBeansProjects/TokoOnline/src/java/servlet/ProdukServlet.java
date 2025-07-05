package servlet;
import dao.ProdukDAO;
import model.Produk;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

public class ProdukServlet extends HttpServlet {
    private ProdukDAO dao = new ProdukDAO();

    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
        throws ServletException, IOException {
        String cari = req.getParameter("cari");
        String kategori = req.getParameter("kategori");
        String sort = req.getParameter("sort");

        List<Produk> daftar = dao.daftarProduk(cari, kategori, sort);
        req.setAttribute("produkList", daftar);
        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }
}
