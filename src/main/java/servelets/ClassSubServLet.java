package servelets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.ClassesSub;
import model.Subject;
import services.ClassSubService;
import services.SubjectService;

/**
 * Servlet implementation class ClassSubServLet
 */
@WebServlet("/ClassSubServLet")
public class ClassSubServLet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ClassSubServLet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ClassSubService service = new ClassSubService();
		ArrayList<ClassesSub> cls = service.getAllClasses();
		request.setAttribute("classList", cls);
		SubjectService subjectService = new SubjectService();
		ArrayList<Subject> subjects = subjectService.getAllSubjects();
		request.setAttribute("subjectList", subjects);
		String path = request.getPathInfo(); // path will be "/create"
		RequestDispatcher dispatcher;
		if ("/create".equals(path)) {
			dispatcher = request.getRequestDispatcher("/class_sub/create.jsp");
		}else {
			 dispatcher = request.getRequestDispatcher("/class_sub/index.jsp");

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
		String  subjectId = request.getParameter("subject_id");
		ClassesSub cl = new ClassesSub();
		cl.setName(name);
		
		ClassSubService classSubService = new ClassSubService();
		classSubService.storeClasses(cl, 0);
		response.sendRedirect(request.getContextPath() + "/classes");

	}

}