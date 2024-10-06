import 'package:flutter/material.dart';

class AcercaDeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Acerca de')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Pelicula: Mujeres al borde de un ataque de nervios'),
            Text('Director: Pedro Almodóvar'),
            Text('Productor: Pedro Almodóvar'),
            Text('Escritor: Pedro Almodóvar'),
            Text('La Pelicula salio el 25 de Marzo del 1988. Dura 89 minutos. Costo 700 mil dolares y genero 8 millones de dolares en Espana y 7 millones de dolares en Estados Unidos y Canda. Arraso en los premios Goya e internacionalmente. La pelicula se ha adaptado  '),
          ],
        ),
      ),
    );
  }
}
