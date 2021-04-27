// document.addEventListener("DOMContentLoaded", function() {
//     eventListener();
    
//   });
 

//   function eventListener() {
//     const metodoContacto = document.querySelectorAll(
//         'input[name="lesion"]'
//       );
//     metodoContacto.forEach((input) =>
//       input.addEventListener("click", mostrarMetodos)
//     );
//   }

// function mostrarMetodos(e) {
//     const contactoDiv = document.querySelector("#plesion");
  
//     if (e.target.value === "Si") {
//       contactoDiv.innerHTML = 
//       `
//       <div class=" form-group">
//          <label class="control-label">¿Que lesion tuviste?</label>
//          <input type="text" class="form-control" name="nombre-lesion"   /> <br>
//       </div>

//       <div class=" form-group">
//          <label class="control-label">¿Cual es la fecha que tuviste tu lesion?</label>
//          <input type="date" class="form-control" name="fechalesion" id="fechalesion" /> <br>
//       </div>

//       <div class=" prehabilitacion">
//       <label class="control-label">¿Cuanto tiempo duro tu rehabilitacion?</label>
//       <input type="text" class="form-control" name="tiempoRehabilitacion" id="tiempoRehabilitacion" placeholder="1 mes" /> <br>
      
//     </div>


//       `
//       ;
//     } else {
//         contactoDiv.style.display='none';
//       }
//   }
function mostrar(num) {
  if(num==0) {
    document.getElementById('f1').style.display = '';
    
    
  }
  else {
    document.getElementById('f1').style.display = 'none';
  }
}

  $(document).ready(function() {
    $("#glesion").on("click", function() {
      estudio();
    });
  });
  
  function estudio() {
    // if($("#nlesion"))
    // {
    // var nlesion = $("#nlesion").val();
    // console.log(nlesion);
    // }
    // if($("#fechalesion"))
    // {
    // var fechalesion = $("#fechalesion").val();
    // console.log(fechalesion);
    // }
    // if ($("#rehabilitacion"))
    // {
    // var rehabilitacion = $("#rehabilitacion").val();
    // console.log(rehabilitacion);
    // }
    // if ($("#tiempoRehabilitacion"))
    // {
    // var tiempoRehabilitacion = $("#tiempoRehabilitacion").val();
    // console.log(tiempoRehabilitacion);
    // }
    var nlesion = $("#nlesion").val();
     console.log(nlesion);
     var fechalesion = $("#fechalesion").val();
     console.log(fechalesion);
        var rehabilitacion = $("#rehabilitacion").val();
     console.log(rehabilitacion);
     var tiempoRehabilitacion = $("#tiempoRehabilitacion").val();
     console.log(tiempoRehabilitacion);
    

    $.ajax({
      url: "includes/ajax/lesion.php",
      method: "POST",
      data: {
        nlesion: nlesion,
        fechalesion: fechalesion,
        rehabilitacion: rehabilitacion,
        tiempoRehabilitacion: tiempoRehabilitacion,
      
      },
      success: function(data) {
        $("#message").html(data);
        // location.href="enfermedad.php";
        if (data.indexOf("lesion") >= 0) {
          $('#nlesion').val("");
          $('#fechalesion').val("");
          $('#rehabilitacion').val("");
          $('#tiempoRehabilitacion').val("");
        
        }
      }
     
    });
      // Inicia
   $(window).ready(function(){
    $("#ghistorial").click(function(){
      location.href = "index.php";
    });
  
  });//termina
  }
