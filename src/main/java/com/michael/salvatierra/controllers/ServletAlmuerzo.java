package com.michael.salvatierra.controllers;

/**
 *
 * @author Luis Fernando Archila Valdez
 * @date 3/09/2022
 * @time 08:15:53
 *
 * Código Técnico: IN5BM
 */
import com.michaelsalvatierra.models.domain.Almuerzo;
import com.michaelsalvatierra.models.dao.AlmuerzoDaoImpl;
import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;


@WebServlet("/ServletAlmuerzo")
public class ServletAlmuerzo extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String accion = request.getParameter("accion");

        if (accion != null) {
            switch (accion) {
                case "listar":
                    listarAlmuerzos(request, response);
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
    
    private void listarAlmuerzos(HttpServletRequest request, HttpServletResponse response) throws IOException{
        List<Almuerzo> listarAlmuerzos = new AlmuerzoDaoImpl().getAll();
        HttpSession sesion = request.getSession();
        sesion.setAttribute("data", listarAlmuerzos);
        response.sendRedirect("almuerzos/Almuerzos.jsp");
    }
    
}
