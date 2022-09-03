/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.michaelsalvatierra.models.idao;

/**
 *
 * @author Luis Fernando Archila Valdez
 */
import com.michaelsalvatierra.models.domain.Sede;
import java.util.List;
public interface ISedeDAO {
    //Listar todos los registros

    public List<Sede> getAll();

    //Insertar un registtro 
    public boolean add(Sede sede);

    //Actualizar un registro
    public boolean update(Sede sede);

    //Eliminar un registro
    public boolean delete(Sede sede);
}
