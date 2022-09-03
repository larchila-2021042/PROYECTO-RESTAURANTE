package com.michael.salvatierra.controllers;
import com.michaelsalvatierra.models.domain.Platillo;
import com.michaelsalvatierra.models.dao.PlatilloDaoImpl;
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
 * @time 10:41:09 PM
 */
@WebServlet("/ServletPlatillo")
public class ServletPlatillo extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException{
        
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
        String accion = request.getParameter("accion");
        
        if (accion != null){
            switch(accion){
                case "listar":
                    listarPlatillos(request, response);
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
    
    private void listarPlatillos(HttpServletRequest request, HttpServletResponse response) throws IOException{
        List<Platillo> listaPlatillo = new PlatilloDaoImpl().getAll();
        HttpSession sesion = request.getSession();
        sesion.setAttribute("data", listaPlatillo);
        response.sendRedirect("platillos/Platillos.jsp");
    }
}
