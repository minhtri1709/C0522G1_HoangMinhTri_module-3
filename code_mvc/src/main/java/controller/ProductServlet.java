package controller;

import model.Product;
import service.IProductService;
import service.impl.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductServlet", urlPatterns = {"/","/product"})
public class ProductServlet extends HttpServlet {
    IProductService productService = new ProductService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if(action == null){
            action = "";
        }
        switch (action){
            case "delete":
                showDeleteForm(request,response);
                break;
            default:
                display(request,response);
        }
    }

    private void showDeleteForm(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("delete.jsp");
        int id = Integer.parseInt(request.getParameter("id"));
        request.setAttribute("productDelete",productService.findById(id));
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void display(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("list.jsp");
//        List<Product> products = productService.displayAll();
        request.setAttribute("productList",productService.displayAll());
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if(action == null){
            action = "";
        }
        switch (action){
            case "delete":
                delete(request,response);
                break;
            default:
                productService.displayAll();
        }
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) {
        int id= Integer.parseInt(request.getParameter("id"));
        productService.delete(id);
        try {
            response.sendRedirect("/");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
