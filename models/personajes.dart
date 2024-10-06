import 'package:flutter/material.dart';

// Pantalla de Personajes
class PersonajesScreen extends StatelessWidget {
  final List<Map<String, String>> personajes = [
    {'nombre': 'Pepa', 'foto': 'assets/images/pepa.jpg', 'detalles': 'Pepa es la protagonista de la serie.'},
    {'nombre': 'Carlos', 'foto': 'assets/images/carlos.jpg', 'detalles': 'Carlos es el amigo de Pepa.'},
    {'nombre': 'Lucia', 'foto': 'assets/images/lucia.jpg', 'detalles': 'Lucia es la hermana de Pepa.'},
    {'nombre': 'Candela', 'foto': 'assets/images/candela.jpg', 'detalles': 'Candela es una amiga cercana.'},
    {'nombre': 'Marisa', 'foto': 'assets/images/marisa.jpg', 'detalles': 'Marisa es una nueva amiga.'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Personajes')),
      body: ListView.builder(
        itemCount: personajes.length,
        itemBuilder: (context, index) {
          final personaje = personajes[index];
          return ListTile(
            leading: Image.asset(personaje['foto']!),
            title: Text(personaje['nombre']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetallePersonaje(
                    nombre: personaje['nombre']!,
                    foto: personaje['foto']!,
                    detalles: personaje['detalles']!,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

// Pantalla de Detalle del Personaje
class DetallePersonaje extends StatelessWidget {
  final String nombre;
  final String foto;
  final String detalles;

  DetallePersonaje({
    required this.nombre,
    required this.foto,
    required this.detalles,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(nombre)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(foto),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(detalles),
          ),
        ],
      ),
    );
  }
}
