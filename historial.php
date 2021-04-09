<?php

require 'includes/funciones.php';
incluirTemplate('header');
?>
<main id="main" data-aos="fade-in">

  <!-- ======= Breadcrumbs ======= -->
  <div class="breadcrumbs">
    <div class="container">
      <h2>Historial Medico</h2>
    </div>
  </div><!-- End Breadcrumbs -->

  <!-- ======= Contact Section ======= -->
  <section id="contact" class="contact">


<div class="container" data-aos="fade-up">

<<<<<<< HEAD
      <div class="center-form">
        <div class="col-lg-4 mt-lg-0 ">
          <!--  -->
          <form action=" " method="post" role="form" class="form">
            <div class="form-group">
              <label class="control-label">¿Cual es tu nombre completo?</label>
              <input type="text" name="name" class="form-control" id="name" placeholder="Nombre" />
              <div class="validate"></div>
            </div>
            <div class=" form-group">
              <label class="control-label">¿Cuantos años tienes?</label>
              <input type="number" class="form-control" name="age" id="age" placeholder="Edad" data-rule="minlen:2" data-msg="Por favor ingresar solo 2 digitos" />
              <div class="validate"></div>
            </div>
            <div class=" form-group">
              <label class="control-label">¿Cual es tu genero?</label>
              <input type="text" class="form-control" name="sexo" id="sexo" placeholder="Masculino/Femenino" />
              <div class="validate"></div>
            </div>
            <div class=" form-group">
              <label class="control-label">¿Cual es tu estatura?(en metros)</label>
              <input type="number" class="form-control" name="estatura" id="estatura" placeholder="160" />
              <div class="validate"></div>
            </div>
            <div class=" form-group">
              <label class="control-label">¿Cual es tu peso?(en kg)</label>
              <input type="number" class="form-control" name="peso" id="peso" placeholder="50" />
              <div class="validate"></div>
            </div>
            <div class=" form-group">
              <label class="control-label">¿Cual es tu grado academico?</label>
              <input type="text" class="form-control" name="estudio" id="estudio" placeholder="Primaria" />
              <div class="validate"></div>
            </div>
            <div class=" form-group">
              <label class="control-label">¿Has tenido alguna cirugia?</label>
              <input type="text" class="form-control" name="opcion" id="opcion" placeholder="SI/NO" />
              <div class="validate"></div>
            </div>
            <div class=" form-group">
              <label class="control-label">¿Que cirugia tuviste?</label>
              <input type="text" class="form-control" name="cirugia" id="cirugia" placeholder="cirugia por hernia umbilical" />
              <div class="validate"></div>
            </div>

            <div class="mb-3">
              <div class="loading">Cargando...</div>
              <div class="error-message"></div>
              <!-- <div class="sent-message">Haz Iniciado Sesion Correctamente. Bienvenido!</div> -->
            </div>
            <!-- class="get-started-btn btn" -->
            <div class="text-center "><button type="submit">Guardar</button></div><br>
            <div class="text-center "><button type="submit" onclick="location.href= 'enfermedad.php'">Siguiente</button></div>
          </form>

=======
  <div class="center-form">
    <div class="col-lg-4 mt-lg-0 ">
    <!--  -->
      <form action=" " method="post" role="form" class="php-email-form">
        <div class="form-group">
          <label class="control-label">¿Cual es tu nombre completo?</label>
          <input type="text" name="name" class="form-control" id="name" placeholder="Nombre" require/>
          <div class="validate"></div>
        </div>
        <div class=" form-group">
          <label class="control-label">¿Cuantos años tienes?</label>
          <input type="number" class="form-control" name="age" id="age" placeholder="Edad" data-rule="minlen:2" data-msg="Por favor ingresar solo 2 digitos" require/>
          <div class="validate"></div>
        </div>
        <div class=" form-group">
          <label class="control-label">¿Cual es tu genero?</label><br>
        
          <input class="opcion" type="radio" name="sexo" class="form-control" id="sexo">Masculino <br>
          <input  class="opcion" type="radio" name="sexo" class="form-control" id="sexo">Femenino
          <div class="validate"></div>
>>>>>>> 30f5e7d5e00e6266a933f8e31ec8dc3b5d4ccd6c
        </div>
        <div class=" form-group">
          <label class="control-label">¿Cual es tu estatura?(en metros)</label>
          <input type="number" class="form-control" name="estatura" id="estatura" placeholder="160"  />
          <div class="validate"></div>
        </div>
        <div class=" form-group">
          <label class="control-label">¿Cual es tu peso?(en kg)</label>
          <input type="number" class="form-control" name="peso" id="peso" placeholder="50"  />
          <div class="validate"></div>
        </div>
        <div class=" form-group">
          <label class="control-label">¿Cual es tu grado academico?</label>
          <input type="text" class="form-control" name="estudio" id="estudio" placeholder="Primaria"  />
          <div class="validate"></div>
        </div>
        <div class=" form-group">
          <label class="control-label">¿Has tenido alguna cirugia?</label><br>
          <input class="opcion" type="radio" name="opcion" class="form-control" id="opcion">Si <br>
          <input  class="opcion" type="radio" name="opcion" class="form-control" id="opcion">No
          <div class="validate"></div>
        </div>
        <div class=" form-group">
          <label class="control-label">¿Que cirugia tuviste?</label>
          <input type="text" class="form-control" name="cirugia" id="cirugia" placeholder="cirugia por hernia umbilical"  />
          <div class="validate"></div>
        </div>
    
        <div class="mb-3">
          <div class="loading">Cargando...</div>
          <div class="error-message"></div>
          <!-- <div class="sent-message">Haz Iniciado Sesion Correctamente. Bienvenido!</div> -->
        </div>
        <!-- class="get-started-btn btn" -->
        <div class="text-center "><button type="submit" >Guardar</button></div><br>
        <div class="text-center "><button type="submit" onclick="location.href= 'enfermedad.php'" >Siguiente</button></div>
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