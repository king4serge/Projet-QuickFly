package com.quickfly.groupb.controleur;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.quickfly.groupb.dao.DaoFactory;
import com.quickfly.groupb.reporitory.ClientRepository;


@WebServlet("/InscriptionServlet")
public class InscriptionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ClientRepository clientrepository;
       
	public void init(){
		DaoFactory daofactory = DaoFactory.getInstance();
		this.clientrepository = daofactory.getClientRepository();
	}
	
    public InscriptionServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 this.getServletContext().getRequestDispatcher("/WEB-INF/inscription.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
        String ville = request.getParameter("ville");
        String pays = request.getParameter("pays");
        String tel = request.getParameter("tel");
        String login = request.getParameter("login");
        String password = request.getParameter("passwd");
        String password1 = request.getParameter("passwd1");
       
        if(password.equals(password1))
        {
        	if(clientrepository.sinscrire(nom, prenom, ville, pays,tel, login, password))
        	{
	        	HttpSession session = request.getSession(true);
	        	session.setAttribute("login", login);
	        	session.setAttribute("password", password);
	        	//response.sendRedirect("inscription");
	        	this.getServletContext().getRequestDispatcher("/WEB-INF/authentification.jsp").forward(request, response);
        	}
        }
        /*(clientrepository.sinscrire(nom, prenom, ville, pays,tel, login, password))
        {
        	HttpSession session = request.getSession(true);
        	session.setAttribute("login", login);
        	session.setAttribute("password", password);
        	//response.sendRedirect("inscription");
        	this.getServletContext().getRequestDispatcher("/WEB-INF/authentification.jsp").forward(request, response);
        }*/
        else {
        	String message = "Mot de passe incorrecte";
        	request.setAttribute("message", message);
        	this.getServletContext().getRequestDispatcher("/WEB-INF/inscription.jsp").forward(request, response);	
        }
	}

}
