<%-- 
    Document   : index
   
    Author     : Dorianc
--%>

<%@page import="javax.swing.table.DefaultTableModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Marcas</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    </head>
    <body>
        <h1>Marcas</h1>
        <div class="container">
            <form action="" method="post" class="form-group" >
                <label for="lbl_codigo"><b>Id_marca:</b></label>
                 <input type="number" name="txt_codigo" id="txt_codigo" class="form-control" placeholder="Ejemplo: 01"required>
                 <label for="lbl_marca"><b>Marca:</b></label>
                 <input type="text" name="txt_marca" id="txt_marca" class="form-control" placeholder="Ejemplo: samsung"required>
                 <br><!-- comment -->

                <button name="btn_agregar" id="btn_agregar"  value="agregar" class="btn btn-primary btn-lg">Agregar</button>
                <button name="btn_modificar" id="btn_modificar"  value="modificar" class="btn btn-success btn-lg">Modificar</button>
                <button name="btn_eliminar" id="btn_modificar"  value="eliminar" class="btn btn-danger btn-lg" onclick="javascript:if(!confirm('¿Desea Eliminar?'))return false" >Eliminar</button>
                <button type="button" class="btn btn-warning btn-lg" data-dismiss="modal">Cerrar</button>
            </form>
        </div>
      
    
       </tbody>

  </div>
      
            </form>   
            <table class="table table-striped">
    <thead>
      <tr>
        <th>idmarca</th>
        <th>marca</th>
        </tr>
    </thead>
    <tbody id="tbl_marcas">
        <% 
        marcas marcas = new marca();
        DefaultTableModel tabla = new DefaultTableModel();
        tabla = marca.leer();
        for (int t=0;t<tabla.getRowCount();t++){
            out.println("<tr data-id=" + tabla.getValueAt(t,0) + " data-id_p=" + tabla.getValueAt(t,8) + ">");
            out.println("<td>" + tabla.getValueAt(t,1) + "</td>");
            out.println("<td>" + tabla.getValueAt(t,2) + "</td>");       
        }
        %>
      
    </tbody>
  </table>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5n</div>CTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
<script type="text/javascript"> 
     function limpiar(){
        $("#txt_id_marca").val(0);
       $("#txt_marca").val('');
    }
    $('#tbl_marcas').on('click','tr td',function(evt){
       var target,id_marca,marca; 
       target = $(event.target);
       id_marca = target.parent().data('id');
       marca = target.parent("tr").find("td").eq(0).html();
       
       $("#txt_id_marca").val(id_marca);
       $("#txt_marca").val(marca);
      
    });
    </script>
    </body>
</html>

