package controller;

import model.User;
import service.IUserService;
import service.impl.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "UserServlet", value =  "/user")
public class UserServlet extends HttpServlet {

    IUserService userService = new UserService();
    static List<User> listUser = new ArrayList<>();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                showFormAdd(request, response);
                break;
            case "delete":
                deleteUser(request, response);
                break;
            case "edit":
                showEditForm(request, response);
                break;
            case "asc":
                sortByNameASC(request, response);
                break;
            case "desc":
                sortByNameDESC(request, response);
                break;
            case "search":
                searchByCountry(request, response);
                break;
            default:
                showListUser(request, response);
        }
    }

    private void searchByCountry(HttpServletRequest request, HttpServletResponse response) {
        String countrySearch = request.getParameter("countrySearch");
        listUser = userService.searchByCountry(countrySearch);
        request.setAttribute("user", listUser);
        try {
            request.getRequestDispatcher("view/user/list.jsp").forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void sortByNameDESC(HttpServletRequest request, HttpServletResponse response) {
        listUser = userService.sortByNameDESC();
        request.setAttribute("user", listUser);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/user/list.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void sortByNameASC(HttpServletRequest request, HttpServletResponse response) {
        listUser = userService.sortByNameASC();
        request.setAttribute("user", listUser);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/user/list.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        User existingUser = userService.selectUser(id);
        request.setAttribute("user", existingUser);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/user/edit.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void showListUser(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/user/list.jsp");
        request.setAttribute("user", userService.displayAll());
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("UTF-8");

        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                save(request, response);
                break;
            case "edit":
                editUser(request, response);
                break;
            default:
        }
    }

    private void deleteUser(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        userService.delete(id);

        List<User> listUser = userService.displayAll();
        request.setAttribute("user", listUser);

        try {
            response.sendRedirect("/user");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void editUser(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String country = request.getParameter("country");

        User book = new User(id, name, email, country);
        userService.edit(book);
        try {
            response.sendRedirect("/user");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void save(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String country = request.getParameter("country");
        User user = new User(name, email, country);
        boolean check = userService.add(user);
        String mess = "thêm mới thành công";
        if (!check) {
            mess = "thêm mới không thành cônn";
        }
        request.setAttribute("mess", mess);
        showFormAdd(request, response);
    }

    private void showFormAdd(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/user/create.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }
}