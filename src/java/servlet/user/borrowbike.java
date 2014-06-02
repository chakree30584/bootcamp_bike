/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package servlet.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Bicycle;
import model.User;
import org.json.JSONObject;

/**
 *
 * @author chakree30584
 */
@WebServlet(name = "borrowbike", urlPatterns = {"/portal/borrowbike"})
public class borrowbike extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            HttpSession session = request.getSession();
            User user = User.getById(((User) session.getAttribute("user")).getId());
            JSONObject json = new JSONObject();
            if(Bicycle.isBorrow(user)){
                json.put("status", 0);
                json.put("msg", "ขณะนี้คุณได้ยืมจักรยานอยู่แล้ว ไม่สามารถยืมได้อีก");
            }else if(Bicycle.count()==0){
                json.put("status", 0);
                json.put("msg", "ขณะนี้ไม่มีจักรยานว่างอยู่ในระบบ ไม่สามารถยืมได้");
            }else{
                Bicycle.gendBike(user.getId());
                json.put("status", 1);
                json.put("msg", "ยืมจักรยานเรียบร้อย");
            }
            Thread.sleep(1000);
            out.print(json);
            out.flush();
        } catch (InterruptedException ex) {
            Logger.getLogger(borrowbike.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
