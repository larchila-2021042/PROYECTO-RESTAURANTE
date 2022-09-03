package com.michael.salvatierra.controllers;

/**
 *
 * @author Octavio Alejandro Corzo Reyes
 * @date 2/09/2022
 * @time 20:18:15
 *
 * Código Técnico: IN5BM
 *
 */
import com.michaelsalvatierra.models.domain.OrderStatus;
import com.michaelsalvatierra.models.dao.OrderStatusDaoImpl;
import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

@WebServlet("/ServletOrderStatus")
public class ServletOrderStatus extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String accion = request.getParameter("accion");

        if (accion != null) {
            switch (accion) {
                case "listar":
                    listarOrderStatus(request, response);
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
    
    private void listarOrderStatus(HttpServletRequest request, HttpServletResponse response) throws IOException{
        List<OrderStatus> listarCenas = new OrderStatusDaoImpl().getAll();
        HttpSession sesion = request.getSession();
        sesion.setAttribute("data", listarCenas);
        response.sendRedirect("orderStatus/OrderStatus.jsp");
    }
}
