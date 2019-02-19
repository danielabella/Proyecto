
package Modelos;


public class Producto {
    private int id;
    private String cod_art;
    private String descripcion;
    private String provedor;
    private int cantidad;
    private double precio_compra;
    private double precio_venta;

    public Producto(int id, String cod_art, String descripcion, String provedor, int cantidad, double precio_compra, double precio_venta) {
        this.id = id;
        this.cod_art = cod_art;
        this.descripcion = descripcion;
        this.provedor = provedor;
        this.cantidad = cantidad;
        this.precio_compra = precio_compra;
        this.precio_venta = precio_venta;
    }

    public Producto(String cod_art, String descripcion, String provedor, int cantidad, double precio_compra, double precio_venta) {
        this.cod_art = cod_art;
        this.descripcion = descripcion;
        this.provedor = provedor;
        this.cantidad = cantidad;
        this.precio_compra = precio_compra;
        this.precio_venta = precio_venta;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCod_art() {
        return cod_art;
    }

    public void setCod_art(String cod_art) {
        this.cod_art = cod_art;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getProvedor() {
        return provedor;
    }

    public void setProvedor(String provedor) {
        this.provedor = provedor;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public double getPrecio_compra() {
        return precio_compra;
    }

    public void setPrecio_compra(double precio_compra) {
        this.precio_compra = precio_compra;
    }

    public double getPrecio_venta() {
        return precio_venta;
    }

    public void setPrecio_venta(double precio_venta) {
        this.precio_venta = precio_venta;
    }

    @Override
    public String toString() {
        return "Producto{" + "id=" + id + ", cod_art=" + cod_art + ", descripcion=" + descripcion + ", provedor=" + provedor + ", cantidad=" + cantidad + ", precio_compra=" + precio_compra + ", precio_venta=" + precio_venta + '}';
    }
    
    
}
