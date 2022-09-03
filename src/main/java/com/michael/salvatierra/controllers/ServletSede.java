package com.michael.salvatierra.controllers;

/**
 *
 * @author Luis Fernando Archila Valdez
 * @date 3/09/2022
 * @time 08:30:06
 *
 * Código Técnico: IN5BM
 */
import com.michaelsalvatierra.models.domain.Sede;
import com.michaelsalvatierra.models.dao.SedeDaoImpl;
import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

@WebServlet("/ServletSede")
public class ServletSede extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String accion = request.getParameter("accion");

        if (accion != null) {
            switch (accion) {
                case "listar":
                    listarSedes(request, response);
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
    
    private void listarSedes(HttpServletRequest request, HttpServletResponse response) throws IOException{
        List<Sede> listaSedes = new SedeDaoImpl().getAll();
        HttpSession sesion = request.getSession();
        sesion.setAttribute("data", listaSedes);
        response.sendRedirect("sedes/Sedes.jsp");
    }

}
