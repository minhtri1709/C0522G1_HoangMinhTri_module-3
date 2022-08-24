package controller;

import model.Customer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerServlet", value = "/CustomerServlet")
public class CustomerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        List<Customer> customerList = new ArrayList<>();
        customerList.add(new Customer("Hà Bảo Ân", "18-09-1993","Đắk Lắk","https://image-us.eva.vn/upload/2-2022/images/2022-06-11/picture-50-1654935167-10-width632height720.png"));
        customerList.add(new Customer("Bùi Hùng", "18-09-1993","Đà Nẵng","https://image-us.eva.vn/upload/2-2022/images/2022-06-11/picture-50-1654935167-10-width632height720.png"));
        customerList.add(new Customer("Hà Bảo Ân", "18-09-1993","Đắk Lắk","https://image-us.eva.vn/upload/2-2022/images/2022-06-11/picture-50-1654935167-10-width632height720.png"));
        customerList.add(new Customer("Hà Bảo Ân", "18-09-1993","Đắk Lắk","https://image-us.eva.vn/upload/2-2022/images/2022-06-11/picture-50-1654935167-10-width632height720.png"));
        customerList.add(new Customer("Hà Bảo Ân", "18-09-1993","Đắk Lắk","https://image-us.eva.vn/upload/2-2022/images/2022-06-11/picture-50-1654935167-10-width632height720.png"));
        customerList.add(new Customer("Hà Bảo Ân", "18-09-1993","Đắk Lắk","https://image-us.eva.vn/upload/2-2022/images/2022-06-11/picture-50-1654935167-10-width632height720.png"));

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("customerList.jsp");
        request.setAttribute("customerList", customerList);
        requestDispatcher.forward(request,response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
