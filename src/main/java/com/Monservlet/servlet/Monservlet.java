package com.Monservlet.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import com.classes.Utilisateur;

/**
 * Servlet implementation class Monservlet
 */
public class Monservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Monservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/WEB-INF/Inscrire.jsp").forward(request, response);
		HttpSession session = request.getSession();
		String prenom= (String) session.getAttribute("prenom");

	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	    String nom=request.getParameter("nom");
	    String prenom=request.getParameter("prenom");
	    String pseudo=request.getParameter("pseudo");
	    String email=request.getParameter("email");
	    String mdp=request.getParameter("mdp");
	   request.setAttribute("nom", nom);
	   
	   HttpSession session = request.getSession();
	   List<Utilisateur> liste=(List)session.getAttribute("liste");
	   if(liste==null) {
		   liste=new ArrayList<Utilisateur>();
	   }
	   
	   Utilisateur user=new Utilisateur(nom,prenom,pseudo,email,mdp);
	   liste.add(user);
	   
	   session.setAttribute("liste", liste);
	   
	   this.getServletContext().getRequestDispatcher("/WEB-INF/Accueil.jsp").forward(request, response);
	   /**
	    *  HttpSession session = request.getSession();
	
		session.setAttribute("nom", nom);
		session.setAttribute("prenom", prenom);
		session.setAttribute("pseudo", pseudo);
		session.setAttribute("email", email);
		    */
	
	   
	   


	}
	
	

}
