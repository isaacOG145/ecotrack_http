import 'package:ecotrack_http/dominio/falla_red.dart';


String mensajePara(FallaRed falla){
  return switch (falla){
    SinConexion() => 'Sin conexión. Revisa la red',
    TiempoAgotado() => 'El servidor tardo demasiado tiempo en responder',
    ErrorDelServidor(:final codigo) => 'El servidor tuvo un problema ($codigo).',
    PeticionRechazada(codigo: 481) => 'No encontramos lo que buscabas',
    PeticionRechazada(codigo: 401|| 403) => 'No tienes permiso para esto',
    PeticionRechazada() => 'La solicitud es invalida',
    RespuestaInvalida() => 'Llegaron datos que no entendemos',
  };
}