
package ModeloOAD;

import Config.Conexion;
import Interfaces.CRUD;
import Modelo.Producto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class ProductoOAD implements CRUD{
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Producto p = new Producto();
    
    @Override
    public List listar() {
       ArrayList<Producto>list=new ArrayList<>();
       String sql ="select * from producto";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            
            while(rs.next()){
                Producto pro = new Producto();
                pro.setId(rs.getInt("id"));
                pro.setCategoria(rs.getString("categoria"));
                pro.setNombre(rs.getString("nombre"));
                pro.setExistencia(rs.getInt("existencia"));
                pro.setPrecio(rs.getInt("precio"));
                pro.setCosto(rs.getInt("costo"));
                pro.setPreciototal(rs.getInt("preciototal"));
                pro.setCostototal(rs.getInt("costototal"));
                list.add(pro);
                
            }
        } catch (Exception e) {
        }
       return list;
    }

    @Override
    public Producto list(int id) {
       String sql="select * from producto where id="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
   
                p.setId(rs.getInt("id"));
                p.setCategoria(rs.getString("categoria"));
                p.setNombre(rs.getString("nombre"));
                p.setExistencia(rs.getInt("Existencia"));
                p.setPrecio(rs.getInt("precio"));
                p.setCosto(rs.getInt("costo"));
                p.setPreciototal(rs.getInt("preciototal"));
                p.setCostototal(rs.getInt("costototal"));
                
            }
            
        } catch (Exception e) {
        }
         return p;
    }

    @Override
    public boolean add(Producto pro) {
       String sql ="insert into producto(categoria,nombre,existencia,precio,costo,preciototal,costototal)values ('"+pro.getCategoria()+"','"+pro.getNombre()+"','"+pro.getExistencia()+"','"+pro.getPrecio()+"','"+pro.getCosto()+"','"+pro.getPreciototal()+"','"+pro.getCostototal()+"')";
  
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
         return false;
    }

    @Override
    public boolean edit(Producto pro) {
        String sql ="update producto set categoria='"+pro.getCategoria()+"',nombre='"+pro.getNombre()+"',existencia='"+pro.getExistencia()+"',precio='"+pro.getPrecio()+"',costo='"+pro.getCosto()+"',preciototal='"+pro.getPreciototal()+"',costototal='"+pro.getCostototal()+"'where id ="+pro.getId();
  
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
         return false;
    }

    @Override
    public boolean eliminar(int id) {
        String sql="delete from producto where id="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        
        return false;
    }
    
    
}
