package rw.ac.rca.webapp.dao.impl;

import org.apache.log4j.Logger;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;
import rw.ac.rca.webapp.dao.StudentDAO;
import rw.ac.rca.webapp.orm.Student;

import java.util.List;

public class StudentDAOImpl extends DAO implements StudentDAO {
    public static final Logger LOG = Logger.getLogger(UserDAOImpl.class);
    public static StudentDAOImpl instance;

    public static StudentDAOImpl getInstance(){
        if (instance == null) {
            return new StudentDAOImpl();

        } else {
            return instance;
        }
    }
    private StudentDAOImpl(){

    }

    @Override
    public Student saveStudent(Student student) {
        try{
            begin();
            getSession().save(student);
            commit();
            return student;
        }
        catch (Exception e){
            rollback();
            return null;
        }
    }

    @Override
    public Student updateStudent(Student student) {
        try{
            begin();
            getSession().update(student);
            commit();
            return student;
        }
        catch(Exception e){
          rollback();
          return null;
        }
    }

    @Override
    public Student saveOrUpdateStudent(Student student) {
        try {
            begin();
            getSession().saveOrUpdate(student);
            commit();
            return student;
        } catch (Exception e) {
            rollback();
            return null;
        }
    }

    @Override
    public boolean deleteStudent(Student student) {
        try {
            begin();
            getSession().delete(student);
            commit();
            return true;
        } catch (Exception e) {
            rollback();
            return false;
        }
    }

    @Override
    public Student getStudentById(int studentId) {
        try {
            begin();
            Query query = getSession().createQuery("from student where id= :ref");
            query.setInteger("ref", studentId);
            Student student = (Student) query.uniqueResult();
            commit();
            return student;
        } catch (Exception e) {
            rollback();
            return null;
        }
    }


        @Override
    public List<Student> getStudentsByFullName() {
        return null;
    }

    @Override
    public List<Student> getStudentsByFullName(String fullName) {
        try {
            begin();
            Query query = getSession().createQuery("from student where fullName= :ref");
            query.setString("ref", fullName);
            List<Student> students = query.list();
            commit();
            return students;
        } catch (Exception e) {
            rollback();
            return null;
        }
    }



    @Override
    public Student getStudentByDetails(String email,String fullName,  String password) {
        String fname="";
        Student student=null;
        try{
            begin();
            Criteria criteria= getSession().createCriteria(Student.class);
            Criterion lhs = Restrictions.eq("fullName", fullName);
            Criterion rhs= Restrictions.eq("email", email);
            criteria.add(Restrictions.or(lhs, rhs));
            criteria.add(Restrictions.eq("password",password));
            student =(Student) criteria.uniqueResult();
            commit();
            if(student !=null){
                fname=student.getFullName();
                LOG.info("The user full name is -->" +fullName);

            }
            else{
                LOG.info("the student [ "+fullName + " ] with email [ "+ email+" ] failed to login");
            }
        }
        catch (Exception e){
            e.printStackTrace();
            LOG.error("Type of exception occured in getUserByDetails() is --> " + e);
            rollback();
        }
        return student;
    }
    @SuppressWarnings("unchecked")
    public List<Student> getAllStudents() {
        try {
            begin();
            Query query = getSession().createQuery("FROM student");
            List<Student> students = query.list();
            commit();
            return students;
        } catch (Exception e) {
            System.out.println("error querrying database: " + e.getMessage());
            rollback();
            return null;
        }
    }
}
