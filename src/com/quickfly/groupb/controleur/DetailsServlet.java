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


@WebServlet("/DetailsServlet")
public class DetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private VolRepository volrepository;
    
    public void init(){
		DaoFactory daofactory = DaoFactory.getInstance();
		this.volrepository = daofactory.getVolRepository();
	}
       
    public DetailsServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/WEB-INF/recherchevol.jsp").forward(request, response);
		String provenance = request.getParameter("provenance");
        String  destination = request.getParameter("destination");
        String  datedep = request.getParameter("datedep");
        String poid = request.getParameter("poids");
        ArrayList<Vol> vols = new ArrayList<Vol>();
        if(poid.isEmpty())
        {
        	vols=volrepository.rechercherVol(provenance, destination, datedep, -1);
        	request.setAttribute("vols", vols);
        }
        else
        {
        	 double poids = 0;
			 poids+= Double.valueOf(poid);
			 request.setAttribute("vols",volrepository.rechercherVol(provenance, destination, datedep, poids));
	}
    
}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/WEB-INF/details.jsp").forward(request, response);
	}

}
