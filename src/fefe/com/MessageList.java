package fefe.com;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * Created by fefe on 2016/04/21.
 */

@WebServlet("/message")
public class MessageList extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        session.getAttribute("messages");
        List<String> messages = (List<String>) session.getAttribute("messages");
        req.setAttribute("messages", messages);

        getServletContext().getRequestDispatcher("/message.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String message = req.getParameter("message");
        List<String> messages = (List<String>) req.getSession().getAttribute("messages");
        if (null != messages) {
            messages.add(message);
        } else {
            messages = new ArrayList<>();
            messages.add(message);
        }
        req.getSession().setAttribute("messages", messages);
        req.setAttribute("messages", messages);

        getServletContext().getRequestDispatcher("/message.jsp").forward(req, resp);
    }
}
