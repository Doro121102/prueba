/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author alumno
 */
abstract class Marcas {
    private int idmarca;
    private String marca;
    public Marcas(){}
    public Marcas(int id_marca, String marca) {
        this.idmarca = id_marca;
        this.marca = marca;
    }
    

    public int getId_marca() {
        return idmarca;
    }

    public void setId_marca(int id_marca) {
        this.idmarca = id_marca;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }
    
   public void agregar(){}
   public void modificar(){}
   public void eliminar(){}     
   public void mostrar(){}
    
}
