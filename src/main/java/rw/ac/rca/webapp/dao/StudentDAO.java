package rw.ac.rca.webapp.dao;

import rw.ac.rca.webapp.orm.Student;

import java.util.List;


public interface StudentDAO {
    public Student saveStudent(Student student);

    public Student updateStudent(Student student);

    public Student saveOrUpdateStudent(Student student);

    public boolean deleteStudent(Student student);

    public Student getStudentById(int studentId);



    public List<Student> getStudentsByFullName();

    List<Student> getStudentsByFullName(String fullName);

    public Student getStudentByDetails(String email, String fullName,String password);
    public List<Student> getAllStudents();
}
