/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.michaelsalvatierra.models.idao;

import com.michaelsalvatierra.models.domain.Pedidos;
import java.util.List;

/**
 *
 * @author PC
 */
public interface IPedidosDAO {
    
    //Listar todos los registros
    public List<Pedidos> getAll();

    //Insertar un registtro 
    public boolean add(Pedidos pedidos);

    //Actualizar un registro
    public boolean update(Pedidos pedidos);

    //Eliminar un registro
    public boolean delete(Pedidos pedidos);
}
