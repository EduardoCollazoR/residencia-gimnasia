// document.addEventListener("DOMContentLoaded", function() {
//     eventListener();
    
//   });
 

//   function eventListener() {
//     const metodoContacto = document.querySelectorAll(
//         'input[name="cirugia"]'
//       );
//     metodoContacto.forEach((input) =>
//       input.addEventListener("click", mostrarMetodos)
//     );
//   }

// function mostrarMetodos(e) {
//     const contactoDiv = document.querySelector("#pcirugia");
  
//     if (e.target.value === "Si") {
//       contactoDiv.innerHTML = 
//       `<label class="control-label">¿Que cirugia tuviste?</label>
//       <input type="text" class="form-control" name="ncirugia"   /> <br> `
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
    $("#ghistorial").on("click", function() {
      estudio();
    });
  });
  
  function estudio() {
    var estatura = $("#estatura").val();
    var peso = $("#peso").val();
    if($("#sexo"))
    {
    var sexo = $("#sexo").val();
    console.log(sexo);
    }
    if ($("#ncirugia"))
    {
    var ncirugia = $("#ncirugia").val();
    console.log(ncirugia);
    }

    $.ajax({
      url: "includes/ajax/historial.php",
      method: "POST",
      data: {
        estatura: estatura,
        peso: peso,
        sexo: sexo,
        ncirugia: ncirugia,
      
      },
      success: function(data) {
        $("#message").html(data);
        // location.href="enfermedad.php";
        if (data.indexOf("historial") >= 0) {
          $('#estatura').val("");
          $('#peso').val("");
          $('#sexo').val("");
          $('#ncirugia').val("");
        
        }
      }
     
    });
      // Inicia
   $(window).ready(function(){
    $("#ghistorial").click(function(){
      location.href = "lesion.php";
    });
  
  });//termina
  }
