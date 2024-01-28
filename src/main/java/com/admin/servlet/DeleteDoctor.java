package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DoctorDao;
import com.db.DBConnect;
@WebServlet("/deleteDoctor")
public class DeleteDoctor extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        DoctorDao dao = new DoctorDao(DBConnect.getConn());
        HttpSession session = req.getSession();
        
        try {
            int id = Integer.parseInt(req.getParameter("id"));

            if (dao.deleteDoctor(id)) {
                session.setAttribute("SucMsg", "Doctor Deleted Successfully.");
            } else {
                session.setAttribute("errormsg", "Failed to delete the doctor. Please try again.");
            }
        } catch (NumberFormatException e) {
            session.setAttribute("errormsg", "Invalid doctor ID format.");
        } catch (Exception e) {
            session.setAttribute("errormsg", "An error occurred while processing the request.");
            e.printStackTrace(); // Log the exception for debugging purposes
        }

        resp.sendRedirect("admin/view_doctor.jsp");
    }
}
