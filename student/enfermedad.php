<?php

require 'includes/funciones.php';
incluirTemplate('header');
?>
<main id="main" data-aos="fade-in">

  <!-- ======= Breadcrumbs ======= -->
  <div class="breadcrumbs">
    <div class="container">
      <h2>Enfermedades</h2>
    </div>
  </div><!-- End Breadcrumbs -->

  <!-- ======= Contact Section ======= -->
  <section id="contact" class="contact">

    <div class="container" data-aos="fade-up">

      <div class="center-form">
        <div class="col-lg-4 mt-lg-0 ">
          <!--  -->
          <form action=" " onsubmit="return validar()"  role="form" class="form">
                       <!-- diabetes, hipertencion, artritis o una enfermedad en los riñones? -->
            <!-- <div class="form-group" >
              <label class="control-label">¿Tienes alguna de las siguientes enfermedades? </label> <br>
                <ul>
                  <li>Asma</li>
                  <li>Diabetes</li>
                  <li>Hipertencion</li>
                  <li>Artritis</li>
                  <li>Miocardiopatía hipertrófica</li>
                  <li>Síndrome de Brugada</li>
                  <li>Síndrome del QT largo</li>
                  <li>Commotio Cordis</li>
                  <li>Ninguna</li>
                </ul>
            </div> -->
            <div class="form-group">
                        <label for="control-label">¿Tienes alguna de las siguientes enfermedades?</label>
                            <select class="form-control"  id="enfermedad" name="enfermedad" >
                                <option value="Asma">Asma</option>
                                <option value="Diabetes">Diabetes</option>
                                <option value="Hipertencion">Hipertencion</option>
                                <option value="Artritis">Artritis</option>
                                <option value="Miocardiopatía hipertrófica">Miocardiopatía hipertrófica</option>
                                <option value="Síndrome de Brugada">Síndrome de Brugada</option>
                                <option value="Síndrome del QT largo">Síndrome del QT largo</option>
                                <option value="Commotio Cordis">Commotio Cordis</option>
                                <option value="Ninguna">Ninguna</option>
                                
                              
                            </select>
                            
              </div>
            <!-- <div class=" form-group">
              <label class="control-label">¿Cual enfermedad pacedes?</label>
              <input type="text" class="form-control" name="enfermedad" id="enfermedad"   />
             
            </div> -->

            <!-- <div id="penfer"> </div> <br> -->

            <div id="message"></div>


            <!-- onclick="location.href= 'historial.php'" -->
            <div class="text-center "><button id="genfermedad" class="get-started-btn btn"  type="button">Guardar</button></div><br>
            
          </form>


        </div>

      </div>

    </div>
 </section><!-- End Contact Section -->



</main><!-- End #main -->
<?php
incluirTemplate('footer');
?>
