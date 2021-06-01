<?php

require 'includes/funciones.php';
incluirTemplate('header');
?>

<main id="main">
	<!-- ======= Breadcrumbs ======= -->
	<div class="breadcrumbs" data-aos="fade-in">
		<div class="container">
			<h2>Cslendario</h2>
		</div>
	</div><!-- End Breadcrumbs -->
</main>
<?php
incluirTemplate('calendar');
?>
<?php
incluirTemplate('footer');
?>