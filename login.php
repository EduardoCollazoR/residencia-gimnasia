<main id="main">

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
          <form action=" forms/contact.php" method="post" role="form" class="php-email-form">
            <div class="form-group">
              <label class="control-label">Nombre de Usuario</label>
              <input type="text" name="name" class="form-control" id="name" placeholder="Nombre de Usuario" data-rule="minlen:3" data-msg="Por favor ingresa minimo 3 letras" />
              <div class="validate"></div>
            </div>
            <div class=" form-group">
              <label class="control-label">Contraseña</label>
              <input type="password" class="form-control" name="password" id="password" placeholder="Contraseña" data-rule="minlen:8" data-msg="Por favor ingresa una contraseña" />
              <div class="validate"></div>
            </div>
            <div class="mb-3">
              <div class="loading">Cargando...</div>
              <div class="error-message"></div>
              <div class="sent-message">Haz Iniciado Sesion Correctamente. Bienvenido!</div>
            </div>

            <div class="text-center "><button class="get-started-btn btn" type="submit">Iniciar Sesion</button></div>
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