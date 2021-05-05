<?php

require 'includes/funciones.php';
incluirTemplate('header');
?>
<main id="main" data-aos="fade-in">

  <!-- ======= Breadcrumbs ======= -->
  <div class="breadcrumbs">
    <div class="container">
      <h2>Informacion de tu tutor</h2>
    </div>
  </div><!-- End Breadcrumbs -->

  <!-- ======= Contact Section ======= -->
  <section id="contact" class="contact">


<div class="container" data-aos="fade-up">

      <div class="center-form">
        <div class="col-lg-4 mt-lg-0 ">
          <!--  -->
          <form action=" " method="post" role="form" class="form">
            
            <div class=" form-group">
              <label class="control-label">¿Cual es el nombre tu tutor?</label>
              <input type="text" class="form-control" name="nombret" id="nombret"  />
              
            </div>

            <div class=" form-group">
              <label class="control-label">¿Cual es el apellido paterno de tu tutor?</label>
              <input type="text" class="form-control" name="apellidopt" id="apellidopt"  />
              
            </div>
            <div class=" form-group">
              <label class="control-label">¿Cual es el apellido materno de tu tutor?</label>
              <input type="text" class="form-control" name="apellidomt" id="apellidomt"  />
              
            </div>

            <div class=" form-group">
                <label class="control-label">Fecha de Nacimiento de tu tutor</label>
                 <input type="date" class="form-control" name="fechat" id="fechat" />

            </div>

            <div class=" form-group">
                            
             <label class="control-label">Correo Electronico de tu tutor</label>
                 <input type="email" name="emailt" class="form-control" id="emailt" />

            </div>

            <div class=" form-group">
                <label class="control-label">¿Cual es el numero de telefono de tu tutor?</label>
                 <input type="number" class="form-control" name="telefonot" id="telefonot" />

            </div>

            <div class=" form-group">
                <label class="control-label">¿Cual es el parentesco que tienes con tu tutor?</label>
                 <input type="text" class="form-control" name="parentesco" id="parentesco" />

            </div>

         


             
            <div id="message"></div>

          
            <!-- class="get-started-btn btn" -->
            <div class="text-center "><button id="gtutor"  class="get-started-btn btn"  type="button">Guardar</button></div><br>
           
          </form>


    </div>

  </div>

</div>

</div>
</section><!-- End Contact Section -->



</main><!-- End #main -->
<?php
incluirTemplate('footer');
?>