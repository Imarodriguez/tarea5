import 'package:flutter/material.dart';


class PersonajesScreen extends StatelessWidget {
  final List<Map<String, String>> personajes = [
    {'nombre': 'Pepa', 'foto': 'assets/images/pepa.png', 'detalles': 'Pepa es la protagonista de la pelicula. Su novio termino con ella cuando ella descubre que esta embarazada de el. Tambien desubre que el se va a ir del pais con su nueva novia.'},
    {'nombre': 'Carlos', 'foto': 'assets/images/carlos.jpeg', 'detalles': 'Carlos es el hijo de Ivan, el ex-novio de Pepa. El y su prometida estan buscando un piso nuevo para vivir y temrinan en el de Pepa coincidencialmente.'},
    {'nombre': 'Lucia', 'foto': 'assets/images/lucia.jpg', 'detalles': 'Lucia es la ex-esposa del ex-novio de Pepa. Cuando ella y su ex-marido terminaron, tuvieron que internarla en un psiquiatrico.'},
    {'nombre': 'Candela', 'foto': 'assets/images/candela.png', 'detalles': 'Candela es una amiga de Pepa. Estuvo con un terrorista y fue donde Pepa ya que necesita que la orienten en que debe de hacer, ya que sabe del plan de ataque que los terroristas quieren hacer.'},
    {'nombre': 'Marisa', 'foto': 'assets/images/marisa.jpg', 'detalles': 'Marisa es la prometida de Carlos. Ella se toma del gazpacho y se queda dormida por la mitad de la pelicula. '},
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
