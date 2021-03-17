<!DOCTYPE html>
<html>

<head>
  <title>GIMNASIA ARTISTICA</title>
  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
</head>

<body>
  <!-- ======= Header ======= -->
  <?php include 'navbar.php'; ?>
  <!-- End Header -->



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
                <input type="text" name="name" class="form-control" id="name" placeholder="Nombre de Usuario" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                <div class="validate"></div>
              </div>
              <div class=" form-group">
                <label class="control-label">Contraseña</label>
                <input type="password" class="form-control" name="email" id="email" placeholder="Contraseña" data-rule="email" data-msg="Please enter a valid email" />
                <div class="validate"></div>
              </div>
              <div class="mb-3">
                <div class="loading">Cargando...</div>
                <div class="error-message"></div>
                <div class="sent-message">Su mensaje fue enviado. Gracias!</div>
              </div>

              <div class="text-center"><button type="submit">Iniciar Sesion</button></div>
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

  <!-- Footer -->
  <?php include 'footer.php'; ?>
  <!-- End Footer -->

</body>

</html>