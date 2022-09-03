package com.michaelsalvatierra.system;
import com.michaelsalvatierra.models.dao.PersonaDaoImpl;
import com.michaelsalvatierra.models.dao.PlatilloDaoImpl;
import com.michaelsalvatierra.models.dao.UsuarioDaoImpl;

/**
 *
 * @author informatica
 */
public class Principal {
    public static void main(String[] args) {
        PersonaDaoImpl personaeDaoImpl= new PersonaDaoImpl();
            personaeDaoImpl.getAll();
            
        UsuarioDaoImpl usuarioDaoImpl = new UsuarioDaoImpl();
            usuarioDaoImpl.getAll();
            
            PlatilloDaoImpl platilloDaoImpl = new PlatilloDaoImpl();
            platilloDaoImpl.getAll();
    }
}
