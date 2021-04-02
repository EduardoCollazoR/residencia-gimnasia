<?php

require 'includes/funciones.php';
incluirTemplate('header');
?>
<main id="main" data-aos="fade-in">

  <!-- ======= Breadcrumbs ======= -->
  <div class="breadcrumbs">
    <div class="container">
      <h2>Enfermedades y Lesiones</h2>
    </div>
  </div><!-- End Breadcrumbs -->
 
  <!-- ======= Contact Section ======= -->
  <section id="contact" class="contact">


<div class="container" data-aos="fade-up">

  <div class="center-form">
    <div class="col-lg-4 mt-lg-0 ">
    <!--  -->
      <form action=" " method="post" role="form" class="php-email-form">
        <div class="form-group">
          <label class="control-label">¿Tienes alguna enfermedad como diabetes, hipertencion, artritis o una enfermedad en los riñones?</label>
          <input class="opcion" type="radio" name="opcion" class="form-control" id="opcion">Si <br>
          <input  class="opcion" type="radio" name="opcion" class="form-control" id="opcion">No
          <div class="validate"></div>
        </div>
        <div class=" form-group">
          <label class="control-label">¿Que enfermedad tienes?</label>
          <input type="text" class="form-control" name="enfermedad" id="enfermedad" placeholder="diabetes" />
          <div class="validate"></div>
        </div>
        <div class=" form-group">
          <label class="control-label">¿Has tenido alguna lesion?</label><br>
          <input class="opcion" type="radio" name="opcion" class="form-control" id="opcion">Si <br>
          <input  class="opcion" type="radio" name="opcion" class="form-control" id="opcion">No
          <div class="validate"></div>
        </div>
        <div class=" form-group">
          <label class="control-label">¿Que lesion tuviste?</label>
          <input type="text" class="form-control" name="lesion" id="lesion" placeholder="Dislocacion del hombro"  />
          <div class="validate"></div>
        </div>
        <div class=" form-group">
          <label class="control-label">¿Cual es la fecha que tuviste tu lesion?</label>
          <input type="date" class="form-control" name="fechalesion" id="fechalesion"  />
          <div class="validate"></div>
        </div>
        <div class=" form-group">
          <label class="control-label">¿Llevaste rehabilitacion debido a la lesion?</label><br>
          <input class="opcion" type="radio" name="opcion" class="form-control" id="opcion">Si <br>
          <input  class="opcion" type="radio" name="opcion" class="form-control" id="opcion">No
          <div class="validate"></div>
        </div>
        <div class=" form-group">
          <label class="control-label">¿Cuanto tiempo duro tu rehabilitacion?</label>
          <input type="text" class="form-control" name="tiempoRehabilitacion" id="tiempoRehabilitacion" placeholder="1 mes"  />
          <div class="validate"></div>
        </div>
    
        <div class="mb-3">
          <div class="loading">Cargando...</div>
          <div class="error-message"></div>
          <!-- <div class="sent-message">Haz Iniciado Sesion Correctamente. Bienvenido!</div> -->
        </div>
        <!-- class="get-started-btn btn" -->
        <div class="text-center "><button type="submit" >Guardar</button></div><br>
        <div class="text-center "><button type="submit"  >Siguiente</button></div>
      </form>

    </div>

  </div>

</div>

</div>
</section><!-- End Contact Section -->



</main><!-- End #main -->
<?php
incluirTemplate('footer');