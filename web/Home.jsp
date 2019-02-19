<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset=UTF-8">
        <title>Productos</title>
        
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-info">
            <a class="navbar-brand" href="Listar">Proyecto</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="Listar">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="formulario.jsp">Agregar <span class="sr-only">(current)</span></a>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="container">
            <div class="row">
                <div class="col-md-12 mt-5">
                    <div class="card">
                        <div class="card-header">
                            <h5>Lista de productos</h5>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <a class="btn btn-primary" href="formulario.jsp">Agregar</a>
                            </div>
                            <div class="row">
                                <table class="table mt-3">
                                    <thead>
                                      <tr>
                                        <th scope="col">Cod_art</th>
                                        <th scope="col">Descripcion</th>
                                        <th scope="col">Provedor</th>
                                        <th scope="col">Cantidad</th>
                                        <th scope="col">Precio compra</th>
                                        <th scope="col">Precio venta</th>
                                        <th scope="col">Accion</th>
                                      </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${productos}" var="lis">
                                            <tr>
                                                <th scope="row">${lis.getCod_art()}</th>
                                                <td>${lis.getDescripcion()}</td>
                                                <td>${lis.getProvedor()}</td>
                                                <td>${lis.getCantidad()}</td>
                                                <td>${lis.getPrecio_compra()}</td>
                                                <td>${lis.getPrecio_venta()}</td>
                                                <td>
                                                    <a class="btn btn-warning" href="Pedir?id=${lis.getId()}">Editar</a>
                                                    <a class="btn btn-danger" href="Eliminar?id=${lis.getId()}">Eliminar</a>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                      
                                    </tbody>
                                  </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>



        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
    </body>
</html>
