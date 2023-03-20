package servelets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ClassesSub;
import model.Subject;
import services.ClassSubService;
import services.SubjectService;
import services.TeacherService;

/**
 * Servlet implementation class AssignServLet
 */
//@WebServlet("/assign")
public class AssignServLet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AssignServLet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Get the path information
		String pathInfo = request.getPathInfo();

		// Extract the parameter value from the path information
		String[] pathParts = pathInfo.split("/");
		int id = Integer.parseInt(pathParts[1]);
		SubjectService service = new SubjectService();
		ArrayList<Subject> subjects = service.getAllSubjects();
		request.setAttribute("subjectList", subjects);
		request.setAttribute("teacherId", id);

		ClassSubService clService = new ClassSubService();
		ArrayList<ClassesSub> cls = clService.getAllClasses();
		request.setAttribute("classList", cls);

		RequestDispatcher dispatcher = request.getRequestDispatcher("/teacher/assign.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String teacherId = request.getParameter("teacher_id");
		String classId = request.getParameter("class_id");
		String subjectId = request.getParameter("subject_id");
		TeacherService service = new TeacherService();
		service.assign(Integer.parseInt(teacherId), Integer.parseInt(subjectId), Integer.parseInt(classId));
		response.sendRedirect(request.getContextPath() + "/subjects");

	}

}