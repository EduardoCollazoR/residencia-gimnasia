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
  <link href="assets/css/style.css?v=<?php echo time(); ?>" rel="stylesheet">
</head>

<body>
  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
    <div class="container d-flex align-items-center">

      <h1 class="logo mr-auto"><a href="index.php">Gimnasia Artistica</a></h1>

      <nav class="nav-menu d-none d-lg-block">
        <ul>
          <li class="active"><a href="index.php">Inicio</a></li>
          <li><a href="about.php">Acerca de</a></li>
          <li><a href="cursos.php">Cursos</a></li>
          <li><a href="auxilios.php">Auxilios</a></li>
          <li><a href="contacto.php">Contacto</a></li>
        </ul>
      </nav><!-- .nav-menu -->


      <!-- Button trigger modal -->

      <a class="get-started-btn btn" href="login.php">Iniciar Sesion</a>


    </div>
  </header><!-- End Header -->


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
  <footer id="footer">

    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6 footer-contact">
            <h3>Gimnasia Artistica Femenil</h3>
            <p>
              Calzada Del Tecnológico S/N, <br>
              Fraccionamiento Tomas Aquino<br>
              Tijuana, Baja California. C.P. 22414 <br><br>
              <strong>Telefono:</strong> +52 664 607 84 00<br>
              <strong>Correo:</strong> webmaster@tijuana.tecnm.mx<br>
              <strong>Pagina web:</strong> https://www.tijuana.tecnm.mx/<br>
            </p>
          </div>

          <div class="col-lg-2 col-md-6 footer-links">
            <h4>Enlaces Utiles</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="index.php">Inicio</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="about.php">Acerca de Nosotros</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="cursos.php">Cursos</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Terminos y Codiciones</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Poliza de Privacidad</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Nuestros Cursos</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="detalles-salto.php">Salto de Caballo</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="detalles-barras.php">Barras Asimetricas</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="detalles-manos.php">Manos Libres</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="auxilios.php">Primeros Auxilios</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>

    <div class="container d-md-flex py-4">

      <div class="mr-md-auto text-center text-md-left">
        <div class="copyright">
          &copy; Copyright <strong><span>Gimnasia Artistica Femenil</span></strong>. Todos Derechos Reservados
        </div>
        <div class="credits">
          Diseñado por <a href="#">Maryuri Chavez, Karen Morales, Gibran Madera, Alejandro Lopez</a>
        </div>
      </div>
      <div class="social-links text-center text-md-right pt-3 pt-md-0">
        <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
        <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
        <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
        <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
        <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
      </div>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top"><i class="bx bx-up-arrow-alt"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/jquery/jquery.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/waypoints/jquery.waypoints.min.js"></script>
  <script src="assets/vendor/counterup/counterup.min.js"></script>
  <script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
</body>
<!-- Template Main JS File -->
<script src="assets/js/main.js"></script>

</html>