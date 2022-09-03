package com.michaelsalvatierra.models.dao;

/**
 *
 * @author Luis Fernando Archila Valdez
 * @date 3/09/2022
 * @time 09:09:42
 *
 * Código Técnico: IN5BM
 */
import com.michaelsalvatierra.db.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.michaelsalvatierra.db.Conexion;
import com.michaelsalvatierra.models.domain.Almuerzo;
import com.michaelsalvatierra.models.idao.IAlmuerzoDAO;
import java.sql.SQLException;

public class AlmuerzoDaoImpl implements IAlmuerzoDAO {

    private static final String SQL_SELECT = "SELECT combo.id, combo.nombre, po.id, po.nombre, pla.id, pla.nombre, b.id, b.nombre, combo.precio, combo.ruta_imagen,combo.tiempo FROM combo \n"
            + "JOIN postre AS po ON combo.postre_id = po.id \n"
            + "JOIN platillo AS pla ON combo.platillo_id= pla.id \n"
            + "JOIN bebida AS b ON combo.bebida_id=b.id AND tiempo=\"ALMUERZO\";";
    private Connection con = null;
    private PreparedStatement pstmt = null;
    private ResultSet rs = null;
    private Almuerzo almuerzo = null;
    private List<Almuerzo> listaAlmuerzo = new ArrayList<>();

    @Override
    public List<Almuerzo> getAll() {
        try {
            con = Conexion.getConnection();
            pstmt = con.prepareStatement(SQL_SELECT);
            rs = pstmt.executeQuery();

            while (rs.next()) {
                almuerzo = new Almuerzo(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getFloat(9),
                        rs.getString(10),
                        rs.getString(11)
                );
                    System.out.println(almuerzo.toString());
                listaAlmuerzo.add(almuerzo);
            }
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        } catch (Exception e) {
            e.printStackTrace(System.out);
        } finally {
            Conexion.close(rs);
            Conexion.close(pstmt);
            Conexion.close(con);
        }
        return listaAlmuerzo;
    }

    @Override
    public boolean add(Almuerzo almuerzo) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean update(Almuerzo almuerzo) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean delete(Almuerzo almuerzo) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}

