package com.michaelsalvatierra.models.idao;

import com.michaelsalvatierra.models.domain.Bebida;
import java.util.List;

/**
 *
 * @author octav
 */
public interface IBebidaDAO {
    //Listar todos los registros

    public List<Bebida> getAll();

    //Insertar un registtro 
    public boolean add(Bebida bebida);

    //Actualizar un registro
    public boolean update(Bebida bebida);

    //Eliminar un registro
    public boolean delete(Bebida bebida);
}
