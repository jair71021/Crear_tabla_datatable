<?php
 $conexion=mysqli_connect("localhost","root","","medico");
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="libreria/bootstrap.css">
  <link rel="stylesheet" href="libreria/dataTables.bootstrap4.min.css">
  <title>Document</title>
</head>
<body>
<body>
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
            <h2>Medico</h2>
                <table id="tablaObjetivo" class="table table-striped table-bordered" style="width:100%">
                    <thead>
                        <tr>
                          <th>id</th>
                          <th>Nombre          </th>
                          <th>Apellido paterno</th>
                          <th>Apellido materno</th>
                          <th>Telefono        </th>
                          <th>Email           </th>
                          <th>Fecha de nacimiento</th>
                          <th>Sexo            </th>
                          <th>Nacionalidad    </th>

                        </tr>
                    </thead>
                    <tbody>
                      <?php
                        $sql="SELECT * FROM t_persona";
                        $respuesta=mysqli_query($conexion,$sql);   
                        while ($mostrar=mysqli_fetch_array($respuesta)) {
                          
                      ?>

                    <tr>
                      <td><?php  echo $mostrar ['id']                 ?></td>
                      <td><?php  echo $mostrar ['nombre']             ?></td>          
                      <td><?php  echo $mostrar ['apellidopaterno']   ?></td>            
                      <td><?php  echo $mostrar ['apellidomaterno']   ?></td>  
                      <td><?php  echo $mostrar ['telefono']           ?></td>           
                      <td><?php  echo $mostrar ['fechadenacimiento']?></td>            
                      <td><?php  echo $mostrar ['email']              ?></td>
                      <td><?php  echo $mostrar ['sexo']           ?></td> 
                      <td><?php  echo $mostrar ['nacionalidad']        ?></td>            
                    </tr>
                    <?php
                    }
                    ?>
                    </tbody>
                    <tfoot>
                      <tr>
                        <th>id                  </th>
                        <th>Nombre              </th>
                        <th>Apellido paterno    </th>
                        <th>Apellido materno    </th>
                        <th>Telefono            </th>
                        <th>Email               </th>
                        <th>Fecha de nacimiento </th>
                        <th>Sexo                </th>
                         <th>nacionalidad       </th>

                       </tr>
                    </tfoot>
                </table>
            </div>
        </div>
    </div>
    <script src="libreria/jquery-3.5.1.js"></script>
    <script src="libreria/jquery.dataTables.min.js"></script>
    <script src="libreria/dataTables.bootstrap4.min.js"></script>
    <script>
        $(document).ready(function(){
            $('#tablaObjetivo').DataTable();
        });
    </script>
</body>
</html>