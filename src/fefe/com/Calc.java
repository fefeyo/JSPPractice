package fefe.com;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by fefe on 2016/04/21.
 */

@WebServlet("/calc")
public class Calc extends HttpServlet{
    public static final String CLASS_NAME = Calc.class.getName();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.print("計算機呼び出し");
        getServletContext().getRequestDispatcher("/calc.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String s = req.getParameter("ope");
        Double a = Double.parseDouble(req.getParameter("a"));
        Double b = Double.parseDouble(req.getParameter("b"));
        Double[] answer = new Double[]{a, b, 0.0};
        switch (s) {
            case "plus":
                answer[2] = a + b;
                req.setAttribute("ope", "+");
                break;
            case "minus":
                answer[2] = a - b;
                req.setAttribute("ope", "-");
                break;
            case "multiple":
                answer[2] = a * b;
                req.setAttribute("ope", "×");
                break;
            case "divide":
                answer[2] = a / b;
                req.setAttribute("ope", "÷");
                break;
        }
        req.setAttribute("answer", answer);
        for(double d : answer) {
            System.out.print(d);
        }

        getServletContext().getRequestDispatcher("/calc.jsp").forward(req, resp);
    }
}
