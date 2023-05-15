package rw.ac.rca.webapp.web;

import rw.ac.rca.webapp.dao.StudentDAO;
import rw.ac.rca.webapp.dao.impl.StudentDAOImpl;
import rw.ac.rca.webapp.orm.Student;
import rw.ac.rca.webapp.util.UserRole;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

public class ListStudent extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private StudentDAO studentDAO= StudentDAOImpl.getInstance();

    public ListStudent(){
        super();
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pageRedirect= request.getParameter("page");
        HttpSession httpSession = request.getSession();
        Object user = httpSession.getAttribute("authenticatedUser");
        System.out.println("The user in session is: " + user);
        if (pageRedirect!=null){
            System.out.println(" page redirect not null");
            if(pageRedirect.equals("students")&&request.getParameter("action").equals("list")){
                List<Student> students= studentDAO.getAllStudents();
                System.out.println("student results : ");
                System.out.println(students);
            if(students.size() == 0){
                System.out.println("the students are empty!");
                httpSession.setAttribute("students", students);
                UserRole[] userRoles= UserRole.values();
                String testMessage = "No student is available";
                httpSession.setAttribute("nostudenterror", testMessage);
                httpSession.setAttribute("userRoles", userRoles);
                request.getRequestDispatcher("WEB-INF/student.jsp").forward(request,response);
            }else{
                httpSession.setAttribute("students", students);
                UserRole[] userRoles= UserRole.values();
                httpSession.setAttribute("userRoles", userRoles);
                request.getRequestDispatcher("WEB-INF/student.jsp").forward(request,response);
            }
            httpSession.setAttribute("students", students);
            UserRole[] userRoles= UserRole.values();
            httpSession.setAttribute("userRoles", userRoles);
            request.getRequestDispatcher("WEB-INF/student.jsp").forward(request,response);
            }
        }
        else{

            System.out.println("empty user in session");
            httpSession.setAttribute("error","Invalid User. Try Again");
            RequestDispatcher dispatcher=request.getRequestDispatcher("WEB-INF/login.jsp");
            dispatcher.forward(request,response);

        }

    }


    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
