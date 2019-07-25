

package Interfaces;

import Modelo.Producto;
import java.util.List;

/**
 *
 * @author mache
 */
public interface CRUD {
    public List listar ();
    public Producto list (int id);
    public boolean add (Producto pro);
    public boolean edit (Producto pro);
    public boolean eliminar (int id);
    
    
}
