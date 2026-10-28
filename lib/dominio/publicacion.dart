import 'package:flutter/cupertino.dart';

class Publicacion {
  // Corregido: paréntesis con llaves ({ ... }) para parámetros nombrados
  const Publicacion({
    required this.id,
    required this.autorId,
    required this.titulo,
    required this.cuerpo,
  });

  final int id;
  final int autorId;
  final String titulo;
  final String cuerpo;

  // Corregido: Map<String, dynamic> y el punto y coma final
  factory Publicacion.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
      'id': int id,
      'usuario': int autorId,
      'title': String titulo,
      'body': String cuerpo,
      } =>
          Publicacion(
            id: id,
            autorId: autorId,
            titulo: titulo,
            cuerpo: cuerpo,
          ),
      _ => throw FormatException('Publicación con forma inesperada', json),
    }; // <- Punto y coma obligatorio aquí
  }
}