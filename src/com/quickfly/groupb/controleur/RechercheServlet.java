package com.quickfly.groupb.controleur;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.quickfly.groupb.dao.DaoFactory;
import com.quickfly.groupb.metier.Vol;
import com.quickfly.groupb.reporitory.VolRepository;


@WebServlet("/RechercheServlet")
public class RechercheServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private VolRepository volrepository;
    
    public void init(){
		DaoFactory daofactory = DaoFactory.getInstance();
		this.volrepository = daofactory.getVolRepository();
	}
       
     
    public RechercheServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/WEB-INF/recherchevol.jsp").forward(request, response);
		ArrayList<Vol> vols = new ArrayList<Vol>();
		vols=volrepository.listerVol();
    	request.setAttribute("vols", vols);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String provenance = request.getParameter("provenance");
        String  destination = request.getParameter("destination");
        String  datedep = request.getParameter("datedep");
        String poid = request.getParameter("poids");
        ArrayList<Vol> vols = new ArrayList<Vol>();
  
        if(poid.isEmpty())
        {
        	vols=volrepository.rechercherVol(provenance, destination, datedep, -1);
        	request.setAttribute("vols", vols);
        	this.getServletContext().getRequestDispatcher("/WEB-INF/recherchevol.jsp").forward(request, response);
        	
        }
        else
        {
        	 try
        	 {
        		 double poids = 0;
        		 poids+= Double.valueOf(poid);
		         request.setAttribute("vols",volrepository.rechercherVol(provenance, destination, datedep, poids));
		         this.getServletContext().getRequestDispatcher("/WEB-INF/recherchevol.jsp").forward(request, response);
        	 }catch (IOException e) {
                 e.printStackTrace();

        }
        
	}
	}
}