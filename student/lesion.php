<?php

require 'includes/funciones.php';
incluirTemplate('header');
?>
<main id="main" data-aos="fade-in">

  <!-- ======= Breadcrumbs ======= -->
  <div class="breadcrumbs">
    <div class="container">
      <h2>Lesiones</h2>
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
              <label class="control-label">¿Has tenido alguna lesion?</label> <br>
              <input  type="radio" value="Si" id="preguntaop" name="lesion" onclick="mostrar(0)" />Si<br>
              <input  type="radio" value="No" id="preguntaop" name="lesion" onclick="mostrar(1)" />No<br>
             
          </div>

          <div id="f1" style="display: none">
             
               
            <div class=" form-group">
                
                 <label class="control-label">¿Que lesion tuviste?</label>
                 <input type="text" class="form-control" name="nlesion" id="nlesion"  /> <br>
            </div>

               <div class=" form-group">
                 <label class="control-label">¿Cual es la fecha que tuviste tu lesion?</label>
                 <input type="date" class="form-control" name="fechalesion" id="fechalesion" /> <br>
              </div>
             <div class=" form-group">
               <label class="control-label">¿Con que especialista llevas ti rehabilitacion?</label>
               <input type="text" class="form-control" name="rehabilitacion" id="rehabilitacion" placeholder="Fisioterapeuta, etc." /> <br>
      
               </div>

             <div class=" form-group">
               <label class="control-label">¿Cuanto tiempo duro tu rehabilitacion?</label>
               <input type="text" class="form-control" name="tiempoRehabilitacion" id="tiempoRehabilitacion" placeholder="1 mes" /> <br>
      
               </div>
              
             
          
          </div>
 



            <!-- <div id="plesion"> -->
              
              
            <!-- </div> -->

            <div id="message"></div>

          
            <!-- class="get-started-btn btn" -->
             <div class="text-center "><button id="glesion" class="get-started-btn btn"  type="button">Guardar</button></div><br>

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