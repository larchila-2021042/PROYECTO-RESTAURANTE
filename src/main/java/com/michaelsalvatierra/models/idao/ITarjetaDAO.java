/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.michaelsalvatierra.models.idao;

import com.michaelsalvatierra.models.domain.Tarjeta;
import java.util.List;

/**
 *
 * @author PC
 */
public interface ITarjetaDAO {

    //Listar todos los registros
    public List<Tarjeta> getAll();

    //Insertar un registtro 
    public boolean add(Tarjeta tarjeta);

    //Actualizar un registro
    public boolean update(Tarjeta tarjeta);

    //Eliminar un registro
    public boolean delete(Tarjeta tarjeta);
}
