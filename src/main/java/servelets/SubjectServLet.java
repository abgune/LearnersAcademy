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

/**
 * Servlet implementation class SubjectServLet
 */
//@WebServlet("/subject")
public class SubjectServLet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private SubjectService service;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SubjectServLet() {

		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher;
		String path = request.getPathInfo(); // path will be "/create"
		if ("/create".equals(path)) {
			dispatcher = request.getRequestDispatcher("/subject/create.jsp");
		} else {
			service = new SubjectService();
			ArrayList<Subject> subjects =  this.service.getAllSubjects();

			request.setAttribute("subjectList", subjects);
			
			ClassSubService classService = new ClassSubService();
			ArrayList<ClassesSub> classSub =  classService.getAllClasses();
			request.setAttribute("classList", classSub);			
			dispatcher = request.getRequestDispatcher("/subject/index.jsp");
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
		Subject subject = new Subject();
		subject.setName(name);
		service = new SubjectService();
		service.storeSubject(subject);
		response.sendRedirect(request.getContextPath() + "/subjects");

	}

}