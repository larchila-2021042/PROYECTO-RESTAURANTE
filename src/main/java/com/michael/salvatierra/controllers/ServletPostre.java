
package com.michael.salvatierra.controllers;

/**
 *
 * @author Octavio Alejandro Corzo Reyes
 * @date 2/09/2022
 * @time 22:28:54
 *
 * Código Técnico: IN5BM
 * 
 */

import com.michaelsalvatierra.models.domain.Postre;
import com.michaelsalvatierra.models.dao.PostreDaoImpl;
import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

@WebServlet("/ServletPostre")
public class ServletPostre extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String accion = request.getParameter("accion");

        if (accion != null) {
            switch (accion) {
                case "listar":
                    listarPostres(request, response);
                    break;
                case "editar":
                    //Otras acciones
                    break;
                case "eliminar":
                    // ...
                    break;
                default:

                    break;
            }
        }
    }
    
    private void listarPostres(HttpServletRequest request, HttpServletResponse response) throws IOException{
        List<Postre> listaBebidas = new PostreDaoImpl().getAll();
        HttpSession sesion = request.getSession();
        sesion.setAttribute("data", listaBebidas);
        response.sendRedirect("postres/Postres.jsp");
    }

}
