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
    <?php include 'navbar.php'; ?>
    <!-- End Header -->



    <main id="main">

        <!-- ======= Breadcrumbs ======= -->
        <div class="breadcrumbs" data-aos="fade-in">
            <div class="container">
                <h2>Registro</h2>

            </div>
        </div><!-- End Breadcrumbs -->


        <!-- ======= Contact Section ======= -->
        <section id="contact" class="contact">


            <div class="container" data-aos="fade-up">



                <div class="center-form">
                    <div class="col-lg-8 mt-lg-0">
                        <form action=" forms/contact.php" method="post" role="form" class="php-email-form">
                            <div class="form-row">
                                <div class="col-sm form-group">
                                    <label class="control-label">Nombre</label>
                                    <input type="text" name="name" class="form-control" id="name" placeholder="Nombre" data-rule="minlen:3" data-msg="Por favor ingresa minimo 3 letras" />
                                    <div class="validate"></div>
                                </div>
                                <div class="col-sm form-group">
                                    <label class="control-label">Apellido Paterno</label>
                                    <input type="text" class="form-control" name="email" id="email" placeholder="Apellido Paterno" data-rule="minlen:3" data-msg="Por favor ingresa minimo 3 letras" />
                                    <div class="validate"></div>
                                </div>
                                <div class="col-sm  form-group">
                                    <label class="control-label">Apellido Materno</label>
                                    <input type="text" class="form-control" name="email" id="email" placeholder="Apellido Materno" data-rule="minlen:3" data-msg="Por favor ingresa minimo 3 letras" />
                                    <div class="validate"></div>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col-sm form-group">
                                    <label class="control-label">Correo Electronico</label>
                                    <input type="email" name="email" class="form-control" id="email" placeholder="Correo Electronico" data-rule="email" data-msg="Por favor ingresa un correo electronico valido" />
                                    <div class="validate"></div>
                                </div>
                                <div class="col-sm form-group">
                                    <label class="control-label">Fecha de Nacimiento</label>
                                    <input type="date" class="form-control" name="email" id="email" placeholder="Fecha de Nacimiento" data-rule="minlen:1" data-msg="Por favor ingresa una fecha " />
                                    <div class="validate"></div>
                                </div>

                            </div>


                            <div class="form-row">
                                <div class="col-sm form-group">
                                    <label class="control-label">Tipo de Usuario</label>
                                    <select class="form-control">
                                        <option value="1">Entrenador</option>
                                        <option value="2">Estudiante</option>
                                    </select>
                                </div>
                                <div class="col-sm form-group">
                                    <label class="control-label">Contraseña</label>
                                    <input type="password" name="password" class="form-control" id="password" placeholder="Contraseña" data-rule="minlen:8" data-msg="Por favor ingresa minimo 8 caracteres" />
                                    <div class="validate"></div>
                                </div>
                                <div class="col-sm form-group">
                                    <label class="control-label">Confirmar Contraseña</label>
                                    <input type="password" name="password" class="form-control" id="password" placeholder="Contraseña" data-rule="minlen:8" data-msg="Por favor ingresa minimo 8 caracteres" />
                                    <div class="validate"></div>
                                </div>
                            </div>
                            <div class=" mb-3">
                                <div class="loading">Cargando...</div>
                                <div class="error-message"></div>
                                <div class="sent-message">Te haz Registrado Correctamente. Bienvenido!</div>
                            </div>
                            <div class="text-center"><button class="get-started-btn btn" type="submit">Registrarme</button></div>
                        </form>

                    </div>


                </div>
                <div class="mt-4">
                    <div class="d-flex justify-content-center links custom-control">
                        Ya tienes cuenta? <a href="login.php" class="ml-2">Inicia Sesion</a>
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