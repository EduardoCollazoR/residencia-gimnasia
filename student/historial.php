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

      <div class="center-form">
        <div class="col-lg-4 mt-lg-0 ">
          <!--  -->
          <form action=" " method="post" role="form" class="form">
            
            <div class=" form-group">
              <label class="control-label">¿Cual es tu estatura?(en centimetros)</label>
              <input type="number" class="form-control" name="estatura" id="estatura"  />
              
            </div>

            <div class=" form-group">
              <label class="control-label">¿Cual es tu peso?(en kg)</label>
              <input type="number" class="form-control" name="peso" id="peso"  />
              
            </div>

            <!-- <div class=" form-group">
              <label class="control-label">¿Cual es tu genero?</label> <br>
              <input type="text" name="sexo" id="sexo" class="form-control" placeholder="M/F" />
             
              
            </div> -->

            <div class="form-group">
                        <label for="control-label">¿Cual es tu genero?</label>
                            <select class="form-control"  id="sexo" name="sexo" >
                                <option value="M">Masculino</option>
                                <option value="F">Femenino</option>
                              
                            </select>
                            
                        </div>
            
            
          
            <!-- <div id="pcirugia"></div> -->
  
            
            <div class=" form-group">
              <label class="control-label">¿Has tenido alguna cirugia?</label> <br>
              <input  type="radio" value="Si" id="preguntaop" name="cirugia" onclick="mostrar(0)"  />Si<br>
              <input  type="radio" value="No" id="preguntaop" name="cirugia"  onclick="mostrar(1)" />No<br>
              
            </div>

            <div id="f1" style="display: none">
             
               
                <label class="control-label">¿Que cirugia tuviste?</label>
                <input type="text" class="form-control" name="ncirugia" id="ncirugia"  /> <br>
               
             
            </div>

            <!-- <div>
              <label class="control-label">¿Que cirugia tuviste?</label>
              <input type="text" class="form-control" name="ncirugia"   /> <br>
            </div> -->


             
            <div id="message"></div>

          
            <!-- class="get-started-btn btn" -->
            <div class="text-center "><button id="ghistorial"  class="get-started-btn btn"  type="button">Guardar</button></div><br>
           
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