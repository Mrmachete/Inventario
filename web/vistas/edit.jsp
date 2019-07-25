<%-- 
    Document   : edit
    Created on : 21/07/2019, 09:39:01 PM
    Author     : mache
--%>

<%@page import="Modelo.Producto"%>
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
            <%
                ProductoOAD oad = new ProductoOAD();
                int id = Integer.parseInt((String) request.getAttribute("idper"));
                Producto pro = (Producto) oad.list(id);
            %> 
            <section class=" container border border-primary col-6 "> 
                <h1>Modificar Producto</h1>
                <form action="Controlador">

                    <div class="form-group">
                        <div class="col-md-6 mb-3">
                            <div class="form-group">
                                <label for="exampleFormControlSelect1">Categoria:</label>
                                <select class="form-control" name="textCat" value="<%= pro.getCategoria()%>">
                                    <option>Hogar</option>
                                    <option>Cocina</option>
                                    <option>Baños</option>
                                    <option>Muebles</option>

                                </select>
                            </div>
                        </div>

                        <div class="col-md-6 mb-3">
                            <label> Nombre:</label>
                            <input type="text" class="form-control" name="textNom" value="<%= pro.getNombre()%>">
                        </div>

                        <div class="col-md-6 mb-3">
                            <label>Existencia:</label>
                            <input type="text" class="form-control" name="textExis" value="<%=pro.getExistencia()%>">
                        </div>

                        <div class="col-md-4 mb-3">
                            <label>Precio Unitario:</label>
                            <input type="text" name="textPrecio" value="<%=pro.getPrecio()%>">
                        </div>

                        <div class="col-md-4 mb-3">
                            <label>Costo Unitario:</label>
                            <input type="text" name="textCosto" value="<%=pro.getCosto()%>">
                        </div>

                        <input type="hidden" name="textPreciototal" value="<%=pro.getPreciototal()%>">

                        <input type="hidden" name="textCostototal"  value="<%=pro.getCostototal()%>">



                        <input type="hidden" name="textid" value="<%= pro.getId()%>"><br>

                        <input type="submit" name="accion" value="actualizar">
                        <a href="Controlador?accion=listar">Regresar</a>
                    </div>
            </section>
        </form>
    </div> 
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
