/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package com.michaelsalvatierra.models.domain;

/**
 *
 * @author Jose Mauricio Villeda Morales
 * @date 3 sept. 2022
 * @time 0:22:37
 * 
 * Codigo Tecnico: IN5BM
 */

/**
 *
 * @author Octavio Alejandro Corzo Reyes
 * @date 2/09/2022
 * @time 19:30:44
 *
 * Código Técnico: IN5BM
 *
 */
public class Desayunos {

    private int id;
    private String nombre;
    private int postreId;
    private String nombrePostre;
    private int platilloId;
    private String nombrePlatillo;
    private int bebidaId;
    private String nombreBebida;
    private float precio;
    private String rutaImagen;
    private String tiempo;

    public Desayunos(int id, String nombre, int postreId, String nombrePostre, int platilloId, String nombrePlatillo, int bebidaId, String nombreBebida, float precio, String rutaImagen, String tiempo) {
        this.id = id;
        this.nombre = nombre;
        this.postreId = postreId;
        this.nombrePostre = nombrePostre;
        this.platilloId = platilloId;
        this.nombrePlatillo = nombrePlatillo;
        this.bebidaId = bebidaId;
        this.nombreBebida = nombreBebida;
        this.precio = precio;
        this.rutaImagen = rutaImagen;
        this.tiempo = tiempo;
    }

    public Desayunos() {
    }

    public Desayunos(int id, String nombre, int postreId, String nombrePostre, int platilloId, String nombrePlatillo, int bebidaId, String nombreBebida, float precio) {
        this.id = id;
        this.nombre = nombre;
        this.postreId = postreId;
        this.nombrePostre = nombrePostre;
        this.platilloId = platilloId;
        this.nombrePlatillo = nombrePlatillo;
        this.bebidaId = bebidaId;
        this.nombreBebida = nombreBebida;
        this.precio = precio;
    }

    public Desayunos(int aInt, String string, int aInt0, String string0, int aInt1, String string1) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public Desayunos(int aInt, String string, int aInt0, String string0, int aInt1, String string1, int aInt2) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getPostreId() {
        return postreId;
    }

    public void setPostreId(int postreId) {
        this.postreId = postreId;
    }

    public String getNombrePostre() {
        return nombrePostre;
    }

    public void setNombrePostre(String nombrePostre) {
        this.nombrePostre = nombrePostre;
    }

    public int getPlatilloId() {
        return platilloId;
    }

    public void setPlatilloId(int platilloId) {
        this.platilloId = platilloId;
    }

    public String getNombrePlatillo() {
        return nombrePlatillo;
    }

    public void setNombrePlatillo(String nombrePlatillo) {
        this.nombrePlatillo = nombrePlatillo;
    }

    public int getBebidaId() {
        return bebidaId;
    }

    public void setBebidaId(int bebidaId) {
        this.bebidaId = bebidaId;
    }

    public String getNombreBebida() {
        return nombreBebida;
    }

    public void setNombreBebida(String nombreBebida) {
        this.nombreBebida = nombreBebida;
    }

    public float getPrecio() {
        return precio;
    }

    public void setPrecio(float precio) {
        this.precio = precio;
    }

    public String getRutaImagen() {
        return rutaImagen;
    }

    public void setRutaImagen(String rutaImagen) {
        this.rutaImagen = rutaImagen;
    }

    public String getTiempo() {
        return tiempo;
    }

    public void setTiempo(String tiempo) {
        this.tiempo = tiempo;
    }

    @Override
    public String toString() {
        return "Cena{" + "id=" + id + ", nombre=" + nombre + ", postreId=" + postreId + ", nombrePostre=" + nombrePostre + ", platilloId=" + platilloId + ", nombrePlatillo=" + nombrePlatillo + ", bebidaId=" + bebidaId + ", nombreBebida=" + nombreBebida + ", precio=" + precio + ", rutaImagen=" + rutaImagen + ", tiempo=" + tiempo + '}';
    }
    
    
}
