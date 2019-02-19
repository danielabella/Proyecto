<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset=UTF-8">
        <title>Editar</title>
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
            
        <div class="card m-5">
                <div class="card-header">
                    <h5>Editar producto</h5>
                </div>
                <div class="card-body">
                    <form action="Guardar" method="post"> 
                    <div class="form-group row">
                      
                      <label for="cod_art" class="col-sm-2 col-form-label">Cod articulo</label>
                      <div class="col-sm-10">
                          <input type="hidden" value="${pro.getId()}" name="id">
                          <input type="text" class="form-control" id="cod_art" value="${pro.getCod_art()}" name="cod_art">
                      </div>
                    </div>
                    <div class="form-group row">
                      <label for="descripcion" class="col-sm-2 col-form-label">Descripcion</label>
                      <div class="col-sm-10">
                          <input type="text" class="form-control" id="descripcion"  value="${pro.getDescripcion()}" name="descripcion">
                      </div>
                    </div>
                    <div class="form-group row">
                      <label for="provedor" class="col-sm-2 col-form-label">Provedor</label>
                      <div class="col-sm-10">
                          <input type="text" class="form-control" id="provedor" value="${pro.getProvedor()}"  name="provedor">
                      </div>
                    </div>
                    <div class="form-group row">
                      <label for="cantidad" class="col-sm-2 col-form-label">Cantidad</label>
                      <div class="col-sm-10">
                          <input type="number" class="form-control" id="cantidad" value="${pro.getCantidad()}"  name="cantidad">
                      </div>
                    </div>
                    <div class="form-group row">
                      <label for="precio_compra" class="col-sm-2 col-form-label">Precio compra</label>
                      <div class="col-sm-10">
                          <input type="number" class="form-control" id="precio_compra" value="${pro.getPrecio_compra()}"  name="precio_compra">
                      </div>
                    </div>
                    <div class="form-group row">
                      <label for="precio_venta" class="col-sm-2 col-form-label">Precio venta</label>
                      <div class="col-sm-10">
                          <input type="number" class="form-control" id="precio_venta" value="${pro.getPrecio_venta()}" name="precio_venta">
                      </div>
                    </div>
                    <div class="form-group row">
                      <div class="col-sm-10">
                        <button type="submit" class="btn btn-primary">Editar</button>
                      </div>
                    </div>
                  </form>
                </div>
        </div>
            
        </div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>

    </body>
</html>