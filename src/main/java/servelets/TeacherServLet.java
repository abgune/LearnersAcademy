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
import model.Subject;
import model.Teacher;
import services.SubjectService;
import services.TeacherService;

/**
 * Servlet implementation class TeacherServlet
 */
//@WebServlet("/teacher")
public class TeacherServLet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public TeacherServLet() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path = request.getPathInfo(); // path will be "/create"
		RequestDispatcher dispatcher;
		if ("/create".equals(path)) {
			dispatcher = request.getRequestDispatcher("/teacher/create.jsp");
		} else {
			TeacherService service = new TeacherService();
			ArrayList<Teacher> teachers = service.getAllTeachers();
			request.setAttribute("teacherList", teachers);
			SubjectService subjectService = new SubjectService();
			ArrayList<Subject> subjects = subjectService.getAllSubjects();
			request.setAttribute("subjectList", subjects);
			dispatcher = request.getRequestDispatcher("/teacher/index.jsp");
		}
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String dob = request.getParameter("dob");
		String name = request.getParameter("name");
		String surname = request.getParameter("surname");
		String trainingArea = request.getParameter("training_area");

		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");

		try {
			Date dateDob = formatter.parse(dob);
			Teacher teacher = new Teacher(name, surname, dateDob, trainingArea);
			TeacherService service = new TeacherService();
			System.out.println(service.storeTeacher(teacher));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		response.sendRedirect(request.getContextPath() + "/teachers");
	}


}