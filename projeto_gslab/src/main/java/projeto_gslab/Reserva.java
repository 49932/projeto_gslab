package projeto_gslab;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Reserva")
public class Reserva extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
        String sala = request.getParameter("sala");
        String selectedSlots = request.getParameter("selectedSlots");

        //System.out.println("Sala: " + sala);
        //System.out.println("Selected Slots: " + selectedSlots);

        // Split the selectedSlots string into an array of slots
        String[] slots = selectedSlots.split(";");

        // Process each slot
        for (String slot : slots) {
            // Split the slot string into day and position
            String[] parts = slot.split(",");
            String day = parts[0];
            String position = parts[1];

            System.out.println("Day: " + day + " Slot: " + position);

        }

        request.setAttribute("sala", sala);
        request.setAttribute("selectedSlots", selectedSlots);

  

        
        response.setContentType("text/html; charset=UTF-8");
        getServletContext().getRequestDispatcher("/Reserva.jsp").forward(request, response);
    	
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}