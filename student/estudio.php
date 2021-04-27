<?php

require 'includes/funciones.php';
incluirTemplate('header');
?>
<main id="main" data-aos="fade-in">

  <!-- ======= Breadcrumbs ======= -->
  <div class="breadcrumbs">
    <div class="container">
      <h2>Estudios</h2>
    </div>
  </div><!-- End Breadcrumbs -->

  <!-- ======= Contact Section ======= -->
  <section id="contact" class="contact">


<div class="container" data-aos="fade-up">

      <div class="center-form">
        <div class="col-lg-4 mt-lg-0 ">
          <!--  -->
          <form action=" " onsubmit="return validar()" role="form" class="form">
            
            <div class=" form-group">
              <label class="control-label">¿Cual es tu grado academico?</label>
              <input type="text" class="form-control" name="estudio" id="estudio" placeholder="Primaria"  />
             
            </div>
            <div id="message"></div>

          

            <!-- class="get-started-btn btn" onclick="location.href= 'enfermedad.php'"-->
            <div class="text-center "><button id="gestudio" class="get-started-btn btn"  type="button">Guardar</button></div><br>
            
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