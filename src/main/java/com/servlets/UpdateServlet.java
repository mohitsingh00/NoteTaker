package com.servlets;

import java.io.IOException;
import java.util.Date;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		try
		{
			String title = req.getParameter("title");
			String content = req.getParameter("content");
			int noteId = Integer.parseInt(req.getParameter("noteId"));
			Session s = FactoryProvider.getFactory().openSession();
			Transaction tx = s.beginTransaction();
			Note note = s.get(Note.class, noteId);
			note.setTitle(title);
			note.setContent(content);;
			note.setAddedDate(new Date());
			tx.commit();
			s.close();
			resp.sendRedirect("all_notes.jsp");
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}
}
