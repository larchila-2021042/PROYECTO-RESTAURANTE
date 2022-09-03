package com.michael.salvatierra.controllers;
import com.michaelsalvatierra.models.domain.Rol;
import com.michaelsalvatierra.models.dao.RolDaoImpl;
import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
/**
 *
 * @author W10
 * @date Sep 2, 2022
 * @time 8:53:19 PM
 */
@WebServlet("/ServletRol")
public class ServletRol extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException{
        
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
        String accion = request.getParameter("accion");
        
        if (accion != null){
            switch(accion){
                case "listar":
                    listarRoles(request, response);
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
    
    private void listarRoles(HttpServletRequest request, HttpServletResponse response) throws IOException{
        List<Rol> listaRol = new RolDaoImpl().getAll();
        HttpSession sesion = request.getSession();
        sesion.setAttribute("data", listaRol);
        response.sendRedirect("roles/Roles.jsp");
    }
}
