import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "PercentServlet", value = "/PercentServlet")
public class PercentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String product = request.getParameter("product");
        int listPrice = Integer.parseInt(request.getParameter("listPrice"));
        int percentDiscount = Integer.parseInt(request.getParameter("percentDiscount"));
        int amountDiscount = (int) (listPrice * percentDiscount * 0.01);
        int priceDiscount = listPrice - amountDiscount;
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("result.jsp");
        request.setAttribute("amountDiscount",amountDiscount);
        request.setAttribute("priceDiscount",priceDiscount);
        request.setAttribute("product",product);
        requestDispatcher.forward(request,response);
    }
}
