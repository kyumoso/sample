package com.example;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/UserLoginServlet")
public class UserLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserLoginServlet() {
        super();
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    request.setCharacterEncoding("UTF-8");

    String id = request.getParameter("id");
    String password = request.getParameter("password");

    UserDao dao = new UserDao();
    UserDto user = dao.findUser(id);

    boolean isLogin = (user != null && id.equals(user.getUserid()) &&
        password.equals(user.getPassword()));
    HttpSession session = request.getSession();
    session.setAttribute("isLogin", isLogin);

    if (isLogin) {
        request.setAttribute("username", user.getUserid());
        request.getRequestDispatcher("/user_login_success.jsp").forward(request, response);
    } else {
        request.setAttribute("error", "IDかパスワードが間違っています。\n再入力してください。");
        request.getRequestDispatcher("/user_login.jsp").forward(request, response);
    }
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
    }
}