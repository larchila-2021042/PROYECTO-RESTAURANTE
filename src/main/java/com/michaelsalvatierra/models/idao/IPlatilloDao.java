/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package com.michaelsalvatierra.models.idao;

import com.michaelsalvatierra.models.domain.Platillo;
import java.util.List;

/**
 *
 * @author W10
 * @date Sep 2, 2022
 * @time 10:18:20 PM
 */
public interface IPlatilloDao {
    
    
    public List <Platillo> getAll();
    
    //Insertar un registtro 
    public boolean add(Platillo platillos); 
    
    //Actualizar un registro
    public boolean update(Platillo platillos);
    
    //Eliminar un registro
    public boolean delete(Platillo platillos);
    
}
