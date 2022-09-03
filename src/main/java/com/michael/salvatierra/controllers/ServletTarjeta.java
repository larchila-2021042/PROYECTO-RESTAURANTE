package com.michael.salvatierra.controllers;

import com.michaelsalvatierra.models.dao.PersonaDaoImpl;
import com.michaelsalvatierra.models.dao.TarjetaDaoImpl;
import com.michaelsalvatierra.models.domain.Persona;
import com.michaelsalvatierra.models.domain.Tarjeta;
import java.io.IOException;
import java.util.List;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Jose Mauricio Villeda Morales
 * @date 2 sept. 2022
 * @time 23:55:21
 * 
 * Codigo Tecnico: IN5BM
 */

@WebServlet("/ServletTarjeta")
public class ServletTarjeta extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException{
        
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
        String accion = request.getParameter("accion");
        
        if (accion != null){
            switch(accion){
                case "listar":
                    listarTarjetas(request, response);
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
    
    private void listarTarjetas(HttpServletRequest request, HttpServletResponse response) throws IOException{
        List<Tarjeta> listaTarjeta = new TarjetaDaoImpl().getAll();
        HttpSession sesion = request.getSession();
        sesion.setAttribute("data", listaTarjeta);
        response.sendRedirect("tarjetas/Tarjetas.jsp");
    }
}
