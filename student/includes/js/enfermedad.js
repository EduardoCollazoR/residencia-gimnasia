$(document).ready(function() {
  $("#genfermedad").on("click", function() {
    enfermedad();
    // 
  });
});

function enfermedad() {
  var enfermedad = $("#enfermedad").val();
  
 

  $.ajax({
    url: "includes/ajax/enfermedad.php",
    method: "POST",
    data: {
      enfermedad: enfermedad,
    
    },
    
    success: function(data) {
      
      $("#message").html(data);
      // location.href="historial.php";
      if (data.indexOf("Enfermedad") >= 0) {
        $('#enfermedad').val("");
        // location.href="historial.php";
      }
      // location.href="historial.php";
    }
  
  });
  // $(location).attr('href','historial.php');  
  // Inicia
   $(window).ready(function(){
	$("#genfermedad").click(function(){
		location.href = "historial.php";
	});

});//termina
}

