<%-- 
    Document   : listar
    Created on : 21/07/2019, 09:38:34 PM
    Author     : mache
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Producto"%>
<%@page import="java.util.List"%>
<%@page import="ModeloOAD.ProductoOAD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
          <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
           <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css"> 
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <section class=" container border border-primary col-10">
        <h1>productos</h1>
        <a class="btn btn-link" href="Controlador?accion=add">Agregar un producto nuevo</a>
        <table class="table">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">Codigo</th>
                    <th scope="col">Categoria</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">Existencia</th>
                    <th scope="col">Precio unitario</th>
                    <th scope="col">Costo unitario</th>
                    <th scope="col">Precio total</th>
                    <th scope="col">Costo total</th>
                    <th scope="col">Acciones</th>
                </tr>
            </thead>
            <%
                ProductoOAD oad= new ProductoOAD();
                List<Producto>list= oad.listar();
                Iterator<Producto>iter=list.iterator();
                Producto pro =null;
                while (iter.hasNext()) {
                        pro=iter.next();
                        
                    
            %>
            <tbody>
                <tr>
                    <td><%=pro.getId()%></td>
                    <td><%=pro.getCategoria()%></td>
                    <td><%=pro.getNombre()%></td>
                    <td><%=pro.getExistencia()%></td>
                    <td><%=pro.getPrecio()%></td>
                    <td><%=pro.getCosto()%></td>
                    <td><%=pro.getPreciototal()%></td>
                    <td><%=pro.getCostototal()%></td>
                    <th>
                        <a class="btn btn-success" href="Controlador?accion=editar&id=<%=pro.getId()%>">Editar</a>
                        <a class="btn btn-danger" href="Controlador?accion=eliminar&id=<%=pro.getId()%>">eliminar</a>
                    </th>
                </tr>
                <%}%>
            </tbody>
        </table>
</section>
        </div>
             <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
