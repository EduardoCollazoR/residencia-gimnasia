<?php

if (!empty($_POST)) {
    if (empty($_POST['email']) || empty($_POST['password'])) {
        echo '<div class="alert alert-danger alert-dismissible fade show" role="alert">
   Completa todos los campos.
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>';
    }
}
