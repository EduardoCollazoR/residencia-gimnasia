<?php



require 'includes/funciones.php';
incluirTemplate('header');
?>


<!-- ======= Breadcrumbs ======= -->
<div class="breadcrumbs" data-aos="fade-in">
  <div class="container">
    <h2>Iniciar Sesion</h2>

  </div>
</div><!-- End Breadcrumbs -->


<!-- ======= Contact Section ======= -->
<section id="contact" class="contact">
  <div class="container" data-aos="fade-up">
    <div class="center-form">

      <div class="col-lg-4 mt-lg-0 ">
        <form method="POST" role="form" class="php-email-form" action="/login.php">
          <div class="form-group">
            <label class="control-label">Correo Electronico</label>
            <input type="email" name="email" class="form-control" id="email" data-msg="Por favor ingresa un correo electronico valido" />
            <div class="validate"></div>
          </div>
          <div class=" form-group">
            <label class="control-label">Contraseña</label>
            <input type="password" class="form-control" name="password" id="password" data-msg="Por favor ingresa una contraseña" />
            <div class="validate"></div>
          </div>
          <?php
          foreach ($errores as $error) : ?>
            <div class="alert alert-dismissible alert-danger">
              <button class="close" type="button" data-dismiss="alert">×</button><a class="alert-link" href="#"></a> <?php echo $error ?>
            </div>
          <?php endforeach; ?>

          <div class="text-center ">
            <input type="submit" class="get-started-btn btn" value="Iniciar Sesion">
          </div>
      </div>
    </div>
    </form>
  </div>
  </div>
  <div class="mt-4">
    <div class="d-flex justify-content-center links custom-control">
      No tienes cuenta? <a href="registro.php" class="ml-2">Registrate</a>
    </div>
  </div>
  </div>

  </div>
</section><!-- End Contact Section -->

</main><!-- End #main -->
<?php
incluirTemplate('footer');
?>