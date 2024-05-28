package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class SaveNoteServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		try
		{
			// Fetching Title and Content 
			String title = req.getParameter("title");
			String content = req.getParameter("content");
			
			Note note = new Note(title, content, new Date());
			
			// Saving Data In Database
			Session session = FactoryProvider.getFactory().openSession();
			Transaction tx = session.beginTransaction();
			session.save(note);
			tx.commit();
			session.close();
			
			resp.setContentType("text/html");
			PrintWriter pw = resp.getWriter();
			pw.print("<h1>Note Added Successfully</h1>");
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
