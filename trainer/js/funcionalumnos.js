
var tableAlumnos;
document.addEventListener("DOMContentLoaded", function () {
  tableAlumnos= $("#tableAlumnos").DataTable({
    
   
    aProcessing: true,
    aServerSide: true,
    language: {
      url: "//cdn.datatables.net/plug-ins/1.10.20/i18n/Spanish.json",
    },
    ajax: {
      url: "models/tablaalumnos.php",
      dataSrc: "",
    },
    columns: [
      { data: "acciones" },
      { data: "Nombre" },
      { data: "ApellidoP" },
      { data: "ApellidoM" },
      { data: "FechaNacimiento" },
      { data: "Email" },
      { data: "Ciudad" },
      { data: "Direccion" },
    ],
    responsive: true,
    bDestroy: true,
    iDisplayLength: 10,
    order: [[0, "desc"]],
  });


})
















// $("#tableAlumnos").DataTable();
// function editAlumno(id){
//     document.querySelector('#tituloModal').innerHTML='Editar Alumno';
//     document.querySelector('#action').innerHTML='Actualizar';
//     var idalumno=id;
    
//     var request = (window.XMLHttpRequest) ?   new XMLHttpRequest: new ActiveXObject("Microsoft.XMLHTTP");
//     var url = './models/alumnos/edit-alumnos.php?idalumno='+idalumno;
//     request.open("GET", url, true);
//     request.send();
//     request.onreadystatechange = function () {
//       if (request.readyState == 4 && request.status == 200) {
//         var data = JSON.parse(request.responseText);
//         if (data.status) {
//             document.querySelector('#idalumno').value=data.data.alumno_id;
//             document.querySelector('#nombre').value=data.data.nombre;
//             document.querySelector('#apellidoPaterno').value=data.data.apellido_p;
//             document.querySelector('#apellidoMaterno').value=data.data.apellido_m;
//             document.querySelector('#ncontrol').value=data.data.ncontrol;
//             document.querySelector('#correo').value=data.data.correo;
//             document.querySelector('#semestre').value=data.data.semestre;
//             document.querySelector('#tel').value=data.data.telefono;
//             document.querySelector('#listEstado').value=data.data.estado;
//             $("#modalAlumno").modal("show");
//         }else{
//             swal('Atencion', data.msg,'error');
//         }
//       }
//     }
//   }

 