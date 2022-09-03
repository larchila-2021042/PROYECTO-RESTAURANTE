package com.michaelsalvatierra.models.domain;

/**
 *
 * @author Luis Fernando Archila Valdez
 * @date 3/09/2022
 * @time 11:12:33
 *
 * Código Técnico: IN5BM
 */
public class Sede {

    private int id;
    private String nombreAgencia;
    private String nit;
    private String direccion;
    private String rutaImagen;

    public Sede() {
    }

    public Sede(int id, String nombreAgencia, String nit, String direccion) {
        this.id = id;
        this.nombreAgencia = nombreAgencia;
        this.nit = nit;
        this.direccion = direccion;
    }

    public Sede(int id, String nombreAgencia, String nit, String direccion, String rutaImagen) {
        this.id = id;
        this.nombreAgencia = nombreAgencia;
        this.nit = nit;
        this.direccion = direccion;
        this.rutaImagen = rutaImagen;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombreAgencia() {
        return nombreAgencia;
    }

    public void setNombreAgencia(String nombreAgencia) {
        this.nombreAgencia = nombreAgencia;
    }

    public String getNit() {
        return nit;
    }

    public void setNit(String nit) {
        this.nit = nit;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getRutaImagen() {
        return rutaImagen;
    }

    public void setRutaImagen(String rutaImagen) {
        this.rutaImagen = rutaImagen;
    }

    @Override
    public String toString() {
        return "Sede{" + "id=" + id + ", nombreAgencia=" + nombreAgencia + ", nit=" + nit + ", direccion=" + direccion + ", rutaImagen=" + rutaImagen + '}';
    }
    
    
}
