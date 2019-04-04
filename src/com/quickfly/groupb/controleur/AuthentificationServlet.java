package com.quickfly.groupb.controleur;

import java.io.IOException;

import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.quickfly.groupb.dao.DaoFactory;
import com.quickfly.groupb.reporitory.ClientRepository;

//@WebServlet("/AuthentificationServlet")
public class AuthentificationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ClientRepository clientrepository;
       
    public AuthentificationServlet() {
        super();
    }
    
    public void init(){
		DaoFactory daofactory = DaoFactory.getInstance();
		this.clientrepository = daofactory.getClientRepository();
	}
       
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/WEB-INF/authentification.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String login = request.getParameter("login");
        //request.setAttribute("login", login);
        String  password = request.getParameter("passwd");
        String statut = clientrepository.seconnecter(login, password);
        String admin = "admin";
        String client = "client";
        //request.setAttribute("password", password);
        if(statut.equals(admin))
        {
        	HttpSession session = request.getSession(true);
        	session.setAttribute("login", login);
        	session.setAttribute("password", password);
        	//response.sendRedirect("inscription");
        	this.getServletContext().getRequestDispatcher("/WEB-INF/admin.jsp").forward(request, response);
        }
        else if(statut.equals(client))
        {
        	HttpSession session = request.getSession(true);
        	session.setAttribute("login", login);
        	session.setAttribute("password", password);
        	//response.sendRedirect("inscription");
        	this.getServletContext().getRequestDispatcher("/WEB-INF/inscription.jsp").forward(request, response);
        }
        else {
        	HttpSession session = request.getSession();
        	String message = "login ou mot de passe incorrecte";
        	session.setAttribute("login", message);
        	//response.sendRedirect("Authentification");
        	this.getServletContext().getRequestDispatcher("/WEB-INF/authentification.jsp").forward(request, response);	
        }
       //this.getServletContext().getRequestDispatcher("/WEB-INF/authentification.jsp").forward(request, response);
	}

}
