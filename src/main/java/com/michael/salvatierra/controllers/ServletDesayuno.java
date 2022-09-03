/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package com.michael.salvatierra.controllers;

import com.michaelsalvatierra.models.dao.DesayunosDaoImpl;
import com.michaelsalvatierra.models.domain.Desayunos;
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
 * @date 3 sept. 2022
 * @time 0:25:57
 * 
 * Codigo Tecnico: IN5BM
 */
@WebServlet("/ServletDesayuno")
public class ServletDesayuno extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException{
        
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
        String accion = request.getParameter("accion");
        
        if (accion != null){
            switch(accion){
                case "listar":
                    listarDesayunos(request, response);
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
    
    private void listarDesayunos(HttpServletRequest request, HttpServletResponse response) throws IOException{
        List<Desayunos> listaDesayunos = new DesayunosDaoImpl().getAll();
        HttpSession sesion = request.getSession();
        sesion.setAttribute("data", listaDesayunos);
        response.sendRedirect("desayunos/Desayunos.jsp");
    }
}
