package Modelo;

/**
 *
 * @author mache
 */
public class Producto {

    int id;
    String categoria;
    String nombre;
    int existencia;
    int precio;
    int costo;
    int preciototal;
    int costototal;

    public Producto() {
    }

    public Producto(String categoria, String nombre, int existencia, int precio, int costo, int preciototal, int costototal) {
        this.categoria = categoria;
        this.nombre = nombre;
        this.existencia = existencia;
        this.precio = precio;
        this.costo = costo;
        this.preciototal = preciototal;
        this.costototal = costototal;
    }

    //-------------------------------- get & set  de calculo de id/º-º>
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    //-------------------------------- get & set  de calculo de categoria/º-º>

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }
    //-------------------------------- get & set  de calculo de nombre/º-º>

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    //-------------------------------- get & set  de calculo de existencia/º-º>
    public int getExistencia() {
        return existencia;
    }

    public void setExistencia(int existencia) {
        this.existencia = existencia;
    }

    //-------------------------------- get & set  de calculo de precio/º-º>
    public int getPrecio() {
        return precio;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
    }
    //-------------------------------- get & set  de calculo de costo/º-º>

    public int getCosto() {
        return costo;
    }

    public void setCosto(int costo) {
        this.costo = costo;
    }

    //-------------------------------- get & set  de calculo de precio total/º-º>
    public int getPreciototal() {
        return preciototal = existencia * precio;
    }

    public void setPreciototal(int preciototal) {
        this.preciototal = preciototal;
    }

    //-------------------------------- get & set de calculo de costo total/º-º>
    public int getCostototal() {
        return costototal = existencia * costo;
    }

    public void setCostototal(int costototal) {
        this.costototal = costototal;
    }

}
