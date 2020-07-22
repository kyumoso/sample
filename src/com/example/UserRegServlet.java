package com.example;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class UserRegServlet
 */
@WebServlet("/UserRegServlet")
public class UserRegServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserRegServlet() {
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

    if (!isLogin) {
        int result = dao.regUser(id, password);
        request.setAttribute("username", id);
        request.getRequestDispatcher("/user_reg_success.jsp").forward(request, response);
    } else {
        request.setAttribute("error", "同じIDとパスワードのユーザが既に登録されています。\n再入力してください。");
        request.getRequestDispatcher("/user_regist.jsp").forward(request, response);
    }

    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    	throws ServletException, IOException {
		doGet(request, response);
    }
}