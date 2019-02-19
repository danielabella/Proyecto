
package Modelos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;


public class ProductoOperacion {
    

    public ArrayList<Producto> obtenerProducto(){
        ArrayList<Producto> listaProducto = new ArrayList<>();
        try {
            Class.forName("org.mariadb.jdbc.Driver");
            Connection conec = DriverManager.getConnection("jdbc:mysql://localhost:3306/productos","root","");
            Statement st = conec.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM productos");
            while(rs.next()){
                
                int id = rs.getInt("id");
                String cod_art = rs.getString("cod_art");
                String descripcion = rs.getString("descripcion");
                String provedor = rs.getString("provedor");
                int cantidad = rs.getInt("cantidad");
                double precio_compra = rs.getDouble("precio_compra");
                double precio_venta = rs.getDouble("precio_venta");
                
                Producto tempPro = new Producto(id, cod_art, descripcion, provedor, cantidad, precio_compra, precio_venta);
                listaProducto.add(tempPro);
            }
            rs.close();
            st.close();
            conec.close();
        } catch (Exception e) {
        }
    
    return listaProducto;
    }

    public void agregarProducto(Producto p) {
        try {
            Class.forName("org.mariadb.jdbc.Driver");
            Connection conec = DriverManager.getConnection("jdbc:mysql://localhost:3306/productos","root","");
            String sql = "INSERT INTO productos (cod_art,descripcion,provedor,cantidad,precio_compra,precio_venta) VALUES (?,?,?,?,?,?)";
            PreparedStatement st = conec.prepareStatement(sql);
            st.setString(1, p.getCod_art());
            st.setString(2, p.getDescripcion());
            st.setString(3, p.getProvedor());
            st.setInt(4, p.getCantidad());
            st.setDouble(5, p.getPrecio_compra());
            st.setDouble(6, p.getPrecio_venta());
            st.executeQuery();
            st.close();
            conec.close();
        } catch (Exception e) {
        }
    }

    public void eliminarProducto(int id) {
        try {
            Class.forName("org.mariadb.jdbc.Driver");
            Connection conec = DriverManager.getConnection("jdbc:mysql://localhost:3306/productos","root","");
            String sql = "DELETE FROM productos WHERE id=?";
            PreparedStatement ps = conec.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeQuery();
            ps.close();
            conec.close();
        } catch (Exception e) {
        }
    }

    public Producto pedirProducto(int i) {
        Producto p = null;
        try {
            Class.forName("org.mariadb.jdbc.Driver");
            Connection conec = DriverManager.getConnection("jdbc:mysql://localhost:3306/productos","root","");
            String sql = "select * from productos where id=?";
            PreparedStatement ps = conec.prepareStatement(sql);
            ps.setInt(1, i);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                
                int id = rs.getInt("id");
                String cod_art = rs.getString("cod_art");
                String descripcion = rs.getString("descripcion");
                String provedor = rs.getString("provedor");
                int cantidad = rs.getInt("cantidad");
                double precio_compra = rs.getDouble("precio_compra");
                double precio_venta = rs.getDouble("precio_venta");
                p = new Producto(id, cod_art, descripcion, provedor, cantidad, precio_compra, precio_venta);
            }
            rs.close();
            ps.close();
            conec.close();
        } catch (Exception e) {
            
        }
        return p;
    }

    public void editarProducto(Producto p) {
        try {
            Class.forName("org.mariadb.jdbc.Driver");
            Connection conec = DriverManager.getConnection("jdbc:mysql://localhost:3306/productos","root","");
            String sql = "UPDATE productos set cod_art=?, descripcion=?, provedor=?, cantidad=?, precio_compra=?, precio_venta=? WHERE id=?";
            PreparedStatement ps = conec.prepareStatement(sql);
            ps.setString(1, p.getCod_art());
            ps.setString(2, p.getDescripcion());
            ps.setString(3, p.getProvedor());
            ps.setInt(4, p.getCantidad());
            ps.setDouble(5, p.getPrecio_compra());
            ps.setDouble(6, p.getPrecio_venta());
            ps.setInt(7, p.getId());
            ps.executeQuery();
            ps.close();
            conec.close();
        } catch (Exception e) {
        }
    }
    
    
}
