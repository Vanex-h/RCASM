package rw.ac.rca.webapp.web;

import rw.ac.rca.webapp.dao.StudentDAO;
import rw.ac.rca.webapp.dao.impl.StudentDAOImpl;
import rw.ac.rca.webapp.orm.Student;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.constraints.Null;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public class CreateStudent extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private StudentDAO studentDAO = StudentDAOImpl.getInstance();

    public CreateStudent() {
        super();

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
        String pageRedirect = request.getParameter("page");
        HttpSession httpSession = request.getSession();
        Object user = httpSession.getAttribute("authenticatedUser");
        if (pageRedirect != null) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
            if (pageRedirect.equals("createstudent")) {
                Student student = null;
                try {
                    student = new Student(
                            request.getParameter("firstName"),
                            request.getParameter("lastName"),
                            simpleDateFormat.parse(request.getParameter("dateOfBirth")),
                            request.getParameter("phoneNumber"),
                            request.getParameter("email"),
                            false,
                            false,
                            false


                    );
                } catch (Exception e) {
                    throw new RuntimeException(e);
                }
                ;
                try {
                    studentDAO.saveStudent(student);
                    System.out.println("===============================helllo================");
                    request.setAttribute("success", "Successfully created the Student");
                    request.getRequestDispatcher("WEB-INF/createstudent.jsp").forward(request, resp);

                } catch (Exception e) {
                    request.setAttribute("error", "Failed to create the Student");
                    request.getRequestDispatcher("WEB-INF/createstudent.jsp").forward(request, resp);

                }
            } else {
                request.getRequestDispatcher("WEB-INF/login.jsp").forward(request, resp);
            }

        } else {
            request.getRequestDispatcher("WEB-INF/login.jsp").forward(request, resp);

        }
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String pageRedirect = req.getParameter("page");
        HttpSession httpSession = req.getSession();
        Object user = httpSession.getAttribute("authenticatedUser");
        System.out.println("The user in session is: " + user);
        if (pageRedirect != null) {

            if (pageRedirect.equals("createstudent")) {
                req.getRequestDispatcher("WEB-INF/createstudent.jsp").forward(req, resp);

            }
        } else {
            req.setAttribute("error ", "No user found");
            req.getRequestDispatcher("WEB-INF/login.jsp").forward(req, resp);
        }
    }
}













//                if(pageRedirect.equals("createstudent")){
//                    if(req.getParameter("saveDataStudent")!=null){
//                        Student student= new Student();
//                        String passwordauth = req.getParameter("password");
//                        String studentfullname = req.getParameter("studentfullname");
//                        String email = req.getParameter("email");
//                        try{
//                            String hashedP= Util.generateHashed512(passwordauth);
//                            student.setFullName(studentfullname);
//                            student.setEmail(email);
//                            studentDAO.saveOrUpdateStudent(student);
//                        }
//                        catch (Exception e){
//                            httpSession.setAttribute("message","Can't create");
//                        }

//                    }
//                }
