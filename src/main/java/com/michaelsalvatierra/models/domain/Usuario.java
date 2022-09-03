/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package com.michaelsalvatierra.models.domain;

/**
 *
 * @author W10
 * @date Sep 2, 2022
 * @time 7:15:59 PM
 */
public class Usuario {
    private String correo;
    private String password;
    private int rol_id;
    private String rol;
    private int persona_id;
    private String nombrePersona;
    
    public Usuario() {
    }

    public Usuario(String correo, String password, int rol_id, String rol, int persona_id, String NombrePersona) {
        this.correo = correo;
        this.password = password;
        this.rol_id = rol_id;
        this.rol = rol;
        this.persona_id = persona_id;
        this.nombrePersona = NombrePersona;
    }

    public Usuario(String correo, String password, int rol_id, int persona_id) {
        this.correo = correo;
        this.password = password;
        this.rol_id = rol_id;
        this.persona_id = persona_id;
    }

    
    public String getCorreo() {
        return correo;
    }

    public String getPassword() {
        return password;
    }

    public int getRol_id() {
        return rol_id;
    }

    public int getPersona_id() {
        return persona_id;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setRol_id(int rol_id) {
        this.rol_id = rol_id;
    }

    public void setPersona_id(int persona_id) {
        this.persona_id = persona_id;
    }

    public String getRol() {
        return rol;
    }

    public String getNombrePersona() {
        return nombrePersona;
    }

    public void setRol(String rol) {
        this.rol = rol;
    }

    public void setNombrePersona(String NombrePersona) {
        this.nombrePersona = NombrePersona;
    }

    @Override
    public String toString() {
        return "Usuario{" + "correo=" + correo + ", password=" + password + ", rol_id=" + rol_id + ", rol=" + rol + ", persona_id=" + persona_id + ", NombrePersona=" + nombrePersona + '}';
    }
    
    
}
