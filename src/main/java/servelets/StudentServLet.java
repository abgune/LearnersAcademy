package servelets;


import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ClassesSub;
import model.Student;
import services.ClassSubService;
import services.StudentService;

/**
 * Servlet implementation class StudentServLet
 */
//@WebServlet("/StudentServLet")
public class StudentServLet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private StudentService service;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public StudentServLet() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		RequestDispatcher dispatcher;
		String path = request.getPathInfo();
		if ("/create".equals(path)) {
			ClassSubService  css = new ClassSubService();
			ArrayList<ClassesSub> classList = css.getAllClasses();
			request.setAttribute("classList", classList);
			dispatcher = request.getRequestDispatcher("/student/create.jsp");
		} else {
			service = new StudentService();
			ArrayList<Student> students = service.getAllStudents();
			request.setAttribute("studentList", students);
			dispatcher = request.getRequestDispatcher("/student/index.jsp");
		}
		dispatcher.forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String name = request.getParameter("name");
		String surname = request.getParameter("surname");
		String dob = request.getParameter("dob");
		String identity = request.getParameter("identity");
		String address = request.getParameter("address");
		String classId = request.getParameter("class_id");

		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		Date dateDob;
		try {
			service = new StudentService();
			dateDob = formatter.parse(dob);
			Student student = new Student(name, surname, dateDob, identity, address);
			service.storeStudent(student, Integer.parseInt(classId));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		response.sendRedirect(request.getContextPath() + "/students");
	}

}